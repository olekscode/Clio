Class {
	#name : #ClioMethodCall,
	#superclass : #Object,
	#instVars : [
		'selector',
		'receiver',
		'arguments'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioMethodCall class >> fromDictionary: aDictionary [

	| methodCall |

	methodCall := self new
		selector: (aDictionary at: 'selector');
		receiver: (aDictionary at: 'receiver');
		yourself.
		
	methodCall arguments addAll: (aDictionary at: 'arguments').
	^ methodCall
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
ClioMethodCall >> asDictionary [

	^ { 
		'selector' -> selector .
		'receiver' -> receiver .
		'arguments' -> arguments asArray
	} asDictionary
]

{ #category : #initialization }
ClioMethodCall >> initialize [
	super initialize.
	arguments := OrderedCollection new.
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
