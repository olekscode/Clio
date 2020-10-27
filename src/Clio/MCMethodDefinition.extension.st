Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> asClioMethod [
	^ ClioMethod new
		packageName: self classCategory;
		className: className;
		selector: selector;
		sourceCode: source withInternalLineEndings;
		yourself.
]
