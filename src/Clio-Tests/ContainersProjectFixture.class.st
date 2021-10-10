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

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyArray [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyArray';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyArrayTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyArrayTest';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyContainer [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyLink [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLink';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyLinkedList [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLinkedList';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommit8650d1cMyLinkedListTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLinkedListTest';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classAddedByCommite1c8390MyVector [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyVector';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTArray [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTArray';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTArrayTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTArrayTest';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTContainer [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTLink [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLink';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTLinkedList [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLinkedList';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommit8650d1cCTLinkedListTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLinkedListTest';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - classes' }
ContainersProjectFixture >> classRemovedByCommite1c8390MyArray [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyArray';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commit3dde88b [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: '3dde88b3fb73605117eb5c42e93e3d188de3ef08';
		author: 'Oleksandr Zaitsev';
		comment: 'Made isEmpty abstract and pushed down the implementation';
		datetime: '2021-10-07T13:10:26+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommit3dde88bMyArrayIsEmpty .
		self methodAddedByCommit3dde88bMyLinkedListIsEmpty .
	} asSet.

	commit modifiedMethods: {
		self methodModifiedByCommit3dde88bMyContainerIsEmpty .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commit43faf78 [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: '43faf7812dcf57e0d67c91fcd88db9b70c30f47b';
		author: 'Oleksandr Zaitsev';
		comment: 'Implemented do: and collect:';
		datetime: '2021-10-07T05:15:50+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommit43faf78TContainerTestsTestCollect .
		self methodAddedByCommit43faf78TContainerTestsTestDo .
		self methodAddedByCommit43faf78MyContainerDo_ .
		self methodAddedByCommit43faf78MyContainerCollect_ .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commit508e49a [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: '508e49a9a710f8d5621e6567c6f38691d9a2cfde';
		author: 'Oleksandr Zaitsev';
		comment: 'Removed the remove: method';
		datetime: '2021-10-07T13:16:32+02:00' asDateAndTime;
		yourself.

	commit removedMethods: {
		self methodRemovedByCommit508e49aMyLinkedListRemove_ .
		self methodRemovedByCommit508e49aTContainerTestsTestRemove .
		self methodRemovedByCommit508e49aMyArrayRemove_ .
		self methodRemovedByCommit508e49aMyContainerRemove_ .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commit8650d1c [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: '8650d1c19bde1061a36bfbf572ae8fcf4e8501f1';
		author: 'Oleksandr Zaitsev';
		comment: 'Changed CT prefix to My';
		datetime: '2021-10-07T05:08:10+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommit8650d1cMyArrayTestSetUp .
		self methodAddedByCommit8650d1cMyLinkedListInsert_ .
		self methodAddedByCommit8650d1cMyLinkedListAt_ .
		self methodAddedByCommit8650d1cMyLinkedListSize .
		self methodAddedByCommit8650d1cMyLinkValue .
		self methodAddedByCommit8650d1cMyArraySize .
		self methodAddedByCommit8650d1cMyLinkedListTestSetUp .
		self methodAddedByCommit8650d1cMyLinkedListInitialize .
		self methodAddedByCommit8650d1cMyContainerAt_ .
		self methodAddedByCommit8650d1cMyContainerSize .
		self methodAddedByCommit8650d1cMyLinkedListAsArray .
		self methodAddedByCommit8650d1cMyLinkedListRemove_ .
		self methodAddedByCommit8650d1cMyLinkValue_ .
		self methodAddedByCommit8650d1cMyLinkNextLink_ .
		self methodAddedByCommit8650d1cMyArrayAsArray .
		self methodAddedByCommit8650d1cMyContainerIsEmpty .
		self methodAddedByCommit8650d1cMyArrayRemove_ .
		self methodAddedByCommit8650d1cMyContainerInsertAll_ .
		self methodAddedByCommit8650d1cMyContainerInsert_ .
		self methodAddedByCommit8650d1cMyArrayAt_ .
		self methodAddedByCommit8650d1cMyContainerRemove_ .
		self methodAddedByCommit8650d1cMyArrayInsert_ .
		self methodAddedByCommit8650d1cMyLinkNextLink .
		self methodAddedByCommit8650d1cMyArrayInitialize .
	} asSet.

	commit removedMethods: {
		self methodRemovedByCommit8650d1cCTLinkedListInitialize .
		self methodRemovedByCommit8650d1cCTLinkedListAt_ .
		self methodRemovedByCommit8650d1cCTContainerSize .
		self methodRemovedByCommit8650d1cCTLinkValue_ .
		self methodRemovedByCommit8650d1cCTLinkedListAsArray .
		self methodRemovedByCommit8650d1cCTArrayRemove_ .
		self methodRemovedByCommit8650d1cCTLinkNextLink_ .
		self methodRemovedByCommit8650d1cCTLinkedListInsert_ .
		self methodRemovedByCommit8650d1cCTLinkedListTestSetUp .
		self methodRemovedByCommit8650d1cCTContainerAt_ .
		self methodRemovedByCommit8650d1cCTLinkValue .
		self methodRemovedByCommit8650d1cCTArraySize .
		self methodRemovedByCommit8650d1cCTContainerInsertAll_ .
		self methodRemovedByCommit8650d1cCTLinkNextLink .
		self methodRemovedByCommit8650d1cCTArrayTestSetUp .
		self methodRemovedByCommit8650d1cCTArrayAsArray .
		self methodRemovedByCommit8650d1cCTArrayInsert_ .
		self methodRemovedByCommit8650d1cCTContainerRemove_ .
		self methodRemovedByCommit8650d1cCTLinkedListSize .
		self methodRemovedByCommit8650d1cCTContainerIsEmpty .
		self methodRemovedByCommit8650d1cCTArrayInitialize .
		self methodRemovedByCommit8650d1cCTArrayAt_ .
		self methodRemovedByCommit8650d1cCTContainerInsert_ .
		self methodRemovedByCommit8650d1cCTLinkedListRemove_ .
	} asSet.

	commit addedClasses: {
		self classAddedByCommit8650d1cMyLinkedList .
		self classAddedByCommit8650d1cMyLink .
		self classAddedByCommit8650d1cMyContainer .
		self classAddedByCommit8650d1cMyArray .
		self classAddedByCommit8650d1cMyLinkedListTest .
		self classAddedByCommit8650d1cMyArrayTest .
	} asSet.

	commit removedClasses: {
		self classRemovedByCommit8650d1cCTLink .
		self classRemovedByCommit8650d1cCTLinkedList .
		self classRemovedByCommit8650d1cCTArray .
		self classRemovedByCommit8650d1cCTContainer .
		self classRemovedByCommit8650d1cCTArrayTest .
		self classRemovedByCommit8650d1cCTLinkedListTest .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commitc54d8c8 [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: 'c54d8c83f216db96e8ca4a4b2060bad54877d7bc';
		author: 'Oleksandr Zaitsev';
		comment: 'Renamed insert: and insertAll: to insertElement: and insertAllElements:';
		datetime: '2021-10-07T13:20:41+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommitc54d8c8MyContainerInsertElement_ .
		self methodAddedByCommitc54d8c8MyArrayInsertElement_ .
		self methodAddedByCommitc54d8c8MyContainerInsertAllElements_ .
		self methodAddedByCommitc54d8c8MyLinkedListInsertElement_ .
	} asSet.

	commit removedMethods: {
		self methodRemovedByCommitc54d8c8MyLinkedListInsert_ .
		self methodRemovedByCommitc54d8c8MyContainerInsertAll_ .
		self methodRemovedByCommitc54d8c8MyArrayInsert_ .
		self methodRemovedByCommitc54d8c8MyContainerInsert_ .
	} asSet.

	commit modifiedMethods: {
		self methodModifiedByCommitc54d8c8MyContainerCollect_ .
		self methodModifiedByCommitc54d8c8TContainerTestsTestSize .
		self methodModifiedByCommitc54d8c8TContainerTestsTestAt .
		self methodModifiedByCommitc54d8c8TContainerTestsTestDo .
		self methodModifiedByCommitc54d8c8TContainerTestsTestIsEmpty .
		self methodModifiedByCommitc54d8c8TContainerTestsTestAdd .
		self methodModifiedByCommitc54d8c8TContainerTestsTestCollect .
		self methodModifiedByCommitc54d8c8TContainerTestsTestAddAll .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commitcf2d9bd [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: 'cf2d9bd9fe5bad96913479b7da23c076dd140b45';
		author: 'Oleksandr Zaitsev';
		comment: 'Renamed add: to insert: and addAll: to insertAll:';
		datetime: '2021-10-07T04:58:26+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommitcf2d9bdCTArrayInsert_ .
		self methodAddedByCommitcf2d9bdCTContainerInsert_ .
		self methodAddedByCommitcf2d9bdCTContainerInsertAll_ .
		self methodAddedByCommitcf2d9bdCTLinkedListInsert_ .
	} asSet.

	commit removedMethods: {
		self methodRemovedByCommitcf2d9bdCTContainerAdd_ .
		self methodRemovedByCommitcf2d9bdCTLinkedListAdd_ .
		self methodRemovedByCommitcf2d9bdCTArrayAdd_ .
		self methodRemovedByCommitcf2d9bdCTContainerAddAll_ .
	} asSet.

	commit modifiedMethods: {
		self methodModifiedByCommitcf2d9bdTContainerTestsTestAt .
		self methodModifiedByCommitcf2d9bdTContainerTestsTestSize .
		self methodModifiedByCommitcf2d9bdTContainerTestsTestIsEmpty .
		self methodModifiedByCommitcf2d9bdTContainerTestsTestRemove .
		self methodModifiedByCommitcf2d9bdTContainerTestsTestAdd .
		self methodModifiedByCommitcf2d9bdTContainerTestsTestAddAll .
	} asSet.

	^ commit
]

{ #category : #'commit history - commits' }
ContainersProjectFixture >> commite1c8390 [
	"This method was generated"
	| commit |

	commit := ClioCommit new
		repositoryName: 'FakeProject';
		id: 'e1c83904fc74a9277207272884f56a813d4ef228';
		author: 'Oleksandr Zaitsev';
		comment: 'Renamed MyArray to MyVector';
		datetime: '2021-10-07T13:22:38+02:00' asDateAndTime;
		yourself.

	commit addedMethods: {
		self methodAddedByCommite1c8390MyVectorInsertElement_ .
		self methodAddedByCommite1c8390MyVectorIsEmpty .
		self methodAddedByCommite1c8390MyVectorSize .
		self methodAddedByCommite1c8390MyVectorAsArray .
		self methodAddedByCommite1c8390MyVectorInitialize .
		self methodAddedByCommite1c8390MyVectorAt_ .
	} asSet.

	commit removedMethods: {
		self methodRemovedByCommite1c8390MyArrayInsertElement_ .
		self methodRemovedByCommite1c8390MyArrayIsEmpty .
		self methodRemovedByCommite1c8390MyArrayAsArray .
		self methodRemovedByCommite1c8390MyArrayAt_ .
		self methodRemovedByCommite1c8390MyArrayInitialize .
		self methodRemovedByCommite1c8390MyArraySize .
	} asSet.

	commit addedClasses: {
		self classAddedByCommite1c8390MyVector .
	} asSet.

	commit removedClasses: {
		self classRemovedByCommite1c8390MyArray .
	} asSet.

	commit modifiedMethods: {
		self methodModifiedByCommite1c8390MyArrayTestSetUp .
	} asSet.

	^ commit
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
		repositoryName: 'FakeProject';
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
	"This method was generated"
	^ {
		
		self commitcf2d9bd .
		self commit8650d1c .
		self commit43faf78 .
		self commit3dde88b .
		self commit508e49a .
		self commitc54d8c8 .
		self commite1c8390 .
	} asOrderedCollection
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit3dde88bMyArrayIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyArray';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit3dde88bMyLinkedListIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyLinkedList';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ head = tail'.

	method methodCalls: #(=) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit43faf78MyContainerCollect_ [
	"This method was generated"
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
		newContainer insert: (aBlock value: each) ].
	
	^ newContainer'.

	method methodCalls: #(new class do: insert: value:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit43faf78MyContainerDo_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit43faf78TContainerTestsTestCollect [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testCollect';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testCollect

	| result |
	container insertAll: #(a b c d e).
	
	result := container collect: [ :each | each asUppercase ].
	
	self assert: result asArray equals: #(A B C D E).
	'.

	method methodCalls: #(insertAll: collect: asUppercase assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit43faf78TContainerTestsTestDo [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testDo';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testDo

	| string |
	container insertAll: #(a b c d e).
	
	string := ''''.
	container do: [ :each | string := string, each ].
	
	self assert: string equals: ''abcde''.
	'.

	method methodCalls: #(insertAll: do: , assert:equals:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyArray';
		protocol: 'converting';
		yourself.

	method sourceCode: 'asArray 

	^ contents asArray'.

	method methodCalls: #(asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'at: aNumber

	^ contents at: aNumber'.

	method methodCalls: #(at:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyArray';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	contents := OrderedCollection new.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'remove: anObject

	contents remove: anObject'.

	method methodCalls: #(remove:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArraySize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyArray';
		protocol: 'accessing';
		yourself.

	method sourceCode: 'size 
	^ contents size'.

	method methodCalls: #(size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyArrayTestSetUp [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'setUp';
		className: 'MyArrayTest';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'setUp

	super setUp.
	container := MyArray new.'.

	method methodCalls: #(setUp new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerAt_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerInsertAll_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAll:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAll: aCollection

	aCollection do: [ :each | self insert: each ]'.

	method methodCalls: #(do: insert:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'remove: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyContainerSize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkNextLink [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkNextLink_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkValue [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkValue_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyLinkedList';
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyLinkedList';
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyLinkedList';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	head := MyLink new.
	tail := head.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	| link |
	
	link := MyLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyLinkedList';
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListSize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyLinkedList';
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommit8650d1cMyLinkedListTestSetUp [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitc54d8c8MyArrayInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitc54d8c8MyContainerInsertAllElements_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAllElements:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAllElements: aCollection

	aCollection do: [ :each | self insertElement: each ]'.

	method methodCalls: #(do: insertElement:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitc54d8c8MyContainerInsertElement_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitc54d8c8MyLinkedListInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	| link |
	
	link := MyLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitcf2d9bdCTArrayInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitcf2d9bdCTContainerInsertAll_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAll:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAll: aCollection

	aCollection do: [ :each | self insert: each ]'.

	method methodCalls: #(do: insert:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitcf2d9bdCTContainerInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommitcf2d9bdCTLinkedListInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	| link |
	
	link := CTLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyVector';
		protocol: 'converting';
		yourself.

	method sourceCode: 'asArray 

	^ contents asArray'.

	method methodCalls: #(asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyVector';
		protocol: 'adding';
		yourself.

	method sourceCode: 'at: aNumber

	^ contents at: aNumber'.

	method methodCalls: #(at:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyVector';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	contents := OrderedCollection new.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyVector';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyVector';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodAddedByCommite1c8390MyVectorSize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyVector';
		protocol: 'accessing';
		yourself.

	method sourceCode: 'size 
	^ contents size'.

	method methodCalls: #(size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommit3dde88bIsEmptyAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommit3dde88bIsEmptyBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommit3dde88bMyContainerIsEmpty [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommit3dde88bIsEmptyBefore;
		newDefinition: self methodModifiedByCommit3dde88bIsEmptyAfter;
		yourself
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8Collect_After [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8Collect_Before [
	"This method was generated"
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
		newContainer insert: (aBlock value: each) ].
	
	^ newContainer'.

	method methodCalls: #(new class do: insert: value:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8MyContainerCollect_ [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8Collect_Before;
		newDefinition: self methodModifiedByCommitc54d8c8Collect_After;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestAdd [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestAddBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestAddAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestAddAll [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestAddAllBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestAddAllAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestAt [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestAtBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestAtAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestCollect [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestCollectBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestCollectAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestDo [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestDoBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestDoAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestIsEmpty [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestIsEmptyBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestIsEmptyAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TContainerTestsTestSize [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitc54d8c8TestSizeBefore;
		newDefinition: self methodModifiedByCommitc54d8c8TestSizeAfter;
		yourself
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAddAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAddAllAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAddAllBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAddAll';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAddAll
	container insertAll: #(1 hello).
	self assert: container asArray equals: #(1 hello).'.

	method methodCalls: #(insertAll: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAddBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAdd';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAdd
	container insert: 1.
	container insert: #hello.
	
	self assert: container asArray equals: #(1 hello).'.

	method methodCalls: #(insert: insert: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAtAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestAtBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAt';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAt
	container insertAll: #(1 hello).
	
	self assert: (container at: 1) equals: 1.
	self assert: (container at: 2) equals: #hello.'.

	method methodCalls: #(insertAll: assert:equals: at: assert:equals: at:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestCollectAfter [
	"This method was generated"
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
	
	self assert: result asArray equals: #(A B C D E).
	'.

	method methodCalls: #(insertAllElements: collect: asUppercase assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestCollectBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testCollect';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testCollect

	| result |
	container insertAll: #(a b c d e).
	
	result := container collect: [ :each | each asUppercase ].
	
	self assert: result asArray equals: #(A B C D E).
	'.

	method methodCalls: #(insertAll: collect: asUppercase assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestDoAfter [
	"This method was generated"
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
	
	self assert: string equals: ''abcde''.
	'.

	method methodCalls: #(insertAllElements: do: , assert:equals:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestDoBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testDo';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testDo

	| string |
	container insertAll: #(a b c d e).
	
	string := ''''.
	container do: [ :each | string := string, each ].
	
	self assert: string equals: ''abcde''.
	'.

	method methodCalls: #(insertAll: do: , assert:equals:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestIsEmptyAfter [
	"This method was generated"
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

	method methodCalls: #(assert: isEmpty insertElement: deny: isEmpty) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestIsEmptyBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testIsEmpty';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testIsEmpty
	self assert: container isEmpty.
	container insert: 1.
	self deny: container isEmpty.'.

	method methodCalls: #(assert: isEmpty insert: deny: isEmpty) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestSizeAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitc54d8c8TestSizeBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testSize';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testSize
	container insertAll: #(1 hello world).
	self assert: container size equals: 3.'.

	method methodCalls: #(insertAll: assert:equals: size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestAdd [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestAddBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestAddAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestAddAll [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestAddAllBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestAddAllAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestAt [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestAtBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestAtAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestIsEmpty [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestIsEmptyBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestIsEmptyAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestRemove [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestRemoveBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestRemoveAfter;
		yourself
]

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTContainerTestsTestSize [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommitcf2d9bdTestSizeBefore;
		newDefinition: self methodModifiedByCommitcf2d9bdTestSizeAfter;
		yourself
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAddAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAdd';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAdd
	container insert: 1.
	container insert: #hello.
	
	self assert: container asArray equals: #(1 hello).'.

	method methodCalls: #(insert: insert: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAddAllAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAddAll';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAddAll
	container insertAll: #(1 hello).
	self assert: container asArray equals: #(1 hello).'.

	method methodCalls: #(insertAll: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAddAllBefore [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAddBefore [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAtAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testAt';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testAt
	container insertAll: #(1 hello).
	
	self assert: (container at: 1) equals: 1.
	self assert: (container at: 2) equals: #hello.'.

	method methodCalls: #(insertAll: assert:equals: at: assert:equals: at:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestAtBefore [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestIsEmptyAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testIsEmpty';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testIsEmpty
	self assert: container isEmpty.
	container insert: 1.
	self deny: container isEmpty.'.

	method methodCalls: #(assert: isEmpty insert: deny: isEmpty) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestIsEmptyBefore [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestRemoveAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testRemove';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testRemove
	container insertAll: #(1 hello).
	container remove: #hello.
	self assert: container asArray equals: #(1).'.

	method methodCalls: #(insertAll: remove: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestRemoveBefore [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestSizeAfter [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testSize';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testSize
	container insertAll: #(1 hello world).
	self assert: container size equals: 3.'.

	method methodCalls: #(insertAll: assert:equals: size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommitcf2d9bdTestSizeBefore [
	"This method was generated"
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

{ #category : #'commit history - modifications' }
ContainersProjectFixture >> methodModifiedByCommite1c8390MyArrayTestSetUp [
	"This method was generated"

	^ ClioModification new
		oldDefinition: self methodModifiedByCommite1c8390SetUpBefore;
		newDefinition: self methodModifiedByCommite1c8390SetUpAfter;
		yourself
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommite1c8390SetUpAfter [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodModifiedByCommite1c8390SetUpBefore [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'setUp';
		className: 'MyArrayTest';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'setUp

	super setUp.
	container := MyArray new.'.

	method methodCalls: #(setUp new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit508e49aMyArrayRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'remove: anObject

	contents remove: anObject'.

	method methodCalls: #(remove:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit508e49aMyContainerRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'remove: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit508e49aMyLinkedListRemove_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'remove:';
		className: 'MyLinkedList';
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit508e49aTContainerTestsTestRemove [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'testRemove';
		className: 'TContainerTests';
		protocol: 'tests';
		yourself.

	method sourceCode: 'testRemove
	container insertAll: #(1 hello).
	container remove: #hello.
	self assert: container asArray equals: #(1).'.

	method methodCalls: #(insertAll: remove: assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayAsArray [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayAt_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayInitialize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayRemove_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArraySize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTArrayTestSetUp [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerAt_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerInsertAll_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAll:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAll: aCollection

	aCollection do: [ :each | self insert: each ]'.

	method methodCalls: #(do: insert:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerIsEmpty [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerRemove_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTContainerSize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkNextLink [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkNextLink_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkValue [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkValue_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListAsArray [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListAt_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListInitialize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'CTLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	| link |
	
	link := CTLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListRemove_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListSize [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommit8650d1cCTLinkedListTestSetUp [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitc54d8c8MyArrayInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitc54d8c8MyContainerInsertAll_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAll:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAll: aCollection

	aCollection do: [ :each | self insert: each ]'.

	method methodCalls: #(do: insert:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitc54d8c8MyContainerInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	self subclassResponsibility'.

	method methodCalls: #(subclassResponsibility) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitc54d8c8MyLinkedListInsert_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insert:';
		className: 'MyLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insert: anObject

	| link |
	
	link := MyLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitcf2d9bdCTArrayAdd_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitcf2d9bdCTContainerAddAll_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitcf2d9bdCTContainerAdd_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommitcf2d9bdCTLinkedListAdd_ [
	"This method was generated"
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

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArrayAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyArray';
		protocol: 'converting';
		yourself.

	method sourceCode: 'asArray 

	^ contents asArray'.

	method methodCalls: #(asArray) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArrayAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'at: aNumber

	^ contents at: aNumber'.

	method methodCalls: #(at:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArrayInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyArray';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	contents := OrderedCollection new.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArrayInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyArray';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArrayIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyArray';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'commit history - methods' }
ContainersProjectFixture >> methodRemovedByCommite1c8390MyArraySize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyArray';
		protocol: 'accessing';
		yourself.

	method sourceCode: 'size 
	^ contents size'.

	method methodCalls: #(size) asOrderedCollection.

	^ method
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassBaselineOfContainers [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'BaselineOfContainers';
		superclassName: 'BaselineOf';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodBaselineOfContainersBaseline_ .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyArrayTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyArrayTest';
		superclassName: 'TestCase';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyArrayTestSetUp .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyContainer [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyContainer';
		superclassName: 'Object';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyContainerDo_ .
		self newMethodMyContainerCollect_ .
		self newMethodMyContainerInsertAllElements_ .
		self newMethodMyContainerIsEmpty .
		self newMethodMyContainerInsertElement_ .
		self newMethodMyContainerSize .
		self newMethodMyContainerAt_ .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLink [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLink';
		superclassName: 'Object';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyLinkNextLink .
		self newMethodMyLinkValue_ .
		self newMethodMyLinkNextLink_ .
		self newMethodMyLinkValue .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLinkedList [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLinkedList';
		superclassName: 'MyContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyLinkedListInitialize .
		self newMethodMyLinkedListAsArray .
		self newMethodMyLinkedListInsertElement_ .
		self newMethodMyLinkedListIsEmpty .
		self newMethodMyLinkedListAt_ .
		self newMethodMyLinkedListSize .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyLinkedListTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyLinkedListTest';
		superclassName: 'TestCase';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyLinkedListTestSetUp .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassMyVector [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'MyVector';
		superclassName: 'MyContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodMyVectorIsEmpty .
		self newMethodMyVectorInsertElement_ .
		self newMethodMyVectorSize .
		self newMethodMyVectorInitialize .
		self newMethodMyVectorAsArray .
		self newMethodMyVectorAt_ .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - classes' }
ContainersProjectFixture >> newClassTContainerTests [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'TContainerTests';
		isTrait: true;
		isExtension: false;
		yourself.

	aClass methods: {
		self newMethodTContainerTestsTestIsEmpty .
		self newMethodTContainerTestsTestAdd .
		self newMethodTContainerTestsTestAt .
		self newMethodTContainerTestsTestSize .
		self newMethodTContainerTestsTestSizeOfEmpty .
		self newMethodTContainerTestsTestAddAll .
		self newMethodTContainerTestsTestDo .
		self newMethodTContainerTestsTestCollect .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodBaselineOfContainersBaseline_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyContainerAt_ [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyContainerCollect_ [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyContainerDo_ [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyContainerInsertAllElements_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertAllElements:';
		className: 'MyContainer';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertAllElements: aCollection

	aCollection do: [ :each | self insertElement: each ]'.

	method methodCalls: #(do: insertElement:) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyContainerInsertElement_ [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyLinkNextLink_ [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyLinkValue [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyLinkValue_ [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyLinkedListAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyLinkedList';
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

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyLinkedList';
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

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyLinkedList';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	head := MyLink new.
	tail := head.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyLinkedList';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	| link |
	
	link := MyLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.'.

	method methodCalls: #(value: new yourself nextLink:) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyLinkedList';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ head = tail'.

	method methodCalls: #(=) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListSize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyLinkedList';
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

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyLinkedListTestSetUp [
	"This method was generated"
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
ContainersProjectFixture >> newMethodMyVectorAsArray [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'asArray';
		className: 'MyVector';
		protocol: 'converting';
		yourself.

	method sourceCode: 'asArray 

	^ contents asArray'.

	method methodCalls: #(asArray) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyVectorAt_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'at:';
		className: 'MyVector';
		protocol: 'adding';
		yourself.

	method sourceCode: 'at: aNumber

	^ contents at: aNumber'.

	method methodCalls: #(at:) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyVectorInitialize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'initialize';
		className: 'MyVector';
		protocol: 'initialization';
		yourself.

	method sourceCode: 'initialize
	super initialize.
	contents := OrderedCollection new.'.

	method methodCalls: #(initialize new) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyVectorInsertElement_ [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'insertElement:';
		className: 'MyVector';
		protocol: 'adding';
		yourself.

	method sourceCode: 'insertElement: anObject

	contents add: anObject'.

	method methodCalls: #(add:) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyVectorIsEmpty [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'isEmpty';
		className: 'MyVector';
		protocol: 'testing';
		yourself.

	method sourceCode: 'isEmpty

	^ self size = 0'.

	method methodCalls: #(= size) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodMyVectorSize [
	"This method was generated"
	| method |

	method := ClioMethod new
		name: 'size';
		className: 'MyVector';
		protocol: 'accessing';
		yourself.

	method sourceCode: 'size 
	^ contents size'.

	method methodCalls: #(size) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestAdd [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	
	self assert: result asArray equals: #(A B C D E).
	'.

	method methodCalls: #(insertAllElements: collect: asUppercase assert:equals: asArray) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestDo [
	"This method was generated"
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
	
	self assert: string equals: ''abcde''.
	'.

	method methodCalls: #(insertAllElements: do: , assert:equals:) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestIsEmpty [
	"This method was generated"
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

	method methodCalls: #(assert: isEmpty insertElement: deny: isEmpty) asOrderedCollection.

	^ method
]

{ #category : #'new source code - methods' }
ContainersProjectFixture >> newMethodTContainerTestsTestSize [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
	| package |

	package := ClioPackage named: 'BaselineOfContainers'.

	package classes: {
		self newClassBaselineOfContainers .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'new source code - packages' }
ContainersProjectFixture >> newPackageContainers [
	"This method was generated"
	| package |

	package := ClioPackage named: 'Containers'.

	package classes: {
		self newClassMyVector .
		self newClassMyLinkedList .
		self newClassMyContainer .
		self newClassMyLink .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'new source code - packages' }
ContainersProjectFixture >> newPackageContainersTests [
	"This method was generated"
	| package |

	package := ClioPackage named: 'Containers-Tests'.

	package classes: {
		self newClassMyLinkedListTest .
		self newClassTContainerTests .
		self newClassMyArrayTest .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassBaselineOfContainers [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'BaselineOfContainers';
		superclassName: 'BaselineOf';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodBaselineOfContainersBaseline_ .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTArray [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTArray';
		superclassName: 'CTContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTArrayAsArray .
		self oldMethodCTArrayAdd_ .
		self oldMethodCTArrayAt_ .
		self oldMethodCTArrayRemove_ .
		self oldMethodCTArrayInitialize .
		self oldMethodCTArraySize .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTArrayTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTArrayTest';
		superclassName: 'TestCase';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTArrayTestSetUp .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTContainer [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTContainer';
		superclassName: 'Object';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTContainerAddAll_ .
		self oldMethodCTContainerAdd_ .
		self oldMethodCTContainerAt_ .
		self oldMethodCTContainerRemove_ .
		self oldMethodCTContainerSize .
		self oldMethodCTContainerIsEmpty .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLink [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLink';
		superclassName: 'Object';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTLinkNextLink_ .
		self oldMethodCTLinkValue .
		self oldMethodCTLinkValue_ .
		self oldMethodCTLinkNextLink .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLinkedList [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLinkedList';
		superclassName: 'CTContainer';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTLinkedListRemove_ .
		self oldMethodCTLinkedListAsArray .
		self oldMethodCTLinkedListInitialize .
		self oldMethodCTLinkedListAt_ .
		self oldMethodCTLinkedListSize .
		self oldMethodCTLinkedListAdd_ .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassCTLinkedListTest [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'CTLinkedListTest';
		superclassName: 'TestCase';
		isTrait: false;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodCTLinkedListTestSetUp .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - classes' }
ContainersProjectFixture >> oldClassTContainerTests [
	"This method was generated"
	| aClass |

	aClass := ClioClass new
		name: 'TContainerTests';
		isTrait: true;
		isExtension: false;
		yourself.

	aClass methods: {
		self oldMethodTContainerTestsTestRemove .
		self oldMethodTContainerTestsTestSize .
		self oldMethodTContainerTestsTestAt .
		self oldMethodTContainerTestsTestAdd .
		self oldMethodTContainerTestsTestSizeOfEmpty .
		self oldMethodTContainerTestsTestAddAll .
		self oldMethodTContainerTestsTestIsEmpty .
	} asSet.

	aClass methods do: [ :method | method methodClass: aClass ].
	^ aClass
]

{ #category : #'old source code - methods' }
ContainersProjectFixture >> oldMethodBaselineOfContainersBaseline_ [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTArrayAdd_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTArrayAt_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTArrayRemove_ [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTContainerAddAll_ [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTContainerAdd_ [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTContainerAt_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTContainerRemove_ [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkNextLink_ [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkValue [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkValue_ [
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkedListAdd_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkedListAt_ [
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodCTLinkedListRemove_ [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
ContainersProjectFixture >> oldMethodTContainerTestsTestAdd [
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
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
	"This method was generated"
	| package |

	package := ClioPackage named: 'BaselineOfContainers'.

	package classes: {
		self oldClassBaselineOfContainers .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'old source code - packages' }
ContainersProjectFixture >> oldPackageContainers [
	"This method was generated"
	| package |

	package := ClioPackage named: 'Containers'.

	package classes: {
		self oldClassCTLinkedList .
		self oldClassCTArray .
		self oldClassCTContainer .
		self oldClassCTLink .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]

{ #category : #'old source code - packages' }
ContainersProjectFixture >> oldPackageContainersTests [
	"This method was generated"
	| package |

	package := ClioPackage named: 'Containers-Tests'.

	package classes: {
		self oldClassTContainerTests .
		self oldClassCTArrayTest .
		self oldClassCTLinkedListTest .
	} asSet.

	package classes do: [ :aClass | aClass package: package ].
	^ package
]
