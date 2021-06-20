Class {
	#name : #ClioMethod,
	#superclass : #Object,
	#instVars : [
		'methodClass',
		'selector',
		'protocol',
		'sourceCode',
		'isExtension'
	],
	#category : #Clio
}

{ #category : #accessing }
ClioMethod >> ast [
	^ RBParser parseMethod: sourceCode
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
