Extension { #name : #IceMethodDefinition }

{ #category : #'*Clio' }
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
		
	method deprecation: (ClioDataCollector new extractDeprecationFromMethod: method).
	method methodCalls: (ClioDataCollector new extractMethodCallsFromMethod: method).
	^ method
]
