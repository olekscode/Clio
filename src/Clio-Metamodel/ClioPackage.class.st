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
		
	package classes addAll: ((aDictionary at: 'classes') collect: [ :classDictionary |
		(ClioClass fromJsonDictionary: classDictionary)
			package: package;
			yourself ]).
			
	^ package
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

{ #category : #initialization }
ClioPackage >> initialize [
	super initialize.
	classes := OrderedCollection new.
]

{ #category : #printing }
ClioPackage >> printOn: aStream [
	aStream nextPutAll: name.
]
