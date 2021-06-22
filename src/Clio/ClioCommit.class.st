Class {
	#name : #ClioCommit,
	#superclass : #Object,
	#instVars : [
		'repositoryName',
		'id',
		'datetime',
		'author',
		'comment',
		'addedMethods',
		'removedMethods',
		'modifiedMethods',
		'addedClasses',
		'removedClasses',
		'modifiedClasses',
		'addedPackages',
		'removedPackages'
	],
	#category : #'Clio-Models'
}

{ #category : #'instance creation' }
ClioCommit class >> fromDictionary: aDictionary [

	| commit |
	
	commit := self new 
		id: (aDictionary at: 'id');
		author: (aDictionary at: 'author');
		comment: (aDictionary at: 'comment');
		datetime: (aDictionary at: 'datetime') asDateAndTime;
		repositoryName: (aDictionary at: 'repositoryName');
		yourself.
		
	commit addedMethods addAll: ((aDictionary at: 'addedMethods') collect: [ :methodDictionary |
		ClioMethod fromDictionary: methodDictionary ]).
	
	commit removedMethods addAll: ((aDictionary at: 'removedMethods') collect: [ :methodDictionary |
		ClioMethod fromDictionary: methodDictionary ]).
	
	commit modifiedMethods addAll: ((aDictionary at: 'modifiedMethods') collect: [ :methodDictionary |
		ClioModification methodModificationFromDictionary: methodDictionary ]).
	
	commit addedClasses addAll: ((aDictionary at: 'addedClasses') collect: [ :classDictionary |
		ClioClass fromDictionary: classDictionary ]).
	
	commit removedClasses addAll: ((aDictionary at: 'removedClasses') collect: [ :classDictionary |
		ClioClass fromDictionary: classDictionary ]).
	
	commit modifiedClasses addAll: ((aDictionary at: 'modifiedClasses') collect: [ :classDictionary |
		ClioModification classModificationFromDictionary: classDictionary ]).
	
	commit addedPackages addAll: ((aDictionary at: 'addedPackages') collect: [ :packageDictionary |
		ClioPackage fromDictionary: packageDictionary ]).
	
	commit removedPackages addAll: ((aDictionary at: 'removedPackages') collect: [ :packageDictionary |
		ClioPackage fromDictionary: packageDictionary ]).
	
	^ commit
]

{ #category : #'instance creation' }
ClioCommit class >> fromIceGitCommit: anIceGitCommit [
	^ self new
		id: anIceGitCommit id;
		author: anIceGitCommit author;
		datetime: anIceGitCommit datetime;
		comment: anIceGitCommit comment;
		repositoryName: anIceGitCommit repository name;
		yourself.
]

{ #category : #accessing }
ClioCommit >> addedClasses [

	^ addedClasses
]

{ #category : #accessing }
ClioCommit >> addedClasses: anObject [

	addedClasses := anObject
]

{ #category : #accessing }
ClioCommit >> addedMethods [

	^ addedMethods
]

{ #category : #accessing }
ClioCommit >> addedMethods: anObject [

	addedMethods := anObject
]

{ #category : #accessing }
ClioCommit >> addedPackages [

	^ addedPackages
]

{ #category : #accessing }
ClioCommit >> addedPackages: anObject [

	addedPackages := anObject
]

{ #category : #converting }
ClioCommit >> asDictionary [
	^ { 
		'id' -> id .
		'author' -> author .
		'comment' -> comment .
		'datetime' -> datetime asString .
		'repositoryName' -> repositoryName .
		'addedMethods' -> (addedMethods collect: [ :method | method asDictionary ]) asArray .
		'removedMethods' -> (removedMethods collect: [ :method | method asDictionary ]) asArray .
		'modifiedMethods' -> (modifiedMethods collect: [ :method | method asDictionary ]) asArray .
		'addedClasses' -> (addedClasses collect: [ :method | method asDictionary ]) asArray .
		'removedClasses' -> (removedClasses collect: [ :method | method asDictionary ]) asArray .
		'modifiedClasses' -> (modifiedClasses collect: [ :method | method asDictionary ]) asArray .
		'addedPackages' -> (addedPackages collect: [ :method | method asDictionary ]) asArray .
		'removedPackages' -> (removedPackages collect: [ :method | method asDictionary ]) asArray .
	} asDictionary.
]

{ #category : #accessing }
ClioCommit >> author [

	^ author
]

{ #category : #accessing }
ClioCommit >> author: anObject [

	author := anObject
]

{ #category : #accessing }
ClioCommit >> comment [

	^ comment
]

{ #category : #accessing }
ClioCommit >> comment: anObject [

	comment := anObject
]

{ #category : #accessing }
ClioCommit >> datetime [

	^ datetime
]

{ #category : #accessing }
ClioCommit >> datetime: anObject [

	datetime := anObject
]

{ #category : #accessing }
ClioCommit >> iceCommit [
	^ self repository revparse: id
]

{ #category : #accessing }
ClioCommit >> id [

	^ id
]

{ #category : #accessing }
ClioCommit >> id: anObject [

	id := anObject
]

{ #category : #initialization }
ClioCommit >> initialize [
	super initialize.
	
	addedPackages := OrderedCollection new.
	removedPackages := OrderedCollection new.
	
	addedClasses := OrderedCollection new.
	removedClasses := OrderedCollection new.
	modifiedClasses := OrderedCollection new.
	
	addedMethods := OrderedCollection new.
	removedMethods := OrderedCollection new.
	modifiedMethods := OrderedCollection new.
]

{ #category : #accessing }
ClioCommit >> modifiedClasses [

	^ modifiedClasses
]

{ #category : #accessing }
ClioCommit >> modifiedClasses: anObject [

	modifiedClasses := anObject
]

{ #category : #accessing }
ClioCommit >> modifiedMethods [

	^ modifiedMethods
]

{ #category : #accessing }
ClioCommit >> modifiedMethods: anObject [

	modifiedMethods := anObject
]

{ #category : #printing }
ClioCommit >> printOn: aStream [
	
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: id;
		nextPut: $)
]

{ #category : #accessing }
ClioCommit >> removedClasses [

	^ removedClasses
]

{ #category : #accessing }
ClioCommit >> removedClasses: anObject [

	removedClasses := anObject
]

{ #category : #accessing }
ClioCommit >> removedMethods [

	^ removedMethods
]

{ #category : #accessing }
ClioCommit >> removedMethods: anObject [

	removedMethods := anObject
]

{ #category : #accessing }
ClioCommit >> removedPackages [

	^ removedPackages
]

{ #category : #accessing }
ClioCommit >> removedPackages: anObject [

	removedPackages := anObject
]

{ #category : #accessing }
ClioCommit >> repository [
	^ IceRepository registry detect: [ :repo |
		repo isValid and: [ repo name = repositoryName ] ]
]

{ #category : #accessing }
ClioCommit >> repositoryName [

	^ repositoryName
]

{ #category : #accessing }
ClioCommit >> repositoryName: anObject [

	repositoryName := anObject
]
