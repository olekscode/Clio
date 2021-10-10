Class {
	#name : #ProjectCodeModelGenerator,
	#superclass : #Object,
	#instVars : [
		'realData',
		'destinationClass'
	],
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #utilities }
ProjectCodeModelGenerator >> authorName [ 

	^ 'Fixture Generator'
]

{ #category : #accessing }
ProjectCodeModelGenerator >> destinationClass [

	^ destinationClass
]

{ #category : #accessing }
ProjectCodeModelGenerator >> destinationClass: anObject [

	destinationClass := anObject
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generate [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateCodeForMethodNamed: aMethodName definingClassModel: aClassModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: aMethodName;
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; tab;
			nextPutAll: '| aClass |';
			cr; cr; tab;
			nextPutAll: 'aClass := ClioClass new'; cr; tab; tab;
			nextPutAll: 'name: ''';
			nextPutAll: aClassModel name;
			nextPutAll: ''';'; cr; tab; tab.
			
		aClassModel superclassName ifNotNil: [
			stream
				nextPutAll: 'superclassName: ''';
				nextPutAll: aClassModel superclassName;
				nextPutAll: ''';'; cr; tab; tab ].
			
		stream
			nextPutAll: 'isTrait: ';
			nextPutAll: aClassModel isTrait asString;
			nextPut: $;; cr; tab; tab;
			nextPutAll: 'isExtension: ';
			nextPutAll: aClassModel isExtension asString;
			nextPut: $;; cr; tab; tab;
			nextPutAll: 'yourself.';
			cr; cr; tab;
			nextPutAll: 'aClass methods: {'.
			
		aClassModel methods do: [ :method |
			stream
				cr; tab; tab;
				nextPutAll: 'self ';
				nextPutAll: (self nameOfGeneratedMethodDefiningMethodModel: method);
				nextPutAll: ' .' ].
			
		stream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab;
			nextPutAll: 'aClass methods do: [ :method | method methodClass: aClass ].'; cr; tab;
			nextPutAll: '^ aClass' ].
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateCodeForMethodNamed: aMethodName definingMethodModel: aMethodModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: aMethodName;
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; tab;
			nextPutAll: '| method |';
			cr; cr; tab;
			nextPutAll: 'method := ClioMethod new'; cr; tab; tab;
			nextPutAll: 'name: ''';
			nextPutAll: aMethodModel name;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'className: ''';
			nextPutAll: aMethodModel className;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'protocol: ''';
			nextPutAll: aMethodModel protocol;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'yourself.';
			cr; cr; tab;
			nextPutAll: 'method sourceCode: ''';
			nextPutAll: ('''''' join: ('''' split: aMethodModel sourceCode));
			nextPutAll: '''.';
			cr; cr; tab.
			
		aMethodModel methodCalls ifNotEmpty: [
			stream
				nextPutAll: 'method methodCalls: #(';
				nextPutAll: (' ' join: aMethodModel methodCalls);
				nextPutAll: ') asOrderedCollection.';
				cr; cr; tab.
		].
			
		stream
			nextPutAll: '^ method' ].
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateCodeForMethodNamed: aMethodName definingPackageModel: aPackageModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: aMethodName;
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; tab;
			nextPutAll: '| package |';
			cr; cr; tab;
			nextPutAll: 'package := ClioPackage named: ''';
			nextPutAll: aPackageModel name;
			nextPutAll: '''.';
			cr; cr; tab;
			nextPutAll: 'package classes: {'.
			
		aPackageModel classes do: [ :aClass |
			stream
				cr; tab; tab;
				nextPutAll: 'self ';
				nextPutAll: (self nameOfGeneratedMethodDefiningClassModel: aClass);
				nextPutAll: ' .' ].
			
		stream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab;
			nextPutAll: 'package classes do: [ :aClass | aClass package: package ].'; cr; tab;
			nextPutAll: '^ package' ].
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodDefiningClassModel: aClassModel [
		
	| name |
	name := self nameOfGeneratedMethodDefiningClassModel: aClassModel.

	self
		generateMethodNamed: name
		definingClassModel: aClassModel.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodDefiningMethodModel: aMethodModel [

	| name |
	name := self nameOfGeneratedMethodDefiningMethodModel: aMethodModel.

	self
		generateMethodNamed: name
		definingMethodModel: aMethodModel.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodDefiningPackageModel: aPackageModel [

	| name |
	name := self nameOfGeneratedMethodDefiningPackageModel: aPackageModel.

	self
		generateMethodNamed: name
		definingPackageModel: aPackageModel.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodNamed: aMethodName definingClassModel: aClassModel [

	| sourceCode |
	
	sourceCode := self
		generateCodeForMethodNamed: aMethodName
		definingClassModel: aClassModel.
		
	self
		saveMethod: sourceCode
		withProtocol: self protocolForClassModels.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodNamed: aMethodName definingMethodModel: aMethodModel [

	| sourceCode |
	
	sourceCode := self
		generateCodeForMethodNamed: aMethodName
		definingMethodModel: aMethodModel.

	self
		saveMethod: sourceCode
		withProtocol: self protocolForMethodModels.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> generateMethodNamed: aMethodName definingPackageModel: aPackageModel [

	| sourceCode |
	
	sourceCode := self
		generateCodeForMethodNamed: aMethodName
		definingPackageModel: aPackageModel.

	self
		saveMethod: sourceCode
		withProtocol: self protocolForPackageModels.
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> nameOfGeneratedMethodDefiningClassModel: aClassModel [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> nameOfGeneratedMethodDefiningMethodModel: aMethodModel [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> nameOfGeneratedMethodDefiningPackageModel: aPackageModel [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> protocolForClassModels [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> protocolForMethodModels [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> protocolForPackageModels [

	self subclassResponsibility
]

{ #category : #accessing }
ProjectCodeModelGenerator >> realData [

	^ realData
]

{ #category : #accessing }
ProjectCodeModelGenerator >> realData: anObject [

	realData := anObject
]

{ #category : #'as yet unclassified' }
ProjectCodeModelGenerator >> saveMethod: aSourceCode withProtocol: aProtocol [

	Author useAuthor: self authorName during: [
		destinationClass
			compile: aSourceCode
			classified: aProtocol ].
]
