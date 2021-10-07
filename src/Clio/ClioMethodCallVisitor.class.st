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

{ #category : #'as yet unclassified' }
ClioMethodCallVisitor >> variableOrExpressionAsString: anObject [
	anObject isVariable ifTrue: [ ^ anObject name ].	
	anObject isLiteralNode ifTrue: [ ^ anObject value asString ].
	
	^ anObject asString
	
]

{ #category : #visiting }
ClioMethodCallVisitor >> visitMessageNode: aNode [
	| methodCall |
	
	methodCall := ClioMethodCall new
		selector: aNode selector;
		"receiver: (self variableOrExpressionAsString: aNode receiver);
		arguments: (aNode arguments collect: [ :arg | self variableOrExpressionAsString: arg ]);"
		yourself.
		
	methodCalls add: methodCall.
	super visitMessageNode: aNode.
]
