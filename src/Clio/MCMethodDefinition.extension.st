Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> asClioMethod [
	^ ClioMethod new
		className: self fullClassName;
		selector: selector;
		sourceCode: source withInternalLineEndings;
		extractDeprecationsFromAst;
		yourself.
]
