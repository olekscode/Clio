Class {
	#name : #ClioClass,
	#superclass : #ClioDefinition,
	#instVars : [
		'package',
		'methods',
		'superclassName',
		'isTrait',
		'isExtension'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'instance creation' }
ClioClass class >> fromJsonDictionary: aDictionary [
	
	| aClass |
	
	aClass := self new
		name: (aDictionary at: 'name');
		superclassName: (aDictionary at: 'superclassName');
		isTrait: (aDictionary at: 'isTrait');
		isExtension: (aDictionary at: 'isExtension');
		yourself.
		
	aClass methods: ((aDictionary at: 'methods') collect: [ :methodDictionary |
		(ClioMethod fromJsonDictionary: methodDictionary)
			methodClass: aClass;
			yourself ]) asSet.
			
	^ aClass
]

{ #category : #comparing }
ClioClass >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ superclassName = anObject superclassName and: [ 
		  name = anObject name and: [ 
			  methods = anObject methods and: [ 
				  isTrait = anObject isTrait and: [ 
					  isExtension = anObject isExtension ] ] ] ]
]

{ #category : #converting }
ClioClass >> asJsonDictionary [
	^ { 
		'name' -> self name .
		'superclassName' -> self superclassName .
		'isTrait' -> self isTrait .
		'isExtension' -> self isExtension .
		'methods' -> (methods collect: [ :each | each asJsonDictionary ]) asArray
	} asDictionary
]

{ #category : #comparing }
ClioClass >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ superclassName hash bitXor: (name hash bitXor:
			   (methods hash bitXor: (isTrait hash bitXor: isExtension hash)))
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
	methods := Set new.
	
	isTrait := false.
	isExtension := false.
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
ClioClass >> methods: anObject [

	methods := anObject
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
