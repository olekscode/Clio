Class {
	#name : #ContainersProjectFixture,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Clio-Tests'
}

{ #category : #examples }
ContainersProjectFixture class >> inspect [
	<example>
	self new data inspect
]

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

	^ { 
		self newPackageBaselineOfContainers .
		self newPackageContainers .
		self newPackageContainersTests 
	} asOrderedCollection
]

{ #category : #initialization }
ContainersProjectFixture >> initializeOldPackages [

	^ {
		self oldPackageBaselineOfContainers .
		self oldPackageContainers .
		self oldPackageContainersTests
	} asOrderedCollection
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassBaselineOfContainers [

	| aClass |
	
	aClass := ClioClass new
		name: 'BaselineOfContainers';
		superclassName: 'BaselineOf';
		yourself.
	
	aClass methods: {
		self newMethodBaselineOfContainersBaseline
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyArrayTest [

	| aClass |
	
	aClass := ClioClass new
		name: 'MyArrayTest';
		superclassName: 'TestCase';
		yourself.
	
	aClass methods: {
		self newMethodMyArrayTestSetUp 
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyContainer [ 

	| aClass |
	
	aClass := ClioClass new
		name: 'MyContainer';
		superclassName: 'Object';
		yourself.
	
	aClass methods: {
		self newMethodMyContainerDo .
		self newMethodMyContainerCollect .
		self newMethodMyContainerInsertAllElements .
		self newMethodMyContainerIsEmpty .
		self newMethodMyContainerInsertElement .
		self newMethodMyContainerSize .
		self newMethodMyContainerAt
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLink [

	| aClass |
	
	aClass := ClioClass new
		name: 'MyLink';
		superclassName: 'Object';
		yourself.
	
	aClass methods: {
		self newMethodMyLinkNextLink .
		self newMethodMyLinkSetValue .
		self newMethodMyLinkSetNextLink .
		self newMethodMyLinkValue
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLinkedList [

	| aClass |
	
	aClass := ClioClass new
		name: 'MyLinkedList';
		superclassName: 'MyContainer';
		yourself.
	
	aClass methods: {
		
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLinkedListTest [

	| aClass |
	
	aClass := ClioClass new
		name: 'MyLinkedListTest';
		superclassName: 'TestCase';
		yourself.
	
	aClass methods: {
		self newMethodMyLinkedListTestSetUp 
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyVector [

	| aClass |
	
	aClass := ClioClass new
		name: 'MyVector';
		superclassName: 'MyContainer';
		yourself.
	
	aClass methods: {
		
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassTContainerTests [

	| aClass |
	
	aClass := ClioClass new
		name: 'TContainerTests';
		isTrait: true;
		yourself.
	
	aClass methods: {
		self newMethodTContainerTestsTestIsEmpty .
		self newMethodTContainerTestsTestAdd .
		self newMethodTContainerTestsTestAt .
		self newMethodTContainerTestsTestSize .
		self newMethodTContainerTestsTestSizeOfEmpty .
		self newMethodTContainerTestsTestAddAll .
		self newMethodTContainerTestsTestDo .
		self newMethodTContainerTestsTestCollect
	} asSet.
	
	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodBaselineOfContainersBaseline [

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

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyArrayTestSetUp [

	| method |
	
	method := ClioMethod new
		name: 'setUp';
		className: 'MyArrayTest';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'setUp

	super setUp.
	container := MyVector new.'.
		
	method methodCalls: #(setUp new) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerAt [

	| method |
	
	method := ClioMethod new
		name: 'at:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'at: aNumber

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerCollect [

	| method |
	
	method := ClioMethod new
		name: 'collect:';
		className: 'MyContainer';
		protocol: 'enumerating';
		yourself.
		
	method sourceCode: 'collect: aBlock

	| newContainer |
	newContainer := self class new.

	self do: [ :each |
		newContainer insertElement: (aBlock value: each) ].
	
	^ newContainer'.
		
	method methodCalls: #(new class do: insertElement: value:) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerDo [

	| method |
	
	method := ClioMethod new
		name: 'do:';
		className: 'MyContainer';
		protocol: 'enumerating';
		yourself.
		
	method sourceCode: 'do: aBlock

	1 to: self size do: [ :i |
		aBlock value: (self at: i) ]'.
		
	method methodCalls: #(to:do: size value: at:) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerInsertAllElements [

	| method |
	
	method := ClioMethod new
		name: 'insertAllElements:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'insertAllElements: aCollection

	aCollection do: [ :each | self insertElement: each ]'.
		
	method methodCalls: #(do: insert:) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerInsertElement [

	| method |
	
	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'insertElement: anObject

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerIsEmpty [

	| method |
	
	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'isEmpty

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerSize [

	| method |
	
	method := ClioMethod new
		name: 'size';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'size

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkNextLink [

	| method |
	
	method := ClioMethod new
		name: 'nextLink';
		className: 'MyLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'nextLink

	^ nextLink'.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkSetNextLink [

	| method |
	
	method := ClioMethod new
		name: 'nextLink:';
		className: 'MyLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'nextLink: anObject

	nextLink := anObject'.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkSetValue [

	| method |
	
	method := ClioMethod new
		name: 'value:';
		className: 'MyLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'value: anObject

	value := anObject'.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkValue [

	| method |
	
	method := ClioMethod new
		name: 'value';
		className: 'MyLink';
		protocol: 'accessing';
		yourself.
		
	method sourceCode: 'value
	
	^ value'.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListTestSetUp [

	| method |
	
	method := ClioMethod new
		name: 'setUp';
		className: 'MyLinkedListTest';
		protocol: 'initialization';
		yourself.
		
	method sourceCode: 'setUp

	super setUp.
	container := MyLinkedList new.'.
		
	method methodCalls: #(setUp new) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestAdd [

	| method |
	
	method := ClioMethod new
		name: 'testAdd';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAdd
	container insertElement: 1.
	container insertElement: #hello.
	
	self assert: container asArray equals: #(1 hello).'.
		
	method methodCalls: #(insertElement: insertElement: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestAddAll [

	| method |
	
	method := ClioMethod new
		name: 'testAddAll';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAddAll
	container insertAllElements: #(1 hello).
	self assert: container asArray equals: #(1 hello).'.
		
	method methodCalls: #(insertAllElements: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestAt [

	| method |
	
	method := ClioMethod new
		name: 'testAt';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAt
	container insertAllElements: #(1 hello).
	
	self assert: (container at: 1) equals: 1.
	self assert: (container at: 2) equals: #hello.'.
		
	method methodCalls: #(insertAllElements: assert:equals: at: assert:equals: at:) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestCollect [

	| method |
	
	method := ClioMethod new
		name: 'testCollect';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testCollect

	| result |
	container insertAllElements: #(a b c d e).
	
	result := container collect: [ :each | each asUppercase ].
	
	self assert: result asArray equals: #(A B C D E).'.
		
	method methodCalls: #(insertAllElements: collect: asUppercase assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestDo [

	| method |
	
	method := ClioMethod new
		name: 'testDo';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testDo

	| string |
	container insertAllElements: #(a b c d e).
	
	string := ''''.
	container do: [ :each | string := string, each ].
	
	self assert: string equals: ''abcde''.'.
		
	method methodCalls: #(insertAllElements: do: , assert:equals:) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestIsEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testIsEmpty';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testIsEmpty
	self assert: container isEmpty.
	container insertElement: 1.
	self deny: container isEmpty.'.
		
	method methodCalls: #(assert: isEmpty add: deny: isEmpty) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestSize [

	| method |
	
	method := ClioMethod new
		name: 'testSize';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testSize
	container insertAllElements: #(1 hello world).
	self assert: container size equals: 3.'.
		
	method methodCalls: #(insertAllElements: assert:equals: size) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestSizeOfEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testSizeOfEmpty';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testSizeOfEmpty
	self assert: container size equals: 0'.
		
	method methodCalls: #(assert:equals: size) asOrderedCollection.
	
	^ method
]

{ #category : #'new source code - packages' }
ContainersProjectFixture >> newPackageBaselineOfContainers [

	| package |
	package := ClioPackage named: 'BaselineOfContainers'.
	
	package classes: {
		self newClassBaselineOfContainers
	} asSet.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'new source code - packages' }
ContainersProjectFixture >> newPackageContainers [

	| package |
	package := ClioPackage named: 'Containers'.
	
	package classes: {
		self newClassMyContainer .
		self newClassMyVector .
		self newClassMyLinkedList .
		self newClassMyLink
	} asSet.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'new source code - packages' }
ContainersProjectFixture >> newPackageContainersTests [

	| package |
	package := ClioPackage named: 'Containers-Tests'.
	
	package classes: {
		self newClassTContainerTests .
		self newClassMyArrayTest .
		self newClassMyLinkedListTest
	} asSet.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
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
		self oldMethodTContainerTestsTestIsEmpty .
		self oldMethodTContainerTestsTestRemove .
		self oldMethodTContainerTestsTestSizeOfEmpty .
		self oldMethodTContainerTestsTestAdd .
		self oldMethodTContainerTestsTestAddAll .
		self oldMethodTContainerTestsTestAt .
		self oldMethodTContainerTestsTestSize
	} asSet.
	
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
ContainersProjectFixture >> oldMethodMyContainerSize [

	| method |
	
	method := ClioMethod new
		name: 'size';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.
		
	method sourceCode: 'size

	self subclassResponsibility'.
		
	method methodCalls: #(subclassResponsibility) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestsTestAdd [

	| method |
	
	method := ClioMethod new
		name: 'testAdd';
		className: 'TContainerTests';
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
ContainersProjectFixture >> oldMethodTContainerTestsTestAddAll [

	| method |
	
	method := ClioMethod new
		name: 'testAddAll';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testAddAll
	container addAll: #(1 hello).
	self assert: container asArray equals: #(1 hello).'.
		
	method methodCalls: #(addAll: assert:equals: asArray) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestsTestAt [

	| method |
	
	method := ClioMethod new
		name: 'testAt';
		className: 'TContainerTests';
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
ContainersProjectFixture >> oldMethodTContainerTestsTestIsEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testIsEmpty';
		className: 'TContainerTests';
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
ContainersProjectFixture >> oldMethodTContainerTestsTestRemove [

	| method |
	
	method := ClioMethod new
		name: 'testRemove';
		className: 'TContainerTests';
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
ContainersProjectFixture >> oldMethodTContainerTestsTestSize [

	| method |
	
	method := ClioMethod new
		name: 'testSize';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.
		
	method sourceCode: 'testSize
	container addAll: #(1 hello world).
	self assert: container size equals: 3.'.
		
	method methodCalls: #(addAll: assert:equals: size) asOrderedCollection.
	
	^ method
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodTContainerTestsTestSizeOfEmpty [

	| method |
	
	method := ClioMethod new
		name: 'testSizeOfEmpty';
		className: 'TContainerTests';
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
	} asSet.
	
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
	} asSet.
	
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
	} asSet.
	
	package classes do: [ :aClass | aClass package: package ].
	^ package
]
