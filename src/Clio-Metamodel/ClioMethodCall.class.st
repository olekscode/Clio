Class {
	#name : #ClioMethodCall,
	#superclass : #Object,
	#instVars : [
		'selector',
		'receiver',
		'arguments'
	],
	#category : #'Clio-Metamodel'
}

{ #category : #'instance creation' }
ClioMethodCall class >> fromJsonDictionary: aDictionary [

	| methodCall |

	methodCall := self new
		selector: (aDictionary at: 'selector');
		receiver: (aDictionary at: 'receiver');
		yourself.
		
	methodCall arguments addAll: (aDictionary at: 'arguments').
	^ methodCall
]

{ #category : #comparing }
ClioMethodCall >> = anObject [
	
	self class = anObject class
		ifFalse: [ ^ false ].
		
	^ self selector = anObject selector and: [ 
		self receiver = anObject receiver and: [ 
			self arguments = anObject arguments ] ]
]

{ #category : #accessing }
ClioMethodCall >> arguments [

	^ arguments
]

{ #category : #accessing }
ClioMethodCall >> arguments: anObject [

	arguments := anObject
]

{ #category : #converting }
ClioMethodCall >> asJsonDictionary [

	^ { 
		'selector' -> selector .
		'receiver' -> receiver .
		'arguments' -> arguments asArray
	} asDictionary
]

{ #category : #comparing }
ClioMethodCall >> hash [

	^ selector hash bitXor: (receiver hash bitXor: arguments hash)
]

{ #category : #initialization }
ClioMethodCall >> initialize [
	super initialize.
	arguments := OrderedCollection new.
]

{ #category : #printing }
ClioMethodCall >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: selector;
		nextPut: $)
]

{ #category : #accessing }
ClioMethodCall >> receiver [

	^ receiver
]

{ #category : #accessing }
ClioMethodCall >> receiver: anObject [

	receiver := anObject
]

{ #category : #accessing }
ClioMethodCall >> selector [

	^ selector
]

{ #category : #accessing }
ClioMethodCall >> selector: anObject [

	selector := anObject
]
