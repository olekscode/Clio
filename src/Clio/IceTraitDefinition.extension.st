Extension { #name : #IceTraitDefinition }

{ #category : #'*Clio' }
IceTraitDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: (mcDefinition ifNotNil: [ mcDefinition category ]);
		isTrait: true;
		isExtension: false;
		yourself.
]
