Class {
	#name : #ClioClass,
	#superclass : #Object,
	#instVars : [
		'name',
		'package',
		'methods',
		'superclassName'
	],
	#category : #Clio
}

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

{ #category : #testing }
ClioClass >> isPrivate [
	^ VisibilityDeductor new isClassPrivate: self
]

{ #category : #testing }
ClioClass >> isPublic [
	^ VisibilityDeductor new isClassPublic: self
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
ClioClass >> name [

	^ name
]

{ #category : #accessing }
ClioClass >> name: anObject [

	name := anObject
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
