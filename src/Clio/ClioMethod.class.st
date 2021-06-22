Class {
	#name : #ClioMethod,
	#superclass : #ClioDefinition,
	#instVars : [
		'methodClass',
		'className',
		'protocol',
		'sourceCode',
		'isExtension'
	],
	#category : #Clio
}

{ #category : #'instance creation' }
ClioMethod class >> fromDictionary: aDictionary [

	^ self new
		selector: (aDictionary at: 'selector');
		protocol: (aDictionary at: 'protocol');
		className: (aDictionary at: 'className');
		isExtension: (aDictionary at: 'isExtension');
		sourceCode: (aDictionary at: 'sourceCode');
		yourself
]

{ #category : #converting }
ClioMethod >> asDictionary [
	^ { 
		'selector' -> self selector .
		'protocol' -> self protocol .
		'className' -> self className .
		'isExtension' -> self isExtension .
		'sourceCode' -> self sourceCode
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
