Class {
	#name : #ClioDataCollector,
	#superclass : #Object,
	#instVars : [
		'oldVersion',
		'newVersion',
		'oldIceCommit',
		'newIceCommit',
		'repository',
		'data'
	],
	#category : #'Clio-Controllers'
}

{ #category : #accessing }
ClioDataCollector >> baselineName: aString [

	data baselineName: aString
]

{ #category : #'repository loading' }
ClioDataCollector >> cloneRepository [

	repository := ClioRepositoryLoader
		detectOrCloneRepositoryNamed: data repositoryName
		owner: data repositoryOwner.
		
	self revparseVersions.
]

{ #category : #accessing }
ClioDataCollector >> data [

	^ data
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

	data commits: collectionOfCommits reversed.
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

	data commits
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
			'Calculating diffs from ' , data commits size asString
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

{ #category : #initialization }
ClioDataCollector >> initialize [ 
	super initialize.
	data := ClioData new.
]

{ #category : #'repository loading' }
ClioDataCollector >> installBaselineOnCommit: aCommitId [

	ClioRepositoryLoader
		installBaseline: data baselineName
		forRepository: repository
		onCommit: aCommitId.
]

{ #category : #executing }
ClioDataCollector >> loadNewPackages [
	
	data newPackages: (self loadPackagesAtCommit: newIceCommit).
]

{ #category : #executing }
ClioDataCollector >> loadOldPackages [
	
	data oldPackages: (self loadPackagesAtCommit: oldIceCommit).
]

{ #category : #executing }
ClioDataCollector >> loadPackages [
	
	self loadOldPackages.
	self loadNewPackages.
]

{ #category : #executing }
ClioDataCollector >> loadPackagesAtCommit: anIceCommit [
	| packages classDictionary package aClass definitions classDefinitions method |
	
	self installBaselineOnCommit: anIceCommit id.
	
	packages := OrderedCollection new.
	classDictionary := Dictionary new.
	
	anIceCommit packages do: [ :icePackage |
		package := icePackage asClioPackage.
		
		packages add: package.
		definitions := (anIceCommit snapshotFor: icePackage) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ]
			thenDo: [ :definition | 
				aClass := definition asClioClass
					package: package;
					yourself.
					
				self class environment at: aClass name ifPresent: [ :aSystemClass |
					aClass allInstanceSideSelectors: aSystemClass allSelectors.
					aClass allClassSideSelectors: aSystemClass class allSelectors ].
					
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
		
	^ packages
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
ClioDataCollector >> repositoryName: aString [

	data repositoryName: aString.
]

{ #category : #accessing }
ClioDataCollector >> repositoryOwner: aString [

	data repositoryOwner: aString.
]

{ #category : #'repository loading' }
ClioDataCollector >> revparseVersions [
	"Find actual commits that match the version names"
	
	oldIceCommit := repository revparse: oldVersion.
	newIceCommit := repository revparse: newVersion.
]
