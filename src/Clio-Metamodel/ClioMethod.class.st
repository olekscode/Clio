Class {
	#name : #ClioMethod,
	#superclass : #ClioDefinition,
	#instVars : [
		'methodClass',
		'className',
		'protocol',
		'sourceCode',
		'isClassSide',
		'isExtension',
		'methodCalls',
		'deprecation'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'instance creation' }
ClioMethod class >> fromJsonDictionary: aDictionary [

	| method deprecation |

	method := self new
		selector: (aDictionary at: 'selector');
		protocol: (aDictionary at: 'protocol');
		className: (aDictionary at: 'className');
		isClassSide: (aDictionary at: 'isClassSide');
		isExtension: (aDictionary at: 'isExtension');
		sourceCode: (aDictionary at: 'sourceCode');
		yourself.
		
	method methodCalls: (aDictionary at: 'methodCalls') asOrderedCollection.
	
	deprecation := aDictionary at: 'deprecation'.
	
	deprecation ifNotNil: [ 
		method deprecation: (DeprecationModel fromJsonDictionary: deprecation) ].
		
	^ method
]

{ #category : #comparing }
ClioMethod >> = anObject [

	self class = anObject class
		ifFalse: [ ^ false ].
		
	^ name = anObject name
		and: [ className = anObject className
		and: [ isClassSide = anObject isClassSide
		and: [ isExtension = anObject isExtension
		and: [ methodCalls = anObject methodCalls
		and: [ protocol = anObject protocol
		and: [ sourceCode = anObject sourceCode
		and: [ deprecation = anObject deprecation ] ] ] ] ] ] ].
]

{ #category : #converting }
ClioMethod >> asJsonDictionary [
	^ { 
		'selector' -> name .
		'protocol' -> protocol .
		'className' -> className .
		'isExtension' -> isExtension .
		'isClassSide' -> isClassSide .
		'sourceCode' -> sourceCode .
		'methodCalls' -> methodCalls asArray .
		'deprecation' -> (deprecation ifNotNil: [ deprecation asJsonDictionary ])
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

{ #category : #accessing }
ClioMethod >> fullClassName [
	^ isClassSide
		ifTrue: [ className, ' class' ]
		ifFalse: [ className ]
]

{ #category : #comparing }
ClioMethod >> hash [

	^ name hash
		bitXor: (className hash
		bitXor: (isClassSide hash
		bitXor: (isExtension hash
		bitXor: (methodCalls hash
		bitXor: (protocol hash
		bitXor: (sourceCode hash
		bitXor: deprecation hash)))))).
]

{ #category : #initialization }
ClioMethod >> initialize [
	super initialize.
	
	methodCalls := OrderedCollection new.
	isClassSide := false.
	isExtension := false.
]

{ #category : #testing }
ClioMethod >> isAbstract [
	^ methodCalls anySatisfy: [ :methodCall | methodCall = #subclassResponsibility ]
]

{ #category : #accessing }
ClioMethod >> isClassSide [

	^ isClassSide
]

{ #category : #accessing }
ClioMethod >> isClassSide: anObject [

	isClassSide := anObject
]

{ #category : #accessing }
ClioMethod >> isDeprecated [

	^ deprecation isNotNil
]

{ #category : #testing }
ClioMethod >> isEmpty [
	^ sourceCode trimBoth lines size < 2
]

{ #category : #accessing }
ClioMethod >> isExtension [
	^ isExtension
]

{ #category : #accessing }
ClioMethod >> isExtension: anObject [
	isExtension := anObject
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

{ #category : #private }
ClioMethod >> numberOfArguments [
	
	^ (name anySatisfy: [ :char | char isAlphaNumeric or: [ char = $: ] ])
		ifFalse: [ 1 ] "an operator"
		ifTrue: [ name occurrencesOf: $: ]. "not an operator"
]

{ #category : #accessing }
ClioMethod >> packageName [
	^ self methodClass package name
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
	^ self fullClassName, '>>', name
]

{ #category : #accessing }
ClioMethod >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
ClioMethod >> sourceCode: anObject [
	sourceCode := anObject
]
