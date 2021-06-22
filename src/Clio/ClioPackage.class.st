Class {
	#name : #ClioPackage,
	#superclass : #ClioDefinition,
	#instVars : [
		'classes'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioPackage class >> fromDictionary: aDictionary [
	
	| package |
	
	package := self new
		name: (aDictionary at: 'name');
		yourself.
		
	package classes addAll: ((aDictionary at: 'classes') collect: [ :classDictionary |
		(ClioClass fromDictionary: classDictionary)
			package: package;
			yourself ]).
			
	^ package
]

{ #category : #converting }
ClioPackage >> asDictionary [
	^ { 
		'name' -> self name .
		'classes' -> (self classes collect: [ :aClass | aClass asDictionary ]) asArray
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
