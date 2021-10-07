Extension { #name : #MCTraitDefinition }

{ #category : #'*Clio-Metamodel' }
MCTraitDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: category;
		superclassName: superclassName;
		isTrait: true;
		yourself.
]
