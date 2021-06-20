Class {
	#name : #Clio,
	#superclass : #Object,
	#instVars : [
		'repository',
		'newCommit',
		'oldCommit',
		'commits'
	],
	#category : #Clio
}

{ #category : #'as yet unclassified' }
Clio class >> for: aString [
	^ self new
		repositoryNamed: aString;
		yourself.
]

{ #category : #'as yet unclassified' }
Clio class >> for: aRepositoryName between: anOldCommitSha and: aNewCommitSha [
	^ (self for: aRepositoryName)
		oldCommitSha: anOldCommitSha;
		newCommitSha: aNewCommitSha;
		yourself.
]

{ #category : #'as yet unclassified' }
Clio class >> forRepository: aRepository [
	^ self new
		repository: aRepository;
		yourself.
]

{ #category : #'as yet unclassified' }
Clio class >> forRepository: aRepository between: anOldCommitSha and: aNewCommitSha [
	^ (self forRepository: aRepository)
		oldCommitSha: anOldCommitSha;
		newCommitSha: aNewCommitSha;
		yourself.
]

{ #category : #'accessing - methods' }
Clio >> addedMethods [
	| methodDictionary oldSignatures newSignatures addedSignatures |
	
	methodDictionary := Dictionary new.
	oldSignatures := Set new.
	newSignatures := Set new.
	
	oldSignatures := (oldCommit methods collect: [ :method |
		method signature ]) asSet.
	
	newSignatures := (newCommit methods collect: [ :method |
		methodDictionary at: method signature put: method.
		method signature ]) asSet.
	
	addedSignatures := newSignatures difference: oldSignatures.
	
	^ addedSignatures collect: [ :signature |
		methodDictionary at: signature ].
	
	
]

{ #category : #'accessing - methods' }
Clio >> addedPublicMethods [
	^ self addedMethods select: [ :method | method isPublic ]
]

{ #category : #'accessing - commits' }
Clio >> commits [
	^ commits ifNil: [ commits := self extractCommitsBetweenTwoVersions ]
]

{ #category : #'accessing - methods' }
Clio >> deletedMethods [
	| methodDictionary oldSignatures newSignatures deletedSignatures |
	
	methodDictionary := Dictionary new.
	oldSignatures := Set new.
	newSignatures := Set new.
	
	oldSignatures := (oldCommit methods collect: [ :method |
		methodDictionary at: method signature put: method.
		method signature ]) asSet.
	
	newSignatures := (newCommit methods collect: [ :method |
		method signature ]) asSet.
	
	deletedSignatures := oldSignatures difference: newSignatures.
	
	^ deletedSignatures collect: [ :signature |
		methodDictionary at: signature ].
	
	
]

{ #category : #'accessing - methods' }
Clio >> deletedPublicMethods [
	^ self deletedMethods select: [ :method | method isPublic ]
]

{ #category : #private }
Clio >> extractCommitsBetweenTwoVersions [
	| commitWalk collectionOfCommits |
	
	commitWalk := (IceLibgitCommitWalk forRepository: repository)
		fromCommit: newCommit;
		uptoCommit: oldCommit;
		yourself.
		
	collectionOfCommits := OrderedCollection new.
	
	commitWalk commitsDo: [ :commit |
		collectionOfCommits add: commit asClioCommit ].
	
	collectionOfCommits add: oldCommit.

	^ collectionOfCommits reversed.
]

{ #category : #'accessing - commits' }
Clio >> newCommit [

	^ newCommit
]

{ #category : #'accessing - commits' }
Clio >> newCommit: aCommit [
	newCommit := aCommit asClioCommit
]

{ #category : #'accessing - commits' }
Clio >> newCommitSha: aCommitSha [
	self newCommit: (repository revparse: aCommitSha).
]

{ #category : #'accessing - methods' }
Clio >> newMethods [
	^ newCommit methods
]

{ #category : #'accessing - commits' }
Clio >> oldCommit [

	^ oldCommit
]

{ #category : #'accessing - commits' }
Clio >> oldCommit: aCommit [
	oldCommit := aCommit asClioCommit
]

{ #category : #'accessing - commits' }
Clio >> oldCommitSha: aCommitSha [
	self oldCommit: (repository revparse: aCommitSha).
]

{ #category : #'accessing - methods' }
Clio >> oldMethods [
	^ oldCommit methods
]

{ #category : #'accessing - repository' }
Clio >> repository [

	^ repository
]

{ #category : #'accessing - repository' }
Clio >> repository: aRepository [
	repository := aRepository
]

{ #category : #'accessing - repository' }
Clio >> repositoryNamed: aString [
	self repository: (IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ])
]
