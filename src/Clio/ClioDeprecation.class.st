Class {
	#name : #ClioDeprecation,
	#superclass : #Object,
	#instVars : [
		'message',
		'transformationRule'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioDeprecation class >> fromDictionary: aDictionary [

	| deprecation transformationRule |
	
	deprecation := self new
		message: (aDictionary at: 'message');
		yourself.
		
	transformationRule := aDictionary at: 'transformationRule'.
	
	transformationRule ifNotNil: [ 
		deprecation transformationRule: (TransformationRule fromString: transformationRule) ].
	
	^ deprecation
]

{ #category : #converting }
ClioDeprecation >> asDictionary [
	
	^ { 
		'message' -> message .
		'transformationRule' -> transformationRule
			ifNotNil: [ transformationRule asString ]
	} asDictionary.
]

{ #category : #accessing }
ClioDeprecation >> message [

	^ message
]

{ #category : #accessing }
ClioDeprecation >> message: anObject [

	message := anObject
]

{ #category : #accessing }
ClioDeprecation >> transformationRule [

	^ transformationRule
]

{ #category : #accessing }
ClioDeprecation >> transformationRule: anObject [

	transformationRule := anObject
]
