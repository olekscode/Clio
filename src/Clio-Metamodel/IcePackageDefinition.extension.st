Extension { #name : #IcePackageDefinition }

{ #category : #'*Clio-Metamodel' }
IcePackageDefinition >> asClioPackage [
	^ ClioPackage named: name
]
