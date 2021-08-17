Class {
	#name : #ClioUnderstoodSelector,
	#superclass : #Object,
	#instVars : [
		'name',
		'understoodByClassName',
		'implementorClassName',
		'isClassSide'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioUnderstoodSelector class >> fromJsonDictionary: aDictionary [

	^ self new
		name: (aDictionary at: 'name');
		understoodByClassName: (aDictionary at: 'understoodByClassName');
		implementorClassName: (aDictionary at: 'implementorClassName');
		isClassSide: (aDictionary at: 'isClassSide');
		yourself.
]

{ #category : #converting }
ClioUnderstoodSelector >> asJsonDictionary [

	^ { 
		'name' -> name .
		'understoodByClassName' -> understoodByClassName .
		'implementorClassName' -> implementorClassName .
		'isClassSide' -> isClassSide
	} asDictionary
]

{ #category : #accessing }
ClioUnderstoodSelector >> implementorClassName [

	^ implementorClassName
]

{ #category : #accessing }
ClioUnderstoodSelector >> implementorClassName: anObject [

	implementorClassName := anObject
]

{ #category : #accessing }
ClioUnderstoodSelector >> isClassSide [

	^ isClassSide
]

{ #category : #accessing }
ClioUnderstoodSelector >> isClassSide: anObject [

	isClassSide := anObject
]

{ #category : #accessing }
ClioUnderstoodSelector >> name [

	^ name
]

{ #category : #accessing }
ClioUnderstoodSelector >> name: anObject [

	name := anObject
]

{ #category : #printing }
ClioUnderstoodSelector >> printOn: aStream [

	aStream nextPutAll: self signature
]

{ #category : #accessing }
ClioUnderstoodSelector >> signature [
	"We define a signature of a supported selector as a class name that understands (not implements!) it and a method name. To emphasize the difference with the standard signature that includes the implementor class name, we use '.' instead of '>>'"

	^ String streamContents: [ :stream |
		stream
			nextPutAll: understoodByClassName;
			nextPutAll: (isClassSide ifTrue: [ ' class' ] ifFalse: [ '' ]);
			nextPut: $.;
			nextPutAll: name ]
]

{ #category : #accessing }
ClioUnderstoodSelector >> understoodByClassName [

	^ understoodByClassName
]

{ #category : #accessing }
ClioUnderstoodSelector >> understoodByClassName: anObject [

	understoodByClassName := anObject
]
