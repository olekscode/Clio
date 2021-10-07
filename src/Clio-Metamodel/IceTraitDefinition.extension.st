Extension { #name : #IceTraitDefinition }

{ #category : #'*Clio-Metamodel' }
IceTraitDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: (mcDefinition ifNotNil: [ mcDefinition category ]);
		isTrait: true;
		isExtension: false;
		yourself.
]
