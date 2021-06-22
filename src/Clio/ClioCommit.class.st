Class {
	#name : #ClioCommit,
	#superclass : #Object,
	#instVars : [
		'owner',
		'id',
		'datetime',
		'author',
		'comment',
		'packages',
		'additions',
		'removals',
		'modifications'
	],
	#category : #Clio
}

{ #category : #'instance creation' }
ClioCommit class >> fromIceGitCommit: anIceGitCommit [
	^ self new
		id: anIceGitCommit id;
		author: anIceGitCommit author;
		datetime: anIceGitCommit datetime;
		comment: anIceGitCommit comment;
		yourself.
]

{ #category : #accessing }
ClioCommit >> additions [

	^ additions
]

{ #category : #accessing }
ClioCommit >> author [

	^ author
]

{ #category : #accessing }
ClioCommit >> author: anObject [

	author := anObject
]

{ #category : #'as yet unclassified' }
ClioCommit >> calculateChanges [
	| visitor |
	visitor := ClioIceTreeVisitor new.
	self iceCommit diffToParent tree accept: visitor.
	
	additions := visitor additions.
	removals := visitor removals.
	modifications := visitor modifications.
]

{ #category : #accessing }
ClioCommit >> classes [
	^ self packages flatCollect: [ :package |
		package classes ]
]

{ #category : #accessing }
ClioCommit >> comment [

	^ comment
]

{ #category : #accessing }
ClioCommit >> comment: anObject [

	comment := anObject
]

{ #category : #accessing }
ClioCommit >> datetime [

	^ datetime
]

{ #category : #accessing }
ClioCommit >> datetime: anObject [

	datetime := anObject
]

{ #category : #testing }
ClioCommit >> hasAddedClasses [
	^ (additions at: 'classes') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedDirectories [
	^ (additions at: 'directories') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedExtensions [
	^ (additions at: 'extensions') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedFiles [
	^ (additions at: 'files') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedMethods [
	^ (additions at: 'methods') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedPackages [
	^ (additions at: 'packages') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasAddedTraits [
	^ (additions at: 'traits') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedClasses [
	^ (modifications at: 'classes') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedDirectories [
	^ (modifications at: 'directories') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedExtensions [
	^ (modifications at: 'extensions') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedFiles [
	^ (modifications at: 'files') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedMethods [
	^ (modifications at: 'methods') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedPackages [
	^ (modifications at: 'packages') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasModifiedTraits [
	^ (modifications at: 'traits') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedClasses [
	^ (removals at: 'classes') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedDirectories [
	^ (removals at: 'directories') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedExtensions [
	^ (removals at: 'extensions') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedFiles [
	^ (removals at: 'files') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedMethods [
	^ (removals at: 'methods') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedPackages [
	^ (removals at: 'packages') isNotEmpty
]

{ #category : #testing }
ClioCommit >> hasRemovedTraits [
	^ (removals at: 'traits') isNotEmpty
]

{ #category : #accessing }
ClioCommit >> iceCommit [
	^ self repository revparse: id
]

{ #category : #accessing }
ClioCommit >> icePackages [
	^ self iceCommit packages
]

{ #category : #accessing }
ClioCommit >> id [

	^ id
]

{ #category : #accessing }
ClioCommit >> id: anObject [

	id := anObject
]

{ #category : #'as yet unclassified' }
ClioCommit >> loadPackages [
	| classDictionary package aClass definitions classDefinitions fullClassName method |
	
	packages := OrderedCollection new.
	classDictionary := Dictionary new.
	
	self icePackages do: [ :icePackage |
		package := ClioPackage new
			name: icePackage name;
			yourself.
		
		packages add: package.
		definitions := (self iceCommit snapshotFor: icePackage) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ]
			thenDo: [ :definition | 
				aClass := ClioClass new
					name: definition className;
					package: package;
					superclassName: (definition class = MCClassTraitDefinition
						ifTrue: [ definition baseTrait ]
						ifFalse: [ definition superclassName ]);
					isTrait: definition isTrait;
					yourself.
					
				package classes add: aClass.
				classDictionary at: aClass name put: aClass ].
	
		definitions
			select: [ :definition | definition isMethodDefinition ]
			thenDo: [ :methodDefinition |
				fullClassName := methodDefinition classIsMeta
					ifFalse: [ methodDefinition className ]
					ifTrue: [ methodDefinition className, ' class' ].
					
				aClass := classDictionary at: fullClassName ifAbsent: [ nil ].
				
				method := ClioMethod new
					methodClass: aClass;
					selector: methodDefinition selector;
					protocol: methodDefinition protocol;
					sourceCode: methodDefinition source withInternalLineEndings;
					isExtension: (methodDefinition protocol beginsWith: '*');
					yourself.
				
				aClass ifNotNil: [ aClass methods add: method ] ] ].
]

{ #category : #accessing }
ClioCommit >> methods [
	^ self packages flatCollect: [ :package |
		package classes flatCollect: [ :aClass |
			aClass methods ] ]
]

{ #category : #accessing }
ClioCommit >> modifications [

	^ modifications
]

{ #category : #accessing }
ClioCommit >> owner: anObject [
	
	owner := anObject
]

{ #category : #accessing }
ClioCommit >> packages [
	packages ifNil: [ self loadPackages ].
	^ packages
]

{ #category : #accessing }
ClioCommit >> privateMethods [
	^ self methods select: [ :method | method isPrivate ]
]

{ #category : #accessing }
ClioCommit >> publicMethods [
	^ self methods select: [ :method | method isPublic ]
]

{ #category : #accessing }
ClioCommit >> removals [

	^ removals
]

{ #category : #accessing }
ClioCommit >> repository [

	^ owner repository
]
