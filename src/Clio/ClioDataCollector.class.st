Class {
	#name : #ClioDataCollector,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'repositoryOwner',
		'baselineName',
		'oldVersion',
		'newVersion',
		'oldIceCommit',
		'newIceCommit',
		'repository',
		'commits',
		'oldVersionSnapshot',
		'newVersionSnapshot'
	],
	#category : #'Clio-Controllers'
}

{ #category : #accessing }
ClioDataCollector >> baselineName: anObject [

	baselineName := anObject
]

{ #category : #'repository loading' }
ClioDataCollector >> cloneRepository [

	repository := ClioRepositoryLoader
		detectOrCloneRepositoryNamed: repositoryName
		owner: repositoryOwner.
		
	self revparseVersions.
]

{ #category : #accessing }
ClioDataCollector >> commits [

	^ commits
]

{ #category : #executing }
ClioDataCollector >> extractCommits [
	| commitWalk collectionOfCommits |
	
	commitWalk := (IceLibgitCommitWalk forRepository: repository)
		fromCommit: newIceCommit;
		uptoCommit: oldIceCommit;
		yourself.
		
	collectionOfCommits := OrderedCollection new.
	
	commitWalk commitsDo: [ :commit |
		collectionOfCommits add: commit asClioCommit ].
	
	collectionOfCommits add: oldIceCommit asClioCommit.

	commits := collectionOfCommits reversed.
	self extractDataFromDiffs.
]

{ #category : #private }
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

{ #category : #private }
ClioDataCollector >> extractDataFromDiffs [

	commits
		do: [ :commit | 
			[ 
			self extractDataFromDiffToParentOf: commit.
			Transcript
				show: commit id;
				cr ]
				on: Exception
				do: [ 
					Transcript
						show: 'Error in commit ' , commit id;
						cr ] ]
		displayingProgress: [ :commit | 
			'Calculating diffs from ' , commits size asString
			, ' commits' ]
]

{ #category : #private }
ClioDataCollector >> extractDeprecationFromMethod: aMethod [
	| visitor |
	visitor := ClioDeprecationVisitor new.
	aMethod ast acceptVisitor: visitor.
	
	^ visitor deprecations
		ifEmpty: [ nil ]
		ifNotEmpty: [ visitor deprecations first ]
]

{ #category : #private }
ClioDataCollector >> extractMethodCallsFromMethod: aMethod [
	| visitor |
	visitor := ClioMethodCallVisitor new.
	aMethod ast acceptVisitor: visitor.
	^ visitor methodCalls
]

{ #category : #'repository loading' }
ClioDataCollector >> installBaselineOnCommit: aCommitId [

	ClioRepositoryLoader
		installBaseline: baselineName
		forRepository: repository
		onCommit: aCommitId.
]

{ #category : #executing }
ClioDataCollector >> loadNewSnapshot [
	
	newVersionSnapshot := self loadSnapshotAtCommit: newIceCommit.
]

{ #category : #executing }
ClioDataCollector >> loadOldSnapshot [
	
	oldVersionSnapshot := self loadSnapshotAtCommit: oldIceCommit.
]

{ #category : #executing }
ClioDataCollector >> loadSnapshotAtCommit: anIceCommit [
	| snapshot classDictionary package aClass definitions classDefinitions method |
	
	self installBaselineOnCommit: anIceCommit id.
	
	snapshot := ClioSnapshot new
		repositoryName: repositoryName;
		commitId: anIceCommit id;
		packages: OrderedCollection new;
		yourself.
		
	classDictionary := Dictionary new.
	
	anIceCommit packages do: [ :icePackage |
		package := icePackage asClioPackage.
		
		snapshot packages add: package.
		definitions := (anIceCommit snapshotFor: icePackage) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ]
			thenDo: [ :definition | 
				aClass := definition asClioClass
					package: package;
					yourself.
					
				aClass allInstanceSideSelectors: (self class environment at: aClass name) allSelectors.
				aClass allClassSideSelectors: (self class environment at: aClass name) class allSelectors.
					
				package classes add: aClass.
				classDictionary at: aClass name put: aClass ].
	
		definitions
			select: [ :definition | definition isMethodDefinition ]
			thenDo: [ :definition |
				aClass := classDictionary at: definition className ifAbsent: [ nil ].
				
				method := definition asClioMethod
					methodClass: aClass;
					yourself.
				
				aClass ifNotNil: [ aClass methods add: method ] ] ].
		
	^ snapshot
]

{ #category : #executing }
ClioDataCollector >> loadSnapshots [
	
	self loadOldSnapshot.
	self loadNewSnapshot.
]

{ #category : #accessing }
ClioDataCollector >> newVersion: aVersionString [
	"A version string can be a full commit id, a short commit id (first 7 characters), or a semantic version tag (e.g., 'v5.0', 'firstRelease')"
	
	newVersion := aVersionString
]

{ #category : #accessing }
ClioDataCollector >> oldVersion: aVersionString [
	"A version string can be a full commit id, a short commit id (first 7 characters), or a semantic version tag (e.g., 'v5.0', 'firstRelease')"

	oldVersion := aVersionString
]

{ #category : #accessing }
ClioDataCollector >> repositoryName: anObject [

	repositoryName := anObject
]

{ #category : #accessing }
ClioDataCollector >> repositoryOwner: anObject [

	repositoryOwner := anObject
]

{ #category : #'repository loading' }
ClioDataCollector >> revparseVersions [
	"Find actual commits that match the version names"
	
	oldIceCommit := repository revparse: oldVersion.
	newIceCommit := repository revparse: newVersion.
]
