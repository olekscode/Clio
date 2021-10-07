Extension { #name : #IceGitCommit }

{ #category : #'*Clio-Metamodel' }
IceGitCommit >> asClioCommit [
	^ ClioCommit fromIceGitCommit: self
]
