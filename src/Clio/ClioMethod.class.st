Class {
	#name : #ClioMethod,
	#superclass : #Object,
	#instVars : [
		'packageName',
		'className',
		'selector',
		'sourceCode',
		'ast',
		'deprecation'
	],
	#category : #'Clio-Models'
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

{ #category : #converting }
ClioMethod >> asDepMethod [
	^ DepMethod new
		packageName: packageName;
		className: className;
		selector: selector;
		sourceCode: sourceCode;
		ast: ast;
		deprecation: deprecation;
		yourself.
]

{ #category : #accessing }
ClioMethod >> ast [
	^ ast
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
ClioMethod >> packageName [
	^ packageName
]

{ #category : #accessing }
ClioMethod >> packageName: anObject [
	packageName := anObject
]

{ #category : #printing }
ClioMethod >> printOn: aStream [
	aStream nextPutAll: self signature
]

{ #category : #'as yet unclassified' }
ClioMethod >> scanAstForDeprecations [
	| visitor |
	visitor := PDDeprecationsCollectingVisitor new.
	ast acceptVisitor: visitor.
	
	"There should never be more than one deprecation in a method.
	In the unlikely event that a method has multiple deprecations, we only consider the first one"
	visitor deprecations ifNotEmpty: [ 
		deprecation := visitor deprecations first ]
	
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
	^ className, '>>', selector
]

{ #category : #accessing }
ClioMethod >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
ClioMethod >> sourceCode: anObject [
	sourceCode := anObject.
	ast := RBParser parseMethod: sourceCode.
	self scanAstForDeprecations.
]

{ #category : #'as yet unclassified' }
ClioMethod >> transformationRule [
	^ deprecation transformationRule
]
