Class {
	#name : #ClioData,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'repositoryOwner',
		'baselineName',
		'imageVersion',
		'datetime',
		'commits',
		'oldPackages',
		'newPackages'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioData class >> fromJsonDictionary: aDictionary [

	| commits oldPackages newPackages |
	
	commits := (aDictionary at: 'commits') collect: [ :commitDictionary |
		ClioCommit fromJsonDictionary: commitDictionary ].
	
	oldPackages := (aDictionary at: 'oldPackages') collect: [ :packageDictionary |
		ClioPackage fromJsonDictionary: packageDictionary ].
	
	newPackages := (aDictionary at: 'newPackages') collect: [ :packageDictionary |
		ClioPackage fromJsonDictionary: packageDictionary ].
	
	^ self new
		repositoryName: (aDictionary at: 'repositoryName');
		repositoryOwner: (aDictionary at: 'repositoryOwner');
		baselineName: (aDictionary at: 'baselineName');
		imageVersion: (aDictionary at: 'imageVersion');
		datetime: (aDictionary at: 'datetime') asDateAndTime;
		commits: commits;
		oldPackages: oldPackages;
		newPackages: newPackages;
		yourself.
]

{ #category : #'as yet unclassified' }
ClioData class >> readFromJsonFile: aFileReference [

	| dataDictionary |
	
	dataDictionary := aFileReference readStreamDo: [ :stream |
		STONJSON fromStream: stream ].
	
	^ self fromJsonDictionary: dataDictionary.
]

{ #category : #converting }
ClioData >> asJsonDictionary [
	
	^ {
		'repositoryName' -> repositoryName .
		'repositoryOwner' -> repositoryOwner .
		'baselineName' -> baselineName .
		'imageVersion' -> imageVersion .
		'datetime' -> datetime asString .
		'commits' -> (commits collect: [ :commit | commit asJsonDictionary ]) asArray .
		'oldPackages' -> (oldPackages collect: [ :package | package asJsonDictionary ]) asArray .
		'newPackages' -> (newPackages collect: [ :package | package asJsonDictionary ]) asArray
	} asDictionary.
]

{ #category : #accessing }
ClioData >> baselineName [

	^ baselineName
]

{ #category : #accessing }
ClioData >> baselineName: anObject [

	baselineName := anObject
]

{ #category : #accessing }
ClioData >> commits [

	^ commits
]

{ #category : #accessing }
ClioData >> commits: anObject [

	commits := anObject
]

{ #category : #accessing }
ClioData >> datetime [

	^ datetime
]

{ #category : #accessing }
ClioData >> datetime: anObject [

	datetime := anObject
]

{ #category : #accessing }
ClioData >> imageVersion [

	^ imageVersion
]

{ #category : #accessing }
ClioData >> imageVersion: anObject [

	imageVersion := anObject
]

{ #category : #initialization }
ClioData >> initialize [
	super initialize.
	commits := OrderedCollection new.
	oldPackages := OrderedCollection new.
	newPackages := OrderedCollection new.
	imageVersion := SystemVersion current imageVersionString.
	datetime := DateAndTime now.
]

{ #category : #'as yet unclassified' }
ClioData >> newClasses [
	
	^ newPackages flatCollect: [ :each | each classes ]
]

{ #category : #'as yet unclassified' }
ClioData >> newMethods [
	
	^ self newClasses flatCollect: [ :each | each methods ]
]

{ #category : #accessing }
ClioData >> newPackages [

	^ newPackages
]

{ #category : #accessing }
ClioData >> newPackages: anObject [

	newPackages := anObject
]

{ #category : #'as yet unclassified' }
ClioData >> oldClasses [
	
	^ oldPackages flatCollect: [ :each | each classes ]
]

{ #category : #'as yet unclassified' }
ClioData >> oldMethods [
	
	^ self oldClasses flatCollect: [ :each | each methods ]
]

{ #category : #accessing }
ClioData >> oldPackages [

	^ oldPackages
]

{ #category : #accessing }
ClioData >> oldPackages: anObject [

	oldPackages := anObject
]

{ #category : #accessing }
ClioData >> repositoryName [

	^ repositoryName
]

{ #category : #accessing }
ClioData >> repositoryName: anObject [

	repositoryName := anObject
]

{ #category : #accessing }
ClioData >> repositoryOwner [

	^ repositoryOwner
]

{ #category : #accessing }
ClioData >> repositoryOwner: anObject [

	repositoryOwner := anObject
]

{ #category : #'as yet unclassified' }
ClioData >> saveToJsonFile: aFileReference [

	aFileReference writeStreamDo: [ :stream |
		STONJSON put: self asJsonDictionary onStreamPretty: stream ].
]
