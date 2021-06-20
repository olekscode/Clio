Extension { #name : #IceGitCommit }

{ #category : #'*Clio' }
IceGitCommit >> asClioCommit [
	^ ClioCommit fromIceGitCommit: self
]
