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

{ #category : #accessing }
ClioUnderstoodSelector >> understoodByClassName [

	^ understoodByClassName
]

{ #category : #accessing }
ClioUnderstoodSelector >> understoodByClassName: anObject [

	understoodByClassName := anObject
]
