Extension { #name : #IceTraitDefinition }

{ #category : #'*Clio' }
IceTraitDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: mcDefinition category;
		superclassName: mcDefinition superclassName;
		isTrait: true;
		isExtension: false;
		yourself.
]
