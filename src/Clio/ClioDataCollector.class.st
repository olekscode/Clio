Class {
	#name : #ClioDataCollector,
	#superclass : #Object,
	#instVars : [
		'oldVersion',
		'newVersion',
		'oldIceCommit',
		'newIceCommit',
		'repository',
		'data',
		'shouldExtractUnderstoodSelectors'
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

{ #category : #accessing }
ClioDataCollector >> doNotExtractUnderstoodSelectors [

	shouldExtractUnderstoodSelectors := false
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
			'Calculating diffs between ' , data commits size asString
			, ' commits' ]
]

{ #category : #private }
ClioDataCollector >> extractDeprecationFromMethod: aMethod [
	| visitor |
	visitor := DeprecationVisitor new.
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

{ #category : #executing }
ClioDataCollector >> extractSelectorsUnderstoodByClass: aClass [
	"Locate aClass in the image (the version of a project that is currently loaded) and find all instance side and class side methods that are understood by this class (implemented by it or by its superclasses)"
	
	self class environment at: aClass name ifPresent: [ :aSystemClass |
		"Instance side selectors"
		aClass understoodSelectors addAll:
			(aSystemClass allMethods collect: [ :aMethod |
				ClioUnderstoodSelector new
					name: aMethod selector;
					understoodByClassName: aSystemClass name;
					implementorClassName: aMethod methodClass name;
					yourself ]).
							
		"Class side selectors"
		aClass understoodSelectors addAll:
			(aSystemClass class allMethods collect: [ :aMethod |
				ClioUnderstoodSelector new
					name: aMethod selector;
					understoodByClassName: aSystemClass name;
					implementorClassName: aMethod methodClass name;
					isClassSide: true;
					yourself ]) ].
]

{ #category : #initialization }
ClioDataCollector >> initialize [ 
	super initialize.
	shouldExtractUnderstoodSelectors := true.
	data := ClioData new.
]

{ #category : #'repository loading' }
ClioDataCollector >> installBaselineOnCommit: aCommitId [

	UIManager default 
		informUser: ('Installing baseline of {1} on {2}' format: { data repositoryName . aCommitId })
		during: [
			ClioRepositoryLoader
				installBaseline: data baselineName
				forRepository: repository
				onCommit: aCommitId ].
]

{ #category : #executing }
ClioDataCollector >> loadNewPackages [
	
	UIManager default 
		informUser: 'Loading packages from the new version'
		during: [
			data newPackages: (self loadPackagesAtCommit: newIceCommit) ].
]

{ #category : #executing }
ClioDataCollector >> loadOldPackages [
	
	UIManager default 
		informUser: 'Loading packages from the old version'
		during: [
			data oldPackages: (self loadPackagesAtCommit: oldIceCommit) ].
]

{ #category : #executing }
ClioDataCollector >> loadPackages [
	
	self loadOldPackages.
	self loadNewPackages.
]

{ #category : #executing }
ClioDataCollector >> loadPackagesAtCommit: anIceCommit [
	| packages classDictionary package aClass definitions classDefinitions method |
	
	shouldExtractUnderstoodSelectors ifTrue: [
		self installBaselineOnCommit: anIceCommit id ].
	
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
					
				shouldExtractUnderstoodSelectors ifTrue: [
					self extractSelectorsUnderstoodByClass: aClass ].
					
				package classes add: aClass.
				classDictionary at: aClass name put: aClass ].
	
		definitions
			select: [ :definition | definition isMethodDefinition ]
			thenDo: [ :definition |
				aClass := classDictionary at: definition className ifAbsent: [ nil ].
				
				method := definition asClioMethod
					methodClass: aClass;
					yourself.
				
				aClass ifNotNil: [ aClass methods add: method ] ] ]
		displayingProgress: [ :icePackage | icePackage name ].
		
	^ packages
]

{ #category : #'repository loading' }
ClioDataCollector >> locateRepository [
	"Locate repository that was already cloned"

	repository := ClioRepositoryLoader
		detectRepositoryNamed: data repositoryName
		owner: data repositoryOwner.
		
	self revparseVersions.
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
