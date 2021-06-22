Extension { #name : #IceMethodDefinition }

{ #category : #'*Clio' }
IceMethodDefinition >> asClioMethod [
	| method |
	
	method := ClioMethod new
		className: className;
		selector: self selector;
		protocol: self protocol;
		sourceCode: self sourceCode withInternalLineEndings;
		isExtension: (self protocol beginsWith: '*');
		yourself.
		
	method deprecation: (ClioDataCollector new extractDeprecationFromMethod: method).
	^ method
]
