Extension { #name : #MCClassDefinition }

{ #category : #'*Clio' }
MCClassDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		package: category;
		superclassName: superclassName;
		isTrait: false;
		yourself.
]
