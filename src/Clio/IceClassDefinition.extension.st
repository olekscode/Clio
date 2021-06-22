Extension { #name : #IceClassDefinition }

{ #category : #'*Clio' }
IceClassDefinition >> asClioClass [
	^ ClioClass new
		name: name;
		isTrait: false;
		isExtension: false;
		yourself.
]
