Class {
	#name : #ClioModification,
	#superclass : #Object,
	#instVars : [
		'oldDefinition',
		'newDefinition'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'as yet unclassified' }
ClioModification class >> classModificationFromDictionary: aDictionary [
	
	^ self new
		oldDefinition: (ClioClass fromJsonDictionary: (aDictionary at: 'oldDefinition'));
		newDefinition: (ClioClass fromJsonDictionary: (aDictionary at: 'newDefinition'));
		yourself.
]

{ #category : #'as yet unclassified' }
ClioModification class >> methodModificationFromDictionary: aDictionary [
	
	^ self new
		oldDefinition: (ClioMethod fromJsonDictionary: (aDictionary at: 'oldDefinition'));
		newDefinition: (ClioMethod fromJsonDictionary: (aDictionary at: 'newDefinition'));
		yourself.
]

{ #category : #comparing }
ClioModification >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ oldDefinition = anObject oldDefinition and: [ 
		  newDefinition = anObject newDefinition ]
]

{ #category : #converting }
ClioModification >> asJsonDictionary [
	
	^ { 
		'oldDefinition' -> oldDefinition asJsonDictionary .
		'newDefinition' -> newDefinition asJsonDictionary
	} asDictionary.
]

{ #category : #comparing }
ClioModification >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ oldDefinition hash bitXor: newDefinition hash
]

{ #category : #accessing }
ClioModification >> newDefinition [

	^ newDefinition
]

{ #category : #accessing }
ClioModification >> newDefinition: anObject [

	newDefinition := anObject
]

{ #category : #accessing }
ClioModification >> oldDefinition [

	^ oldDefinition
]

{ #category : #accessing }
ClioModification >> oldDefinition: anObject [

	oldDefinition := anObject
]
