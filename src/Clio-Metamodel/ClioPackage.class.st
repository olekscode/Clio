Class {
	#name : #ClioPackage,
	#superclass : #ClioDefinition,
	#instVars : [
		'classes'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'instance creation' }
ClioPackage class >> fromJsonDictionary: aDictionary [
	
	| package |
	
	package := self new
		name: (aDictionary at: 'name');
		yourself.
		
	package classes: ((aDictionary at: 'classes') collect: [ :classDictionary |
		(ClioClass fromJsonDictionary: classDictionary)
			package: package;
			yourself ]) asSet.
			
	^ package
]

{ #category : #'instance creation' }
ClioPackage class >> named: aString [

	^ self new
		name: aString;
		yourself
]

{ #category : #comparing }
ClioPackage >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ name = anObject name and: [ classes = anObject classes ]
]

{ #category : #converting }
ClioPackage >> asJsonDictionary [
	^ { 
		'name' -> self name .
		'classes' -> (self classes collect: [ :aClass | aClass asJsonDictionary ]) asArray
	} asDictionary
]

{ #category : #accessing }
ClioPackage >> classes [

	^ classes
]

{ #category : #accessing }
ClioPackage >> classes: anObject [

	classes := anObject
]

{ #category : #comparing }
ClioPackage >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ name hash bitXor: classes hash
]

{ #category : #initialization }
ClioPackage >> initialize [
	super initialize.
	classes := Set new.
]

{ #category : #printing }
ClioPackage >> printOn: aStream [
	aStream nextPutAll: name.
]
