Class {
	#name : #ContainersProjectFixture,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Clio-Tests'
}

{ #category : #accessing }
ContainersProjectFixture >> data [
	
	^ data
]

{ #category : #initialization }
ContainersProjectFixture >> initialize [

	super initialize.
	
	data := ClioData new
		repositoryOwner: 'olekscode';
		repositoryName: 'FakeContainers';
		baselineName: 'Containers';
		imageVersion: 'Pharo-10.0.0+build.179.sha.4a71dad3a784055c53137ba42251ebd58595cd8c (64 Bit)';
		datetime: '2021-10-07T14:05:18.921934+02:00' asDateAndTime;
		yourself.
		
	data commits: self initializeCommits.
	data oldPackages: self initializeOldPackages.
	data newPackages: self initializeNewPackages.
		
		
]

{ #category : #initialization }
ContainersProjectFixture >> initializeCommits [

	^ #()
]

{ #category : #initialization }
ContainersProjectFixture >> initializeNewPackages [

	^ #()
]

{ #category : #initialization }
ContainersProjectFixture >> initializeOldPackages [

	^ {
		self oldPackageBaselineOfContainers .
		self oldPackageContainers .
		self oldPackageContainersTests
	} asOrderedCollection
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassBaselineOfContainers [

	| aClass |
	
	aClass := ClioClass new
		name: 'BaselineOfContainers';
		superclassName: 'BaselineOf';
		yourself.
	
	aClass methods: {
		self oldMethodBaselineOfContainersBaseline
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTArray [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTArray';
		superclassName: 'CTContainer';
		yourself.
	
	aClass methods: {
		self oldMethodCTArrayAdd .
		self oldMethodCTArrayAt .
		self oldMethodCTArrayRemove .
		self oldMethodCTArraySize .
		self oldMethodCTArrayAsArray .
		self oldMethodCTArrayInitialize
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTArrayTest [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTArrayTest';
		superclassName: 'TestCase';
		yourself.
	
	aClass methods: {
		self oldMethodCTArrayTestSetUp
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTContainer [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTContainer';
		superclassName: 'Object';
		yourself.
	
	aClass methods: {
		self oldMethodCTContainerIsEmpty .
		self oldMethodCTContainerAt .
		self oldMethodCTContainerAddAll .
		self oldMethodCTContainerAdd .
		self oldMethodCTContainerSize .
		self oldMethodCTContainerRemove
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLink [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTLink';
		superclassName: 'Object';
		yourself.
	
	aClass methods: {
		self oldMethodCTLinkValue .
		self oldMethodCTLinkSetValue .
		self oldMethodCTLinkNextLink .
		self oldMethodCTLinkSetNextLink
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLinkedList [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTLinkedList';
		superclassName: 'CTContainer';
		yourself.
	
	aClass methods: {
		self oldMethodCTLinkedListAdd .
		self oldMethodCTLinkedListSize .
		self oldMethodCTLinkedListAt .
		self oldMethodCTLinkedListInitialize .
		self oldMethodCTLinkedListAsArray .
		self oldMethodCTLinkedListRemove
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLinkedListTest [

	| aClass |
	
	aClass := ClioClass new
		name: 'CTLinkedListTest';
		superclassName: 'TestCase';
		yourself.
	
	aClass methods: {
		self oldMethodCTLinkedListTestSetUp
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassTContainerTests [

	| aClass |
	
	aClass := ClioClass new
		name: 'TContainerTests';
		isTrait: true;
		yourself.
	
	aClass methods: {
		self oldMethodTContainerTestTestIsEmpty .
		self oldMethodTContainerTestTestRemove .
		self oldMethodTContainerTestTestSizeOfEmpty .
		self oldMethodTContainerTestTestAdd .
		self oldMethodTContainerTestTestAddAll .
		self oldMethodTContainerTestTestAt .
		self oldMethodTContainerTestTestSize
	} asOrderedCollection.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodBaselineOfContainersBaseline [

	| method |
	
	method := ClioMethod new
		name: 'baseline:';
		className: 'BaselineOfContainers';
		protocol: 'baselines';
		yourself.
		
	method sourceCode: 'baseline: spec
	<baseline>
	spec for: #common do: [	
		"Packages"
		spec 
			package: ''Containers'';
			package: ''Containers-Tests'' with: [ spec requires: #(Containers) ] ].'.
		
	method methodCalls: #(for:do: package: package:with: requires:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayAdd [

	| method |
	
	method := ClioMethod new
		name: 'add:';
		className: 'CTArray';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'add: anObject

	contents add: anObject'.
		
	method methodCalls: #(add:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayAsArray [

	| method |
	
	method := ClioMethod new
		name: 'asArray';
		className: 'CTArray';
		protocol: 'converting';
		yourself.
		
	method sourceCode: 'asArray 

	^ contents asArray'.
		
	method methodCalls: #(asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayAt [

	| method |
	
	method := ClioMethod new
		name: 'at:';
		className: 'CTArray';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'at: aNumber

	^ contents at: aNumber'.
		
	method methodCalls: #(at:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayInitialize [

	| method |
	
	method := ClioMethod new
		name: 'initialize';
		className: 'CTArray';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'initialize
	super initialize.
	contents := OrderedCollection new.'.
		
	method methodCalls: #(initialize new) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayRemove [

	| method |
	
	method := ClioMethod new
		name: 'remove:';
		className: 'CTArray';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'remove: anObject

	contents remove: anObject'.
		
	method methodCalls: #(remove:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArraySize [

	| method |
	
	method := ClioMethod new
		name: 'size';
		className: 'CTArray';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'size 
	^ contents size'.
		
	method methodCalls: #(size) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTArrayTestSetUp [

	| method |
	
	method := ClioMethod new
		name: 'setUp';
		className: 'CTArrayTest';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'setUp

	super setUp.
	container := CTArray new.'.
		
	method methodCalls: #(setUp new) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerAdd [

	| method |
	
	method := ClioMethod new
		name: 'add:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'add: anObject

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerAddAll [

	| method |
	
	method := ClioMethod new
		name: 'addAll:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'addAll: aCollection

	aCollection do: [ :each | self add: each ]'.
		
	method methodCalls: #(do: add:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerAt [

	| method |
	
	method := ClioMethod new
		name: 'at:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'at: aNumber

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerIsEmpty [

	| method |
	
	method := ClioMethod new
		name: 'isEmpty';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'isEmpty

	^ self size = 0'.
		
	method methodCalls: #(= size) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerRemove [

	| method |
	
	method := ClioMethod new
		name: 'remove:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'remove: anObject

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTContainerSize [

	| method |
	
	method := ClioMethod new
		name: 'size';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'size

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkNextLink [

	| method |
	
	method := ClioMethod new
		name: 'nextLink';
		className: 'CTLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'nextLink

	^ nextLink'.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkSetNextLink [

	| method |
	
	method := ClioMethod new
		name: 'nextLink:';
		className: 'CTLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'nextLink: anObject

	nextLink := anObject'.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkSetValue [

	| method |
	
	method := ClioMethod new
		name: 'value:';
		className: 'CTLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'value: anObject

	value := anObject'.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkValue [

	| method |
	
	method := ClioMethod new
		name: 'value';
		className: 'CTLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'value
	
	^ value'.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListAdd [

	| method |
	
	method := ClioMethod new
		name: 'add:';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'add: anObject

	| link |
	
	link := CTLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.
		
	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListAsArray [

	| method |
	
	method := ClioMethod new
		name: 'asArray';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'asArray

	| contents current |
	contents := OrderedCollection new.
	current := head nextLink.
	
	[ current isNil ] whileFalse: [ 
		contents add: current value.
		current := current nextLink ].
	
	^ contents asArray'.
		
	method methodCalls: #(new nextLink whileFalse: isNil add: value nextLink asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListAt [

	| method |
	
	method := ClioMethod new
		name: 'at:';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'at: aNumber

	| index current |
	index := 1.
	current := head nextLink.
	
	[ index = aNumber ] whileFalse: [ 
		current ifNil: [ self error: ''Overflow'' ].
		index := index + 1.
		current := current nextLink ].
	
	^ current value'.
		
	method methodCalls: #(nextLink whileFalse: = ifNil: error: + nextLink value) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListInitialize [

	| method |
	
	method := ClioMethod new
		name: 'initialize';
		className: 'CTLinkedList';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'initialize
	super initialize.
	head := CTLink new.
	tail := head.'.
		
	method methodCalls: #(initialize new) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListRemove [

	| method |
	
	method := ClioMethod new
		name: 'remove:';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'remove: anObject

	| current |
	current := head.
	
	[ current nextLink isNil ] whileFalse: [
		current nextLink value = anObject ifTrue: [ 
			current nextLink: current nextLink nextLink.
			^ anObject ].
	
		current := current nextLink ].'.
		
	method methodCalls: #(whileFalse: isNil nextLink ifTrue: = value nextLink nextLink: nextLink nextLink nextLink) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListSize [

	| method |
	
	method := ClioMethod new
		name: 'size';
		className: 'CTLinkedList';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'size
	
	| count current |
	count := 0.
	current := head.
	
	[ current = tail ] whileFalse: [ 
		count := count + 1.
		current := current nextLink ].
	
	^ count'.
		
	method methodCalls: #(whileFalse: = + nextLink) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodCTLinkedListTestSetUp [

	| method |
	
	method := ClioMethod new
		name: 'setUp';
		className: 'CTLinkedListTest';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'setUp

	super setUp.
	container := CTLinkedList new.'.
		
	method methodCalls: #(setUp new) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestAdd [

	| method |
	
	method := ClioMethod new
		name: 'testAdd';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAdd
	container add: 1.
	container add: #hello.
	
	self assert: container asArray equals: #(1 hello).'.
		
	method methodCalls: #(add: add: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestAddAll [

	| method |
	
	method := ClioMethod new
		name: 'testAddAll';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAddAll
	container addAll: #(1 hello).
	self assert: container asArray equals: #(1 hello).'.
		
	method methodCalls: #(addAll: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestAt [

	| method |
	
	method := ClioMethod new
		name: 'testAt';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAt
	container addAll: #(1 hello).
	
	self assert: (container at: 1) equals: 1.
	self assert: (container at: 2) equals: #hello.'.
		
	method methodCalls: #(addAll: assert:equals: at: assert:equals: at:) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestIsEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testIsEmpty';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testIsEmpty
	self assert: container isEmpty.
	container add: 1.
	self deny: container isEmpty.'.
		
	method methodCalls: #(assert: isEmpty add: deny: isEmpty) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestRemove [

	| method |
	
	method := ClioMethod new
		name: 'testRemove';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testRemove
	container addAll: #(1 hello).
	container remove: #hello.
	self assert: container asArray equals: #(1).'.
		
	method methodCalls: #(addAll: remove: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestSize [

	| method |
	
	method := ClioMethod new
		name: 'testSize';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testSize
	container addAll: #(1 hello world).
	self assert: container size equals: 3.'.
		
	method methodCalls: #(addAll: assert:equals: size) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestTestSizeOfEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testSizeOfEmpty';
		className: 'TContainerTest';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testSizeOfEmpty
	self assert: container size equals: 0'.
		
	method methodCalls: #(assert:equals: size) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - packages' }
ContainersProjectFixture >> oldPackageBaselineOfContainers [

	| package |
	package := ClioPackage named: 'BaselineOfContainers'.
	
	package classes: {
		self oldClassBaselineOfContainers
	} asOrderedCollection.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'old source code - packages' }
ContainersProjectFixture >> oldPackageContainers [

	| package |
	package := ClioPackage named: 'Containers'.
	
	package classes: {
		self oldClassCTContainer .
		self oldClassCTArray .
		self oldClassCTLinkedList .
		self oldClassCTLink
	} asOrderedCollection.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'old source code - packages' }
ContainersProjectFixture >> oldPackageContainersTests [

	| package |
	package := ClioPackage named: 'Containers-Tests'.
	
	package classes: {
		self oldClassTContainerTests .
		self oldClassCTArrayTest .
		self oldClassCTLinkedListTest
	} asOrderedCollection.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]
