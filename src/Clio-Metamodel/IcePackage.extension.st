Extension { #name : #IcePackage }

{ #category : #'*Clio-Metamodel' }
IcePackage >> asClioPackage [
	^ ClioPackage named: self name
]
