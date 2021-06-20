Class {
	#name : #ClioCommit,
	#superclass : #IceGitCommit,
	#instVars : [
		'packages',
		'diff',
		'deletedMethods',
		'addedMethods'
	],
	#category : #Clio
}

{ #category : #'instance creation' }
ClioCommit class >> fromIceGitCommit: anIceGitCommit [
	^ self new
		id: anIceGitCommit id;
		author: anIceGitCommit author;
		datetime: anIceGitCommit datetime;
		ancestorIds: anIceGitCommit ancestorIds;
		comment: anIceGitCommit comment;
		repository: anIceGitCommit repository;
		yourself.
]

{ #category : #'as yet unclassified' }
ClioCommit >> collectChanges [
	| visitor |
	visitor := ClioIceTreeVisitor new.
	self diffToParent tree accept: visitor.
	
	deletedMethods := visitor methodRemovals.
	addedMethods := visitor methodAdditions.
]

{ #category : #'API-changes' }
ClioCommit >> diffToParent [
	^ diff ifNil: [ diff := super diffToParent ]
]

{ #category : #'as yet unclassified' }
ClioCommit >> icePackages [
	^ super packages
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
		definitions := (self snapshotFor: icePackage) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ]
			thenDo: [ :definition | 
				aClass := ClioClass new
					name: definition className;
					package: package;
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
