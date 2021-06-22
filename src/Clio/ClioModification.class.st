Class {
	#name : #ClioModification,
	#superclass : #Object,
	#instVars : [
		'oldDefinition',
		'newDefinition'
	],
	#category : #'Clio-Models'
}

{ #category : #'as yet unclassified' }
ClioModification class >> classModificationFromDictionary: aDictionary [
	
	^ self new
		oldDefinition: (ClioClass fromDictionary: (aDictionary at: 'oldDefinition'));
		newDefinition: (ClioClass fromDictionary: (aDictionary at: 'newDefinition'));
		yourself.
]

{ #category : #'as yet unclassified' }
ClioModification class >> methodModificationFromDictionary: aDictionary [
	
	^ self new
		oldDefinition: (ClioMethod fromDictionary: (aDictionary at: 'oldDefinition'));
		newDefinition: (ClioMethod fromDictionary: (aDictionary at: 'newDefinition'));
		yourself.
]

{ #category : #converting }
ClioModification >> asDictionary [
	
	^ { 
		'oldDefinition' -> oldDefinition asDictionary .
		'newDefinition' -> newDefinition asDictionary
	} asDictionary.
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
