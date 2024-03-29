Extension { #name : #IceMethodDefinition }

{ #category : #'*Clio-Metamodel' }
IceMethodDefinition >> asClioMethod [
	| method |
	
	method := ClioMethod new
		className: className;
		selector: name;
		protocol: protocol;
		sourceCode: sourceCode withInternalLineEndings;
		isClassSide: classIsMeta;
		isExtension: (protocol beginsWith: '*');
		yourself.
		
	method sourceCode ifNotNil: [
		method deprecation: (ClioDataCollector new extractDeprecationFromMethod: method).
		method methodCalls: (ClioDataCollector new extractMethodCallsFromMethod: method) ].
	
	^ method
]
