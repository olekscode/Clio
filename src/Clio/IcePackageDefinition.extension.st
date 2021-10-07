Extension { #name : #IcePackageDefinition }

{ #category : #'*Clio' }
IcePackageDefinition >> asClioPackage [
	^ ClioPackage named: name
]
