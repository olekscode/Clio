Class {
	#name : #ClioMethod,
	#superclass : #Object,
	#instVars : [
		'methodClass',
		'selector',
		'protocol',
		'sourceCode',
		'deprecation',
		'isExtension'
	],
	#category : #Clio
}

{ #category : #comparing }
ClioMethod >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ sourceCode = anObject sourceCode and: [ 
		  selector = anObject selector and: [ 
			  packageName = anObject packageName and: [ 
				  deprecation = anObject deprecation and: [ 
					  className = anObject className ] ] ] ]
]

{ #category : #accessing }
ClioMethod >> ast [
	^ RBParser parseMethod: sourceCode
]

{ #category : #accessing }
ClioMethod >> className [
	^ className
]

{ #category : #accessing }
ClioMethod >> className: anObject [
	className := anObject
]

{ #category : #accessing }
ClioMethod >> deprecation [
	^ deprecation
]

{ #category : #'as yet unclassified' }
ClioMethod >> extractDeprecationsFromAst [
	| visitor |
	visitor := PDDeprecationsCollectingVisitor new.
	self ast acceptVisitor: visitor.
	
	"There should never be more than one deprecation in a method.
	In the unlikely event that a method has multiple deprecations, we only consider the first one"
	visitor deprecations ifNotEmpty: [ 
		deprecation := visitor deprecations first ]
	
]

{ #category : #testing }
ClioMethod >> hasTransformationRule [
	^ deprecation isTransforming
]

{ #category : #comparing }
ClioMethod >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ sourceCode hash bitXor: (selector hash bitXor:
			   (packageName hash bitXor:
				    (deprecation hash bitXor: className hash)))
]

{ #category : #testing }
ClioMethod >> isDeprecated [
	^ deprecation isNotNil
]

{ #category : #accessing }
ClioMethod >> isExtension [
	^ isExtension
]

{ #category : #accessing }
ClioMethod >> isExtension: anObject [
	isExtension := anObject
]

{ #category : #testing }
ClioMethod >> isPrivate [
	^ VisibilityDeductor new isMethodPrivate: self
]

{ #category : #testing }
ClioMethod >> isPublic [
	^ VisibilityDeductor new isMethodPublic: self
]

{ #category : #accessing }
ClioMethod >> methodClass [

	^ methodClass
]

{ #category : #accessing }
ClioMethod >> methodClass: anObject [

	methodClass := anObject
]

{ #category : #accessing }
ClioMethod >> packageName [
	^ methodClass package name
]

{ #category : #accessing }
ClioMethod >> packageName: anObject [
	packageName := anObject
]

{ #category : #printing }
ClioMethod >> printOn: aStream [
	aStream nextPutAll: self signature.
]

{ #category : #accessing }
ClioMethod >> protocol [

	^ protocol
]

{ #category : #accessing }
ClioMethod >> protocol: anObject [

	protocol := anObject
]

{ #category : #accessing }
ClioMethod >> selector [
	^ selector
]

{ #category : #accessing }
ClioMethod >> selector: anObject [
	selector := anObject
]

{ #category : #'as yet unclassified' }
ClioMethod >> signature [
	^ methodClass name, '>>', selector
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
