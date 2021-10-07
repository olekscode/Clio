Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio-Metamodel' }
MCMethodDefinition >> asClioMethod [
	| method |
	
	method := ClioMethod new
		className: className;
		selector: selector;
		protocol: self protocol;
		sourceCode: source withInternalLineEndings;
		isClassSide: classIsMeta;
		isExtension: (self protocol beginsWith: '*');
		yourself.
		
	method sourceCode ifNotNil: [
		method deprecation: (ClioDataCollector new extractDeprecationFromMethod: method).
		method methodCalls: (ClioDataCollector new extractMethodCallsFromMethod: method) ].
	
	^ method
]
