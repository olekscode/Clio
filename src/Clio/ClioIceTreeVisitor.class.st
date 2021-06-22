Class {
	#name : #ClioIceTreeVisitor,
	#superclass : #IceTreeVisitor,
	#instVars : [
		'additions',
		'removals',
		'modifications'
	],
	#category : #Clio
}

{ #category : #accessing }
ClioIceTreeVisitor >> additions [

	^ additions
]

{ #category : #initialization }
ClioIceTreeVisitor >> initialize [
	super initialize.
	
	additions := self initializeChangeDictionary.
	removals := self initializeChangeDictionary.
	modifications := self initializeChangeDictionary.
	
	
]

{ #category : #initialization }
ClioIceTreeVisitor >> initializeChangeDictionary [
	
	^ { 
		'methods' -> OrderedCollection new .
		'classes' -> OrderedCollection new .
		'packages' -> OrderedCollection new .
		'traits' -> OrderedCollection new .
		'extensions' -> OrderedCollection new .
		'directories' -> OrderedCollection new .
		'files' -> OrderedCollection new
	} asDictionary.
]

{ #category : #accessing }
ClioIceTreeVisitor >> modifications [

	^ modifications
]

{ #category : #accessing }
ClioIceTreeVisitor >> removals [

	^ removals
]

{ #category : #'as yet unclassified' }
ClioIceTreeVisitor >> saveDefinition: aDefinition into: aDictionary [
	| definitionType |
	
	definitionType := ({
		aDefinition isMethodDefinition -> 'methods' .
		aDefinition isClassDefinition -> 'classes' .
		aDefinition isPackageDefinition -> 'packages' .
		aDefinition isTraitDefinition -> 'traits' .
		aDefinition isExtensionDefinition -> 'extensions' .
		aDefinition isDirectoryDefinition -> 'directories' .
		aDefinition isFileDefinition -> 'files'
	} detect: [ :assoc | assoc key ]) value.
	
	(aDictionary at: definitionType) add: aDefinition
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitAddition: aNode [
	self saveDefinition: aNode definition into: additions.
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitModification: aNode [
	self saveDefinition: aNode definition into: modifications.
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitNoModification: aNode [
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitRemoval: aNode [
	self saveDefinition: aNode definition into: removals.
	self visitChildrenOf: currentNode.
]
