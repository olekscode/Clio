Class {
	#name : #Clio,
	#superclass : #Object,
	#instVars : [
		'repository',
		'oldCommit',
		'newCommit',
		'presentMoment',
		'pastMoment'
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
	^ presentMoment methods select: [ :newMethod |
		pastMoment methods noneSatisfy: [ :oldMethod |
			oldMethod hasSameSignatureAs: newMethod ] ]
]

{ #category : #'as yet unclassified' }
Clio >> deletedMethods [
	^ pastMoment methods select: [ :oldMethod |
		presentMoment methods noneSatisfy: [ :newMethod |
			newMethod hasSameSignatureAs: oldMethod ] ]
]

{ #category : #'as yet unclassified' }
Clio >> modifiedMethods [
	^ presentMoment methods select: [ :newMethod |
		pastMoment methods anySatisfy: [ :oldMethod |
			(oldMethod hasSameSignatureAs: newMethod) and: [ 
				(oldMethod hasSameSourceCodeAs: newMethod) not ] ] ]
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
Clio >> oldCommitSha: aCommitSha [
	pastMoment := ClioMoment new
		repository: repository;
		commitSha: aCommitSha;
		yourself.
		
	pastMoment collectDefinitions.
]

{ #category : #'as yet unclassified' }
Clio >> repositoryNamed: aString [
	repository := IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ]
]

{ #category : #'as yet unclassified' }
Clio >> unchangedMethods [
	^ presentMoment methods select: [ :newMethod |
		pastMoment methods anySatisfy: [ :oldMethod |
			(oldMethod hasSameSignatureAs: newMethod) and: [ 
				oldMethod hasSameSourceCodeAs: newMethod ] ] ]
]
