Class {
	#name : 'ClioMethodCallVisitor',
	#superclass : 'OCProgramNodeVisitor',
	#instVars : [
		'methodCalls'
	],
	#category : 'Clio-Visitors',
	#package : 'Clio',
	#tag : 'Visitors'
}

{ #category : 'initialization' }
ClioMethodCallVisitor >> initialize [
	super initialize.
	methodCalls := OrderedCollection new.
]

{ #category : 'accessing' }
ClioMethodCallVisitor >> methodCalls [

	^ methodCalls
]

{ #category : 'visiting' }
ClioMethodCallVisitor >> visitMessageNode: aNode [
		
	methodCalls add: aNode selector.
	super visitMessageNode: aNode.
]
