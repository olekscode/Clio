Extension { #name : #IceExtensionDefinition }

{ #category : #'*Clio' }
IceExtensionDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: packageName;
		isTrait: false;
		isExtension: true;
		yourself.
]
