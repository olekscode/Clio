Class {
	#name : #ClioHistory,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'commits'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioHistory class >> fromDictionary: aDictionary [

	| history |
	
	history := self new
		repositoryName: (aDictionary at: 'repositoryName');
		yourself.
		
	history commits addAll: ((aDictionary at: 'commits') collect: [ :commitDictionary |
		ClioCommit fromDictionary: commitDictionary ]).
	
	^ history
]

{ #category : #'as yet unclassified' }
ClioHistory class >> readFromJsonFile: aFileReference [

	| jsonString |
	
	jsonString := aFileReference readStreamDo: [ :stream |
		stream contents ].
	
	^ self fromDictionary: (STONJSON fromString: jsonString).
]

{ #category : #converting }
ClioHistory >> asDictionary [
	
	^ { 
		'repositoryName' -> repositoryName .
		'commits' -> (commits collect: [ :commit | commit asDictionary ]) asArray
	} asDictionary.
]

{ #category : #accessing }
ClioHistory >> commits [

	^ commits
]

{ #category : #accessing }
ClioHistory >> commits: anObject [

	commits := anObject
]

{ #category : #initialization }
ClioHistory >> initialize [
	super initialize.
	commits := OrderedCollection new.
]

{ #category : #accessing }
ClioHistory >> repositoryName [

	^ repositoryName
]

{ #category : #accessing }
ClioHistory >> repositoryName: anObject [

	repositoryName := anObject
]

{ #category : #'as yet unclassified' }
ClioHistory >> saveToJsonFile: aFileReference [
	aFileReference writeStreamDo: [ :stream |
		stream nextPutAll: (STONJSON toStringPretty: self asDictionary) ].
]
