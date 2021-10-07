Class {
	#name : #ClioMethodCallVisitor,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'methodCalls'
	],
	#category : #'Clio-Visitors'
}

{ #category : #initialization }
ClioMethodCallVisitor >> initialize [
	super initialize.
	methodCalls := OrderedCollection new.
]

{ #category : #accessing }
ClioMethodCallVisitor >> methodCalls [

	^ methodCalls
]

{ #category : #visiting }
ClioMethodCallVisitor >> visitMessageNode: aNode [
		
	methodCalls add: aNode selector.
	super visitMessageNode: aNode.
]
