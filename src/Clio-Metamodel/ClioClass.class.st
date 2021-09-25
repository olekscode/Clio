Class {
	#name : #ClioClass,
	#superclass : #ClioDefinition,
	#instVars : [
		'package',
		'methods',
		'understoodSelectors',
		'superclassName',
		'isTrait',
		'isExtension'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'instance creation' }
ClioClass class >> fromJsonDictionary: aDictionary [
	
	| understoodSelectors aClass |
	
	understoodSelectors := (aDictionary at: 'understoodSelectors') collect: [ :each |
		ClioUnderstoodSelector fromJsonDictionary: each ].
	
	aClass := self new
		name: (aDictionary at: 'name');
		superclassName: (aDictionary at: 'superclassName');
		isTrait: (aDictionary at: 'isTrait');
		understoodSelectors: understoodSelectors asOrderedCollection;
		yourself.
		
	aClass methods addAll: ((aDictionary at: 'methods') collect: [ :methodDictionary |
		(ClioMethod fromJsonDictionary: methodDictionary)
			methodClass: aClass;
			yourself ]).
			
	^ aClass
]

{ #category : #converting }
ClioClass >> asJsonDictionary [
	^ { 
		'name' -> self name .
		'superclassName' -> self superclassName .
		'isTrait' -> self isTrait .
		'methods' -> (methods collect: [ :each | each asJsonDictionary ]) asArray .
		'understoodSelectors' -> (understoodSelectors collect: [ :each | each asJsonDictionary ]) asArray
	} asDictionary
]

{ #category : #accessing }
ClioClass >> inheritsFrom: aClass [
	"We may not have the access to the whole inheritance tree. So in this case, we consider that a class A inherits from a class B only if B is a direct superclass of A. In other words, it A inherits from C and C inherits from B, then this method will say that A does not inherit from B.
	
	It's a workarount to duduce the visibility.
	This method should not be used elsewhere"
	
	^ superclassName = aClass name
	
	
]

{ #category : #initialization }
ClioClass >> initialize [
	super initialize.
	methods := OrderedCollection new.
	understoodSelectors := OrderedCollection new.
]

{ #category : #accessing }
ClioClass >> isExtension [

	^ isExtension
]

{ #category : #accessing }
ClioClass >> isExtension: anObject [

	isExtension := anObject
]

{ #category : #accessing }
ClioClass >> isTrait [
	
	^ isTrait
]

{ #category : #accessing }
ClioClass >> isTrait: anObject [

	isTrait := anObject
]

{ #category : #'accessing - methods' }
ClioClass >> methodNamed: aSelector [
	^ methods detect: [ :method | method name = aSelector ]
]

{ #category : #accessing }
ClioClass >> methods [

	^ methods
]

{ #category : #accessing }
ClioClass >> package [

	^ package
]

{ #category : #accessing }
ClioClass >> package: anObject [

	package := anObject
]

{ #category : #printing }
ClioClass >> printOn: aStream [
	aStream nextPutAll: name.
]

{ #category : #accessing }
ClioClass >> superclassName [

	^ superclassName
]

{ #category : #accessing }
ClioClass >> superclassName: anObject [

	superclassName := anObject
]

{ #category : #accessing }
ClioClass >> understoodSelectors [

	^ understoodSelectors
]

{ #category : #accessing }
ClioClass >> understoodSelectors: anObject [

	understoodSelectors := anObject
]