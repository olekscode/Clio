Extension { #name : #IceClassDefinition }

{ #category : #'*Clio-Metamodel' }
IceClassDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		isTrait: false;
		isExtension: false;
		yourself.
]
