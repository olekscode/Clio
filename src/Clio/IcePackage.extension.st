Extension { #name : #IcePackage }

{ #category : #'*Clio' }
IcePackage >> asClioPackage [
	^ ClioPackage new
		name: self name;
		yourself
]
