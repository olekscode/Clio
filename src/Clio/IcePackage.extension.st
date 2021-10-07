Extension { #name : #IcePackage }

{ #category : #'*Clio' }
IcePackage >> asClioPackage [
	^ ClioPackage named: self name
]
