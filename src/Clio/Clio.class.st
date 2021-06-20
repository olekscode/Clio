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

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
Clio >> addedPublicMethods [
	^ self addedMethods select: [ :method | method isPublic ]
]

{ #category : #'as yet unclassified' }
Clio >> commits [
	^ commits ifNil: [ commits := self extractCommitsBetweenTwoVersions ]
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
Clio >> deletedPublicMethods [
	^ self deletedMethods select: [ :method | method isPublic ]
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
Clio >> modifiedMethods [
	| oldMethod newMethod selectedMethods |
	
	selectedMethods := Set new.
	
	(pastMoment methodSignatures intersection: presentMoment methodSignatures) do: [ :signature |
		oldMethod := pastMoment methodWithSignature: signature.
		newMethod := presentMoment methodWithSignature: signature.
			
		(oldMethod sourceCode = newMethod sourceCode)
			ifFalse: [ selectedMethods add: oldMethod -> newMethod ] ].
		
	^ selectedMethods
]

{ #category : #accessing }
Clio >> newCommit [

	^ newCommit
]

{ #category : #'as yet unclassified' }
Clio >> newCommit: aCommit [
	newCommit := aCommit asClioCommit
]

{ #category : #'as yet unclassified' }
Clio >> newCommitSha: aCommitSha [
	self newCommit: (repository revparse: aCommitSha).
]

{ #category : #'as yet unclassified' }
Clio >> newMethods [
	^ newCommit methods
]

{ #category : #accessing }
Clio >> oldCommit [

	^ oldCommit
]

{ #category : #'as yet unclassified' }
Clio >> oldCommit: aCommit [
	oldCommit := aCommit asClioCommit
]

{ #category : #'as yet unclassified' }
Clio >> oldCommitSha: aCommitSha [
	self oldCommit: (repository revparse: aCommitSha).
]

{ #category : #'as yet unclassified' }
Clio >> oldMethods [
	^ oldCommit methods
]

{ #category : #accessing }
Clio >> pastMoment [
	^ pastMoment
]

{ #category : #accessing }
Clio >> presentMoment [
	^ presentMoment
]

{ #category : #accessing }
Clio >> repository [

	^ repository
]

{ #category : #'as yet unclassified' }
Clio >> repository: aRepository [
	repository := aRepository
]

{ #category : #'as yet unclassified' }
Clio >> repositoryNamed: aString [
	self repository: (IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ])
]

{ #category : #'as yet unclassified' }
Clio >> unchangedMethods [
	| oldMethod newMethod selectedMethods |
	
	selectedMethods := Set new.
	
	(pastMoment methodSignatures intersection: presentMoment methodSignatures) do: [ :signature |
		oldMethod := pastMoment methodWithSignature: signature.
		newMethod := presentMoment methodWithSignature: signature.
			
		(oldMethod sourceCode = newMethod sourceCode)
			ifTrue: [ selectedMethods add: oldMethod ] ].
		
	^ selectedMethods
]
