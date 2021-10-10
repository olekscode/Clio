Class {
	#name : #ProjectCommitHistoryGenerator,
	#superclass : #ProjectCodeModelGenerator,
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generate [

	realData commits do: [ :commit |
		self generateCommit: commit ].
	
	self generateInitializeCommits.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateClassModification: aModificationModel byCommit: aCommitModel [

	| name oldDefinitionName newDefinitionName |
	
	name := self
		nameOfGeneratedMethodDefiningClassModificationModel: aModificationModel
		byCommit: aCommitModel.
		
	oldDefinitionName := self
		nameOfGeneratedMethodDefiningClass: aModificationModel oldDefinition
		beforeModificationByCommit: aCommitModel.
		
	newDefinitionName := self
		nameOfGeneratedMethodDefiningClass: aModificationModel newDefinition
		afterModificationByCommit: aCommitModel.
		
	self
		generateMethodNamed: oldDefinitionName
		definingClassModel: aModificationModel oldDefinition.
	
	self
		generateMethodNamed: newDefinitionName
		definingClassModel: aModificationModel newDefinition.
		
	self 
		generateMethodNamed: name
		definingModificationModelWithOld: oldDefinitionName
		new: newDefinitionName
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateClassesAddedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit addedClasses: {'.
			
	aCommitModel addedClasses do: [ :aClass |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningClassModel: aClass addedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateClassesModifiedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit modifiedClasses: {'.
			
	aCommitModel modifiedClasses do: [ :modification |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningClassModificationModel: modification byCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateClassesRemovedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit removedClasses: {'.
			
	aCommitModel removedClasses do: [ :aClass |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningClassModel: aClass removedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateCodeForMethodInitializeCommits [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'initializeCommits';
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; tab;
			nextPutAll: '^ {'; cr; tab; tab.
			
		realData commits do: [ :commit |
			stream
				cr; tab; tab;
				nextPutAll: 'self ';
				nextPutAll: (self nameOfGeneratedMethodDefiningCommitModel: commit);
				nextPutAll: ' .'  ].
			
		stream
			cr; tab;
			nextPutAll: '} asOrderedCollection' ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateCodeForMethodNamed: aMethodName definingCommitModel: aCommitModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: aMethodName;
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; tab;
			nextPutAll: '| commit |';
			cr; cr; tab;
			nextPutAll: 'commit := ClioCommit new'; cr; tab; tab;
			nextPutAll: 'repositoryName: ''';
			nextPutAll: aCommitModel repositoryName;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'id: ''';
			nextPutAll: aCommitModel id;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'author: ''';
			nextPutAll: aCommitModel author;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'comment: ''';
			nextPutAll: aCommitModel comment;
			nextPutAll: ''';'; cr; tab; tab;
			nextPutAll: 'datetime: ''';
			nextPutAll: aCommitModel datetime asString;
			nextPutAll: ''' asDateAndTime;'; cr; tab; tab;
			nextPutAll: 'yourself.';
			cr; cr; tab.
			
		aCommitModel addedMethods ifNotEmpty: [
			self generateMethodsAddedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel removedMethods ifNotEmpty: [
			self generateMethodsRemovedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel addedClasses ifNotEmpty: [
			self generateClassesAddedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel removedClasses ifNotEmpty: [
			self generateClassesRemovedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel addedPackages ifNotEmpty: [
			self generatePackagesAddedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel removedPackages ifNotEmpty: [
			self generatePackagesRemovedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel modifiedMethods ifNotEmpty: [
			self generateMethodsModifiedByCommit: aCommitModel onStream: stream ].
		
		aCommitModel modifiedClasses ifNotEmpty: [
			self generateClassesModifiedByCommit: aCommitModel onStream: stream ].
			
		stream nextPutAll: '^ commit' ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateCodeForMethodNamed: aMethodName definingModificationModelWithOld: anOldDefinitionMethodName new: aNewDefinitionMethodName [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: aMethodName;
			cr; tab;
			nextPutAll: '"This method was generated"';
			cr; cr; tab;
			nextPutAll: '^ ClioModification new'; cr; tab; tab;
			nextPutAll: 'oldDefinition: self ';
			nextPutAll: anOldDefinitionMethodName;
			nextPutAll: ';'; cr; tab; tab;
			nextPutAll: 'newDefinition: self ';
			nextPutAll: aNewDefinitionMethodName;
			nextPutAll: ';'; cr; tab; tab;
			nextPutAll: 'yourself' ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateCommit: aCommitModel [

	self generateMethodsDefiningMethodModelsAddedByCommit: aCommitModel.
	self generateMethodsDefiningMethodModelsRemovedByCommit: aCommitModel.
	self generateMethodsDefiningClassModelsAddedByCommit: aCommitModel.
	self generateMethodsDefiningClassModelsRemovedByCommit: aCommitModel.
	self generateMethodsDefiningPackageModelsAddedByCommit: aCommitModel.
	self generateMethodsDefiningPackageModelsRemovedByCommit: aCommitModel.
	
	self generateMethodsDefiningMethodModificationsByCommit: aCommitModel.
	self generateMethodsDefiningClassModificationsByCommit: aCommitModel.
	
	self generateMethodDefiningCommitModel: aCommitModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateInitializeCommits [

	| sourceCode |
	
	sourceCode := self generateCodeForMethodInitializeCommits.
		
	self
		saveMethod: sourceCode
		withProtocol: 'initialization'.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningClassModel: aClassModel addedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningClassModel: aClassModel
		addedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingClassModel: aClassModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningClassModel: aClassModel removedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningClassModel: aClassModel
		removedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingClassModel: aClassModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningCommitModel: aCommitModel [

	| name |
	name := self nameOfGeneratedMethodDefiningCommitModel: aCommitModel.

	self
		generateMethodNamed: name
		definingCommitModel: aCommitModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningMethodModel: aMethodModel addedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningMethodModel: aMethodModel
		addedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingMethodModel: aMethodModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningMethodModel: aMethodModel removedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningMethodModel: aMethodModel
		removedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingMethodModel: aMethodModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningPackageModel: aPackageModel addedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningPackageModel: aPackageModel
		addedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingPackageModel: aPackageModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodDefiningPackageModel: aPackageModel removedByCommit: aCommit [

	| name |
	
	name := self
		nameOfGeneratedMethodDefiningPackageModel: aPackageModel
		removedByCommit: aCommit.

	self
		generateMethodNamed: name
		definingPackageModel: aPackageModel.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodModification: aModificationModel byCommit: aCommitModel [

	| name oldDefinitionName newDefinitionName |
	
	name := self
		nameOfGeneratedMethodDefiningMethodModificationModel: aModificationModel
		byCommit: aCommitModel.
		
	oldDefinitionName := self
		nameOfGeneratedMethodDefiningMethod: aModificationModel oldDefinition
		beforeModificationByCommit: aCommitModel.
		
	newDefinitionName := self
		nameOfGeneratedMethodDefiningMethod: aModificationModel newDefinition
		afterModificationByCommit: aCommitModel.
		
	self
		generateMethodNamed: oldDefinitionName
		definingMethodModel: aModificationModel oldDefinition.
	
	self
		generateMethodNamed: newDefinitionName
		definingMethodModel: aModificationModel newDefinition.
		
	self 
		generateMethodNamed: name
		definingModificationModelWithOld: oldDefinitionName
		new: newDefinitionName
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodNamed: aMethodName definingCommitModel: aCommitModel [

	| sourceCode |
	
	sourceCode := self
		generateCodeForMethodNamed: aMethodName
		definingCommitModel: aCommitModel.
		
	self
		saveMethod: sourceCode
		withProtocol: self protocolForCommitModels.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodNamed: aMethodName definingModificationModelWithOld: anOldDefinitionMethodName new: aNewDefinitionMethodName [

	| sourceCode |
	
	sourceCode := self
		generateCodeForMethodNamed: aMethodName
		definingModificationModelWithOld: anOldDefinitionMethodName
		new: aNewDefinitionMethodName..
		
	self
		saveMethod: sourceCode
		withProtocol: self protocolForModificationModels.
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsAddedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit addedMethods: {'.
			
	aCommitModel addedMethods do: [ :method |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningMethodModel: method addedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningClassModelsAddedByCommit: aCommitModel [

	aCommitModel addedClasses do: [ :aClass |
		self
			generateMethodDefiningClassModel: aClass
			addedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningClassModelsRemovedByCommit: aCommitModel [

	aCommitModel removedClasses do: [ :aClass |
		self
			generateMethodDefiningClassModel: aClass
			removedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningClassModificationsByCommit: aCommitModel [

	aCommitModel modifiedClasses do: [ :modification |
		self generateClassModification: modification byCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningMethodModelsAddedByCommit: aCommitModel [

	aCommitModel addedMethods do: [ :method |
		self
			generateMethodDefiningMethodModel: method
			addedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningMethodModelsRemovedByCommit: aCommitModel [

	aCommitModel removedMethods do: [ :method |
		self
			generateMethodDefiningMethodModel: method
			removedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningMethodModificationsByCommit: aCommitModel [

	aCommitModel modifiedMethods do: [ :modification |
		self generateMethodModification: modification byCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningPackageModelsAddedByCommit: aCommitModel [

	aCommitModel addedPackages do: [ :package |
		self
			generateMethodDefiningPackageModel: package
			addedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsDefiningPackageModelsRemovedByCommit: aCommitModel [

	aCommitModel removedPackages do: [ :package |
		self
			generateMethodDefiningPackageModel: package
			removedByCommit: aCommitModel ]
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsModifiedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit modifiedMethods: {'.
			
	aCommitModel modifiedMethods do: [ :modification |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningMethodModificationModel: modification byCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generateMethodsRemovedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit removedMethods: {'.
			
	aCommitModel removedMethods do: [ :method |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningMethodModel: method removedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generatePackagesAddedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit addedPackages: {'.
			
	aCommitModel addedPackages do: [ :package |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningPackageModel: package addedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> generatePackagesRemovedByCommit: aCommitModel onStream: aStream [

	aStream nextPutAll: 'commit removedPackages: {'.
			
	aCommitModel removedPackages do: [ :package |
		aStream
			cr; tab; tab;
			nextPutAll: 'self ';
			nextPutAll: (self nameOfGeneratedMethodDefiningPackageModel: package removedByCommit: aCommitModel);
			nextPutAll: ' .' ].
				
		aStream
			cr; tab;
			nextPutAll: '} asSet.';
			cr; cr; tab
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningClass: aClassModel afterModificationByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'classModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aClassModel name;
			nextPutAll: 'After' ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningClass: aClassModel beforeModificationByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'classModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aClassModel name;
			nextPutAll: 'Before' ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningClassModel: aClassModel addedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'classAddedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aClassModel name ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningClassModel: aClassModel removedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'classRemovedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aClassModel name ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningClassModificationModel: aModificationModel byCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'classModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aModificationModel oldDefinition name ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningCommitModel: aCommitModel [

	^ 'commit', (aCommitModel id first: 7)
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningMethod: aMethodModel afterModificationByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'methodModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: (aMethodModel name asString capitalized replaceAll: $: with: $_);
			nextPutAll: 'After' ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningMethod: aMethodModel beforeModificationByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'methodModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: (aMethodModel name asString capitalized replaceAll: $: with: $_);
			nextPutAll: 'Before' ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningMethodModel: aMethodModel addedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'methodAddedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aMethodModel className;
			nextPutAll: (aMethodModel name asString capitalized replaceAll: $: with: $_) ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningMethodModel: aMethodModel removedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'methodRemovedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aMethodModel className;
			nextPutAll: (aMethodModel name asString capitalized replaceAll: $: with: $_) ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningMethodModificationModel: aModificationModel byCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'methodModifiedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aModificationModel oldDefinition className;
			nextPutAll: (aModificationModel oldDefinition name asString capitalized replaceAll: $: with: $_) ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningPackageModel: aPackageModel addedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'packageAddedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aPackageModel name ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> nameOfGeneratedMethodDefiningPackageModel: aPackageModel removedByCommit: aCommit [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'packageRemovedByCommit';
			nextPutAll: (aCommit id first: 7);
			nextPutAll: aPackageModel name ].
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> protocolForClassModels [

	^ 'commit history - classes'
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> protocolForCommitModels [

	^ 'commit history - commits'
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> protocolForMethodModels [

	^ 'commit history - methods'
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> protocolForModificationModels [

	^ 'commit history - modifications'
]

{ #category : #'as yet unclassified' }
ProjectCommitHistoryGenerator >> protocolForPackageModels [

	^ 'commit history - packages'
]
