Extension { #name : 'MCClassDefinition' }

{ #category : '*Clio-Metamodel' }
MCClassDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: packageName;
		superclassName: superclassName;
		isTrait: false;
		yourself.
]
