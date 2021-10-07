Extension { #name : #IceExtensionDefinition }

{ #category : #'*Clio-Metamodel' }
IceExtensionDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: packageName;
		isTrait: false;
		isExtension: true;
		yourself.
]
