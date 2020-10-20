Class {
	#name : #Clio,
	#superclass : #Object,
	#instVars : [
		'repository',
		'oldCommit',
		'newCommit'
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
Clio >> commitFromSha: aCommitSha [
	^ repository revparse: aCommitSha
]

{ #category : #'as yet unclassified' }
Clio >> newCommitSha: aCommitSha [
	newCommit := self commitFromSha: aCommitSha
]

{ #category : #'as yet unclassified' }
Clio >> oldCommitSha: aCommitSha [
	oldCommit := self commitFromSha: aCommitSha
]

{ #category : #'as yet unclassified' }
Clio >> repositoryNamed: aString [
	repository := IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = aString ] ]
]
