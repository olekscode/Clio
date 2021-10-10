Class {
	#name : #ProjectVersionGenerator,
	#superclass : #ProjectCodeModelGenerator,
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #accessing }
ProjectVersionGenerator >> classes [

	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> generate [

	self generateMethodsDefiningMethodModels.
	self generateMethodsDefiningClassModels.
	self generateMethodsDefiningPackageModels.
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> generateMethodsDefiningClassModels [

	self classes do: [ :aClass |
		self generateMethodDefiningClassModel: aClass ].
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> generateMethodsDefiningMethodModels [

	self methods do: [ :method |
		self generateMethodDefiningMethodModel: method ].
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> generateMethodsDefiningPackageModels [

	self packages do: [ :package |
		self generateMethodDefiningPackageModel: package ].
]

{ #category : #accessing }
ProjectVersionGenerator >> methods [

	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> nameOfGeneratedMethodDefiningClassModel: aClassModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self prefix;
			nextPutAll: 'Class';
			nextPutAll: aClassModel name ].
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> nameOfGeneratedMethodDefiningMethodModel: aMethodModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self prefix;
			nextPutAll: 'Method';
			nextPutAll: aMethodModel className;
			nextPutAll: (aMethodModel name asString capitalized replaceAll: $: with: $_) ].
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> nameOfGeneratedMethodDefiningPackageModel: aPackageModel [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self prefix;
			nextPutAll: 'Package';
			nextPutAll: (aPackageModel name copyWithout: $-) ].
]

{ #category : #accessing }
ProjectVersionGenerator >> packages [

	self subclassResponsibility 
]

{ #category : #accessing }
ProjectVersionGenerator >> prefix [
	
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> protocolForClassModels [

	^ self prefix, ' source code - classes'
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> protocolForMethodModels [

	^ self prefix, ' source code - methods'
]

{ #category : #'as yet unclassified' }
ProjectVersionGenerator >> protocolForPackageModels [

	^ self prefix, ' source code - packages'
]
