Class {
	#name : #ClioDataCollector,
	#superclass : #Object,
	#category : #Clio
}

{ #category : #private }
ClioDataCollector >> extractCommitsFromRepository: aRepository between: oldCommitId and: newCommitId [
	| oldCommit newCommit commitWalk collectionOfCommits |
	
	oldCommit := aRepository revparse: oldCommitId.
	newCommit := aRepository revparse: newCommitId.
	
	commitWalk := (IceLibgitCommitWalk forRepository: aRepository)
		fromCommit: newCommit;
		uptoCommit: oldCommit;
		yourself.
		
	collectionOfCommits := OrderedCollection new.
	
	commitWalk commitsDo: [ :commit |
		collectionOfCommits add: commit asClioCommit ].
	
	collectionOfCommits add: oldCommit asClioCommit.

	^ collectionOfCommits reversed.
]

{ #category : #executing }
ClioDataCollector >> extractDataFromDiffToParentOf: aCommit [
	| visitor |
	visitor := ClioIceTreeVisitor new.
	aCommit iceCommit diffToParent tree accept: visitor.
	
	aCommit addedMethods: visitor addedMethods.
	aCommit removedMethods: visitor removedMethods.
	aCommit modifiedMethods: visitor modifiedMethods.
	
	aCommit addedClasses: visitor addedClasses.
	aCommit removedClasses: visitor removedClasses.
	aCommit modifiedClasses: visitor modifiedClasses.
	
	aCommit addedPackages: visitor addedPackages.
	aCommit removedPackages: visitor removedPackages.
]

{ #category : #executing }
ClioDataCollector >> extractDataFromDiffsInCommits: aCollectionOfCommits [
	aCollectionOfCommits do: [ :commit | self extractDataFromDiffToParentOf: commit ]
		displayingProgress: [ :commit |
			'Calculating diffs from ',
			aCollectionOfCommits size asString,
			' commits' ].
]

{ #category : #'as yet unclassified' }
ClioDataCollector >> extractDeprecationFromMethod: aMethod [
	| visitor |
	visitor := ClioDeprecationVisitor new.
	aMethod ast acceptVisitor: visitor.
	
	^ visitor deprecations
		ifEmpty: [ nil ]
		ifNotEmpty: [ visitor deprecations first ]
]

{ #category : #'as yet unclassified' }
ClioDataCollector >> extractMethodCallsFromMethod: aMethod [
	| visitor |
	visitor := ClioMethodCallVisitor new.
	aMethod ast acceptVisitor: visitor.
	^ visitor methodCalls
]

{ #category : #'as yet unclassified' }
ClioDataCollector >> loadCommitHistoryFromRepository: aRepository fromCommit: anOldCommitId toCommit: aNewCommitId [
	| history |
	
	history := ClioHistory new
		repositoryName: aRepository name;
		yourself.
		
	history commits: (self
		extractCommitsFromRepository: aRepository
		between: anOldCommitId
		and: aNewCommitId).
		
	self extractDataFromDiffsInCommits: history commits.
	^ history
]

{ #category : #'as yet unclassified' }
ClioDataCollector >> loadCommitHistoryFromRepositoryNamed: aRepositoryName fromCommit: anOldCommitId toCommit: aNewCommitId [
	
	| repository |
	repository := self repositoryNamed: aRepositoryName.
	
	^ self
		loadCommitHistoryFromRepository: repository
		fromCommit: anOldCommitId
		toCommit: aNewCommitId.
]

{ #category : #accessing }
ClioDataCollector >> loadSnapshotAt: aCommit [
	| snapshot classDictionary package aClass definitions classDefinitions fullClassName method |
	
	snapshot := ClioSnapshot new
		repositoryName: aCommit repositoryName;
		commitId: aCommit id;
		packages: OrderedCollection new;
		yourself.
		
	classDictionary := Dictionary new.
	
	aCommit iceCommit packages do: [ :icePackage |
		package := icePackage asClioPackage.
		
		snapshot packages add: package.
		definitions := (aCommit iceCommit snapshotFor: icePackage) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ]
			thenDo: [ :definition | 
				aClass := ClioClass new
					name: definition className;
					package: package;
					superclassName: (definition class = MCClassTraitDefinition
						ifTrue: [ definition baseTrait ]
						ifFalse: [ definition superclassName ]);
					isTrait: definition isTrait;
					yourself.
					
				package classes add: aClass.
				classDictionary at: aClass name put: aClass ].
	
		definitions
			select: [ :definition | definition isMethodDefinition ]
			thenDo: [ :methodDefinition |
				fullClassName := methodDefinition classIsMeta
					ifFalse: [ methodDefinition className ]
					ifTrue: [ methodDefinition className, ' class' ].
					
				aClass := classDictionary at: fullClassName ifAbsent: [ nil ].
				
				method := methodDefinition asClioMethod
					methodClass: aClass;
					yourself.
				
				aClass ifNotNil: [ aClass methods add: method ] ] ].
		
	^ snapshot
]

{ #category : #'accessing - repository' }
ClioDataCollector >> repositoryNamed: aString [
	^ IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ]
]
