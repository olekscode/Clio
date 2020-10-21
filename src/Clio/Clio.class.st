Class {
	#name : #Clio,
	#superclass : #Object,
	#instVars : [
		'repository',
		'presentMoment',
		'pastMoment',
		'modifiedMethods',
		'unchangedMethods'
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
Clio >> addedMethods [
	^ presentMoment methodsWithSignatures:
		(presentMoment methodSignatures difference: pastMoment methodSignatures)
]

{ #category : #'as yet unclassified' }
Clio >> deletedMethods [
	^ pastMoment methodsWithSignatures:
		(pastMoment methodSignatures difference: presentMoment methodSignatures)
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

{ #category : #'as yet unclassified' }
Clio >> newCommitSha: aCommitSha [
	presentMoment := ClioMoment new
		repository: repository;
		commitSha: aCommitSha;
		yourself.
		
	presentMoment collectDefinitions.
]

{ #category : #'as yet unclassified' }
Clio >> newMethods [
	^ presentMoment methods
]

{ #category : #'as yet unclassified' }
Clio >> oldCommitSha: aCommitSha [
	pastMoment := ClioMoment new
		repository: repository;
		commitSha: aCommitSha;
		yourself.
		
	pastMoment collectDefinitions.
]

{ #category : #'as yet unclassified' }
Clio >> oldMethods [
	^ pastMoment methods
]

{ #category : #accessing }
Clio >> pastMoment [
	^ pastMoment
]

{ #category : #accessing }
Clio >> presentMoment [
	^ presentMoment
]

{ #category : #'as yet unclassified' }
Clio >> repositoryNamed: aString [
	repository := IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ]
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
