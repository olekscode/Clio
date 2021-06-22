Class {
	#name : #ClioSnapshot,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'commitId',
		'packages'
	],
	#category : #Clio
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

	| jsonString |
	
	jsonString := aFileReference readStreamDo: [ :stream |
		stream contents ].
	
	^ self fromDictionary: (STONJSON fromString: jsonString).
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
		stream nextPutAll: (STONJSON toStringPretty: self asDictionary) ].
]
