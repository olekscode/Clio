Class {
	#name : #ClioMethod,
	#superclass : #Object,
	#instVars : [
		'className',
		'selector',
		'sourceCode',
		'deprecation'
	],
	#category : #Clio
}

{ #category : #comparing }
ClioMethod >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ sourceCode withInternalLineEndings = anObject sourceCode withInternalLineEndings and: [ 
		  selector = anObject selector and: [ 
			  className = anObject className ] ]
]

{ #category : #introspection }
ClioMethod >> className [
	^ className
]

{ #category : #accessing }
ClioMethod >> className: anObject [
	className := anObject
]

{ #category : #testing }
ClioMethod >> hasTransformationRule [
	^ deprecation hasTransformationRule
]

{ #category : #comparing }
ClioMethod >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ sourceCode withInternalLineEndings hash bitXor: (selector hash bitXor: className hash)
]

{ #category : #testing }
ClioMethod >> isDeprecated [
	^ deprecation isNotNil
]

{ #category : #printing }
ClioMethod >> printOn: aStream [
	aStream nextPutAll: self signature
]

{ #category : #accessing }
ClioMethod >> selector [
	^ selector
]

{ #category : #accessing }
ClioMethod >> selector: anObject [
	selector := anObject
]

{ #category : #'*Clio' }
ClioMethod >> signature [
	^ className, '>>', selector
]

{ #category : #accessing }
ClioMethod >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
ClioMethod >> sourceCode: anObject [
	sourceCode := anObject
]

{ #category : #'as yet unclassified' }
ClioMethod >> transformationRule [
	^ deprecation transformationRule
]
