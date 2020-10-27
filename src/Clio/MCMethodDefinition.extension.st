Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> asClioMethod [
	^ ClioMethod new
		selector: selector;
		sourceCode: source withInternalLineEndings;
		yourself.
]
