Extension { #name : #MCTraitDefinition }

{ #category : #'*Clio' }
MCTraitDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: category;
		superclassName: superclassName;
		isTrait: true;
		yourself.
]
