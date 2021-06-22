Extension { #name : #IcePackageDefinition }

{ #category : #'*Clio' }
IcePackageDefinition >> asClioPackage [
	^ ClioPackage new
		name: name;
		yourself.
]
