Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> asClioMethod [
	| fullClassName |
	
	fullClassName := classIsMeta
		ifFalse: [ className ]
		ifTrue: [ className, ' class' ].

	^ ClioMethod new
		className: fullClassName;
		selector: selector;
		sourceCode: source withInternalLineEndings;
		extractDeprecationsFromAst;
		yourself.
]
