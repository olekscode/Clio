Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> asClioMethod [
	^ ClioMethod new
		className: className;
		selector: selector;
		sourceCode: source withInternalLineEndings;
		extractDeprecationsFromAst;
		yourself.
]
