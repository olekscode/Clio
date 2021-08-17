Class {
	#name : #ClioClass,
	#superclass : #ClioDefinition,
	#instVars : [
		'package',
		'methods',
		'allInstanceSideSelectors',
		'allClassSideSelectors',
		'superclassName',
		'isTrait',
		'isExtension'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioClass class >> fromJsonDictionary: aDictionary [
	
	| aClass |
	
	aClass := self new
		name: (aDictionary at: 'name');
		superclassName: (aDictionary at: 'superclassName');
		isTrait: (aDictionary at: 'isTrait');
		yourself.
		
	aClass methods addAll: ((aDictionary at: 'methods') collect: [ :methodDictionary |
		(ClioMethod fromJsonDictionary: methodDictionary)
			methodClass: aClass;
			yourself ]).
			
	^ aClass
]

{ #category : #accessing }
ClioClass >> allClassSideSelectors [
	"All class-side selectors that are understood by this class (including those implemented by superclasses)"

	^ allClassSideSelectors
]

{ #category : #accessing }
ClioClass >> allClassSideSelectors: anObject [

	allClassSideSelectors := anObject
]

{ #category : #accessing }
ClioClass >> allInstanceSideSelectors [
	"All selectors that are understood by the instances of this class (including those implemented by superclasses)"

	^ allInstanceSideSelectors
]

{ #category : #accessing }
ClioClass >> allInstanceSideSelectors: anObject [

	allInstanceSideSelectors := anObject
]

{ #category : #converting }
ClioClass >> asJsonDictionary [
	^ { 
		'name' -> self name .
		'superclassName' -> self superclassName .
		'isTrait' -> self isTrait .
		'methods' -> (self methods collect: [ :method | method asJsonDictionary ]) asArray
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
