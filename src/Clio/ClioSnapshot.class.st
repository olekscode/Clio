Class {
	#name : #ClioSnapshot,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'commitId',
		'packages'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioSnapshot class >> fromDictionary: aDictionary [

	| snapshot |
	
	snapshot := self new
		repositoryName: (aDictionary at: 'repositoryName');
		commitId: (aDictionary at: 'commitId');
		yourself.
		
	snapshot packages addAll: ((aDictionary at: 'packages') collect: [ :packageDictionary |
		ClioPackage fromDictionary: packageDictionary ]).
		
	^ snapshot
]

{ #category : #'as yet unclassified' }
ClioSnapshot class >> readFromJsonFile: aFileReference [

	| snapshotDictionary |
	
	snapshotDictionary := aFileReference readStreamDo: [ :stream |
		STONJSON fromStream: stream ].
	
	^ self fromDictionary: snapshotDictionary.
]

{ #category : #converting }
ClioSnapshot >> asDictionary [
	
	^ {
		'repositoryName' -> repositoryName .
		'commitId' -> commitId .
		'packages' -> (packages collect: [ :package | package asDictionary ]) asArray
	} asDictionary.
]

{ #category : #accessing }
ClioSnapshot >> classes [
	^ packages flatCollect: [ :each | each classes ]
]

{ #category : #accessing }
ClioSnapshot >> commitId [

	^ commitId
]

{ #category : #accessing }
ClioSnapshot >> commitId: anObject [

	commitId := anObject
]

{ #category : #initialization }
ClioSnapshot >> initialize [
	super initialize.
	packages := OrderedCollection new.
]

{ #category : #accessing }
ClioSnapshot >> methods [
	^ self classes flatCollect: [ :each | each methods ]
]

{ #category : #accessing }
ClioSnapshot >> packages [

	^ packages
]

{ #category : #accessing }
ClioSnapshot >> packages: anObject [

	packages := anObject
]

{ #category : #accessing }
ClioSnapshot >> repositoryName [

	^ repositoryName
]

{ #category : #accessing }
ClioSnapshot >> repositoryName: anObject [

	repositoryName := anObject
]

{ #category : #'as yet unclassified' }
ClioSnapshot >> saveToJsonFile: aFileReference [
	aFileReference writeStreamDo: [ :stream |
		STONJSON put: self asDictionary onStreamPretty: stream ].
]
