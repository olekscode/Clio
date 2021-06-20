Class {
	#name : #ClioIceTreeVisitor,
	#superclass : #IceTreeVisitor,
	#instVars : [
		'methodAdditions',
		'methodRemovals',
		'methodChanges',
		'classAdditions',
		'classRemovals',
		'classChanges',
		'packageAdditions',
		'packageRemovals',
		'packageChanges'
	],
	#category : #Clio
}

{ #category : #accessing }
ClioIceTreeVisitor >> classAdditions [

	^ classAdditions
]

{ #category : #accessing }
ClioIceTreeVisitor >> classChanges [

	^ classChanges
]

{ #category : #accessing }
ClioIceTreeVisitor >> classRemovals [

	^ classRemovals
]

{ #category : #initialization }
ClioIceTreeVisitor >> initialize [
	super initialize.
	
	methodAdditions := OrderedCollection new.
	methodRemovals := OrderedCollection new.
	methodChanges := OrderedCollection new.
	
	classAdditions := OrderedCollection new.
	classRemovals := OrderedCollection new.
	classChanges := OrderedCollection new.
	
	packageAdditions := OrderedCollection new.
	packageRemovals := OrderedCollection new.
	packageChanges := OrderedCollection new.
	
]

{ #category : #accessing }
ClioIceTreeVisitor >> methodAdditions [

	^ methodAdditions
]

{ #category : #accessing }
ClioIceTreeVisitor >> methodChanges [

	^ methodChanges
]

{ #category : #accessing }
ClioIceTreeVisitor >> methodRemovals [

	^ methodRemovals
]

{ #category : #accessing }
ClioIceTreeVisitor >> packageAdditions [

	^ packageAdditions
]

{ #category : #accessing }
ClioIceTreeVisitor >> packageChanges [

	^ packageChanges
]

{ #category : #accessing }
ClioIceTreeVisitor >> packageRemovals [

	^ packageRemovals
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitAddition: aNode [
	aNode definition isMethodDefinition
		ifTrue: [ methodAdditions add: aNode ].
		
	aNode definition isClassDefinition
		ifTrue: [ classAdditions add: aNode ].
		
	aNode definition isPackageDefinition
		ifTrue: [ packageAdditions add: aNode ].
	
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitModification: aNode [
	aNode definition isMethodDefinition
		ifTrue: [ methodChanges add: aNode ].
		
	aNode definition isClassDefinition
		ifTrue: [ classChanges add: aNode ].
		
	aNode definition isPackageDefinition
		ifTrue: [ packageChanges add: aNode ].
	
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitNoModification: aNode [
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitRemoval: aNode [
	aNode definition isMethodDefinition
		ifTrue: [ methodRemovals add: aNode ].
		
	aNode definition isClassDefinition
		ifTrue: [ classRemovals add: aNode ].
		
	aNode definition isPackageDefinition
		ifTrue: [ packageRemovals add: aNode ].
	
	self visitChildrenOf: currentNode.
]
