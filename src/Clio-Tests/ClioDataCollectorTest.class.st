Class {
	#name : #ClioDataCollectorTest,
	#superclass : #TestCase,
	#instVars : [
		'data',
		'expectedData',
		'dataCollector'
	],
	#category : #'Clio-Tests'
}

{ #category : #initialization }
ClioDataCollectorTest >> setUp [
	super setUp.
	
	expectedData := ContainersProjectFixture new data.
	
	dataCollector := ClioDataCollector new
		repositoryName: 'FakeProject';
		repositoryOwner: 'olekscode';
		baselineName: 'Containers';
		oldVersion: 'v1.0';
		newVersion: 'v2.0';
		yourself.
		
	dataCollector
		cloneRepository;
		loadPackages;
		extractCommits.
		
	data := dataCollector data.
]

{ #category : #tests }
ClioDataCollectorTest >> testCommits [
	
	1 to: data commits size do: [ :i |
		self assert: (data commits at: i) equals: (expectedData commits at: i) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testNewClasses [

	| expectedClassDictionary |
	
	expectedClassDictionary := (expectedData newClasses collect: [ :aClass |
		aClass name -> aClass ]) asDictionary.
	
	data newClasses do: [ :aClass |
		self assert: aClass equals: (expectedClassDictionary at: aClass name) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testNewMethods [

	| expectedMethodDictionary |
	
	expectedMethodDictionary := (expectedData newImplementedMethods collect: [ :method |
		method signature -> method ]) asDictionary.
	
	data newImplementedMethods do: [ :method |
		self assert: method equals: (expectedMethodDictionary at: method signature) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testNewPackages [

	| expectedPackageDictionary |
	
	expectedPackageDictionary := (expectedData newPackages collect: [ :package |
		package name -> package ]) asDictionary.
	
	data newPackages do: [ :package |
		self assert: package equals: (expectedPackageDictionary at: package name) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testOldClasses [

	| expectedClassDictionary |
	
	expectedClassDictionary := (expectedData oldClasses collect: [ :aClass |
		aClass name -> aClass ]) asDictionary.
	
	data oldClasses do: [ :aClass |
		self assert: aClass equals: (expectedClassDictionary at: aClass name) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testOldMethods [

	| expectedMethodDictionary |
	
	expectedMethodDictionary := (expectedData oldImplementedMethods collect: [ :method |
		method signature -> method ]) asDictionary.
	
	data oldImplementedMethods do: [ :method |
		self assert: method equals: (expectedMethodDictionary at: method signature) ].
]

{ #category : #tests }
ClioDataCollectorTest >> testOldPackages [

	| expectedPackageDictionary |
	
	expectedPackageDictionary := (expectedData oldPackages collect: [ :package |
		package name -> package ]) asDictionary.
	
	data oldPackages do: [ :package |
		self assert: package equals: (expectedPackageDictionary at: package name) ].
]
