Extension { #name : #MCClassTraitDefinition }

{ #category : #'*Clio-Metamodel' }
MCClassTraitDefinition >> asClioClass [
	^ ClioClass new
		name: self className;
		package: category;
		isTrait: true;
		yourself.
]
