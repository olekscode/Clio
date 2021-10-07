Extension { #name : #MCClassDefinition }

{ #category : #'*Clio-Metamodel' }
MCClassDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: category;
		superclassName: superclassName;
		isTrait: false;
		yourself.
]
