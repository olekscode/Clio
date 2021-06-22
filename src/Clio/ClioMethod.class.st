Class {
	#name : #ClioMethod,
	#superclass : #ClioDefinition,
	#instVars : [
		'methodClass',
		'className',
		'protocol',
		'sourceCode',
		'isExtension',
		'methodCalls',
		'deprecation'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioMethod class >> fromDictionary: aDictionary [

	| method deprecation |

	method := self new
		selector: (aDictionary at: 'selector');
		protocol: (aDictionary at: 'protocol');
		className: (aDictionary at: 'className');
		isExtension: (aDictionary at: 'isExtension');
		sourceCode: (aDictionary at: 'sourceCode');
		yourself.
		
	method methodCalls addAll: ((aDictionary at: 'methodCalls') collect: [ :callDictionary |
		ClioMethodCall fromDictionary: callDictionary ]).
	
	deprecation := aDictionary at: 'deprecation'.
	
	deprecation ifNotNil: [ 
		method deprecation: (ClioDeprecation fromDictionary: deprecation) ].
		
	^ method
]

{ #category : #converting }
ClioMethod >> asDictionary [
	^ { 
		'selector' -> name .
		'protocol' -> protocol .
		'className' -> className .
		'isExtension' -> isExtension .
		'sourceCode' -> sourceCode .
		'methodCalls' -> (methodCalls collect: [ :call | call asDictionary ]) asArray .
		'deprecation' -> (deprecation ifNotNil: [ deprecation asDictionary ])
	} asDictionary
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

{ #category : #accessing }
ClioMethod >> deprecation: anObject [

	deprecation := anObject
]

{ #category : #initialization }
ClioMethod >> initialize [
	super initialize.
	methodCalls := OrderedCollection new.
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
ClioMethod >> methodCalls [

	^ methodCalls
]

{ #category : #accessing }
ClioMethod >> methodCalls: anObject [

	methodCalls := anObject
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

	^ name
]

{ #category : #accessing }
ClioMethod >> selector: anObject [
	
	self name: anObject
]

{ #category : #'as yet unclassified' }
ClioMethod >> signature [
	^ className, '>>', name
]

{ #category : #accessing }
ClioMethod >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
ClioMethod >> sourceCode: anObject [
	sourceCode := anObject
]
