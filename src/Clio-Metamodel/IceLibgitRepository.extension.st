Extension { #name : #IceLibgitRepository }

{ #category : #'*Clio-Metamodel' }
IceLibgitRepository >> obtainRepositoryOwner [
	
	^ self location parent basename
]

{ #category : #'*Clio-Metamodel' }
IceLibgitRepository >> owner [

	^ self obtainRepositoryOwner
]
