Extension { #name : #MCClassTraitDefinition }

{ #category : #'*Clio' }
MCClassTraitDefinition >> asClioClass [
	^ ClioClass new
		name: self className;
		package: category;
		isTrait: true;
		yourself.
]
