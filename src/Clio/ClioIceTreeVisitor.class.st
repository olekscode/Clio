Class {
	#name : #ClioIceTreeVisitor,
	#superclass : #IceTreeVisitor,
	#instVars : [
		'addedPackages',
		'removedPackages',
		'addedClasses',
		'removedClasses',
		'modifiedClasses',
		'addedMethods',
		'removedMethods',
		'modifiedMethods'
	],
	#category : #Clio
}

{ #category : #accessing }
ClioIceTreeVisitor >> addedClasses [

	^ addedClasses
]

{ #category : #accessing }
ClioIceTreeVisitor >> addedMethods [

	^ addedMethods
]

{ #category : #accessing }
ClioIceTreeVisitor >> addedPackages [

	^ addedPackages
]

{ #category : #initialization }
ClioIceTreeVisitor >> initialize [
	super initialize.
	
	addedPackages := OrderedCollection new.
	removedPackages := OrderedCollection new.
	
	addedClasses := OrderedCollection new.
	removedClasses := OrderedCollection new.
	modifiedClasses := OrderedCollection new.
	
	addedMethods := OrderedCollection new.
	removedMethods := OrderedCollection new.
	modifiedMethods := OrderedCollection new.
	
]

{ #category : #accessing }
ClioIceTreeVisitor >> modifiedClasses [

	^ modifiedClasses
]

{ #category : #accessing }
ClioIceTreeVisitor >> modifiedMethods [

	^ modifiedMethods
]

{ #category : #accessing }
ClioIceTreeVisitor >> removedClasses [

	^ removedClasses
]

{ #category : #accessing }
ClioIceTreeVisitor >> removedMethods [

	^ removedMethods
]

{ #category : #accessing }
ClioIceTreeVisitor >> removedPackages [

	^ removedPackages
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitAddition: aNode [
	| definition |
	definition := aNode definition.
	
	definition isMethodDefinition ifTrue: [ addedMethods add: definition asClioMethod ].
	
	(definition isClassDefinition or: [
		definition isTraitDefinition or: [
			definition isExtensionDefinition ] ])
		ifTrue: [ addedClasses add: definition asClioClass ].
		
	definition isPackageDefinition ifTrue: [ addedPackages add: definition asClioPackage ].
	
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitModification: aNode [
	| oldDefinition newDefinition |
	
	oldDefinition := aNode oldDefinition.
	newDefinition := aNode definition.
	
	newDefinition isMethodDefinition ifTrue: [ modifiedMethods add:
		(ClioModification new
			oldDefinition: oldDefinition asClioMethod;
			newDefinition: newDefinition asClioMethod;
			yourself) ].
	
	(newDefinition isClassDefinition or: [
		newDefinition isTraitDefinition or: [
			newDefinition isExtensionDefinition ] ])
		ifTrue: [ modifiedClasses add: 
			(ClioModification new
				oldDefinition: oldDefinition asClioClass;
				newDefinition: newDefinition asClioClass;
				yourself) ].
	
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitNoModification: aNode [
	self visitChildrenOf: currentNode.
]

{ #category : #visiting }
ClioIceTreeVisitor >> visitRemoval: aNode [
	| definition |
	definition := aNode definition.
	
	definition isMethodDefinition ifTrue: [ removedMethods add: definition asClioMethod ].
	
	(definition isClassDefinition or: [
		definition isTraitDefinition or: [
			definition isExtensionDefinition ] ])
		ifTrue: [ removedClasses add: definition asClioClass ].
		
	definition isPackageDefinition ifTrue: [ removedPackages add: definition asClioPackage ].
	
	self visitChildrenOf: currentNode.
]
