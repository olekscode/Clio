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
	#category : #'Clio-Metamodel'
}

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

{ #category : #'instance creation' }
ClioCommit class >> fromJsonDictionary: aDictionary [

	| commit |
	
	commit := self new 
		id: (aDictionary at: 'id');
		author: (aDictionary at: 'author');
		comment: (aDictionary at: 'comment');
		datetime: (aDictionary at: 'datetime') asDateAndTime;
		repositoryName: (aDictionary at: 'repositoryName');
		yourself.
		
	commit addedMethods addAll: ((aDictionary at: 'addedMethods') collect: [ :methodDictionary |
		ClioMethod fromJsonDictionary: methodDictionary ]).
	
	commit removedMethods addAll: ((aDictionary at: 'removedMethods') collect: [ :methodDictionary |
		ClioMethod fromJsonDictionary: methodDictionary ]).
	
	commit modifiedMethods addAll: ((aDictionary at: 'modifiedMethods') collect: [ :methodDictionary |
		ClioModification methodModificationFromDictionary: methodDictionary ]).
	
	commit addedClasses addAll: ((aDictionary at: 'addedClasses') collect: [ :classDictionary |
		ClioClass fromJsonDictionary: classDictionary ]).
	
	commit removedClasses addAll: ((aDictionary at: 'removedClasses') collect: [ :classDictionary |
		ClioClass fromJsonDictionary: classDictionary ]).
	
	commit modifiedClasses addAll: ((aDictionary at: 'modifiedClasses') collect: [ :classDictionary |
		ClioModification classModificationFromDictionary: classDictionary ]).
	
	commit addedPackages addAll: ((aDictionary at: 'addedPackages') collect: [ :packageDictionary |
		ClioPackage fromJsonDictionary: packageDictionary ]).
	
	commit removedPackages addAll: ((aDictionary at: 'removedPackages') collect: [ :packageDictionary |
		ClioPackage fromJsonDictionary: packageDictionary ]).
	
	^ commit
]

{ #category : #comparing }
ClioCommit >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ addedClasses = anObject addedClasses and: [ 
		  addedMethods = anObject addedMethods and: [ 
			  addedPackages = anObject addedPackages and: [ 
				  author = anObject author and: [ 
					  comment = anObject comment and: [ 
						  datetime = anObject datetime and: [ 
							  id = anObject id and: [ 
								  modifiedClasses = anObject modifiedClasses and: [ 
									  modifiedMethods = anObject modifiedMethods and: [ 
										  removedClasses = anObject removedClasses and: [ 
											  removedMethods = anObject removedMethods and: [ 
												  removedPackages = anObject removedPackages and: [ 
													  repositoryName = anObject repositoryName ] ] ] ] ] ] ] ] ] ] ] ]
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
ClioCommit >> asJsonDictionary [
	^ { 
		'id' -> id .
		'author' -> author .
		'comment' -> comment .
		'datetime' -> datetime asString .
		'repositoryName' -> repositoryName .
		'addedMethods' -> (addedMethods collect: [ :method | method asJsonDictionary ]) asArray .
		'removedMethods' -> (removedMethods collect: [ :method | method asJsonDictionary ]) asArray .
		'modifiedMethods' -> (modifiedMethods collect: [ :method | method asJsonDictionary ]) asArray .
		'addedClasses' -> (addedClasses collect: [ :aClass | aClass asJsonDictionary ]) asArray .
		'removedClasses' -> (removedClasses collect: [ :aClass | aClass asJsonDictionary ]) asArray .
		'modifiedClasses' -> (modifiedClasses collect: [ :aClass | aClass asJsonDictionary ]) asArray .
		'addedPackages' -> (addedPackages collect: [ :package | package asJsonDictionary ]) asArray .
		'removedPackages' -> (removedPackages collect: [ :package | package asJsonDictionary ]) asArray .
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

{ #category : #testing }
ClioCommit >> hadEffectOnClasses [
	"Answer true if commit has added, removed, or modified any classes"
	
	addedClasses ifNotEmpty: [ ^ true ].
	removedClasses ifNotEmpty: [ ^ true ].
	modifiedClasses ifNotEmpty: [ ^ true ].
	
	^ false
]

{ #category : #testing }
ClioCommit >> hadEffectOnMethods [
	"Answer true if commit has added, removed, or modified any methods"
	
	addedMethods ifNotEmpty: [ ^ true ].
	removedMethods ifNotEmpty: [ ^ true ].
	modifiedMethods ifNotEmpty: [ ^ true ].
	
	^ false
]

{ #category : #testing }
ClioCommit >> hadEffectOnPackages [
	"Answer true if commit has added or removed any packages"
	
	addedPackages ifNotEmpty: [ ^ true ].
	removedPackages ifNotEmpty: [ ^ true ].
	
	^ false
]

{ #category : #testing }
ClioCommit >> hadEffectOnSourceCode [
	"Answer true if commit has added, removed, or modified any packages, classes, or methods"
	
	^ self hadEffectOnPackages or: [
		self hadEffectOnClasses or: [
			self hadEffectOnMethods ] ]
]

{ #category : #comparing }
ClioCommit >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ addedClasses hash bitXor: (addedMethods hash bitXor:
			   (addedPackages hash bitXor: (author hash bitXor:
					     (comment hash bitXor:
						      (datetime hash bitXor: (id hash bitXor:
								        (modifiedClasses hash bitXor:
									         (modifiedMethods hash bitXor:
										          (removedClasses hash bitXor:
											           (removedMethods hash bitXor:
												            (removedPackages hash bitXor:
													             repositoryName hash)))))))))))
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
	
	addedPackages := Set new.
	removedPackages := Set new.
	
	addedClasses := Set new.
	removedClasses := Set new.
	modifiedClasses := Set new.
	
	addedMethods := Set new.
	removedMethods := Set new.
	modifiedMethods := Set new.
]

{ #category : #'API - loading' }
ClioCommit >> loadBaseline: aBaselineName [
	"Load a specified baseline of the project on this commit"
	
	| repository repositoryUrl |
	
	repository := self repository.
	
	repositoryUrl := 'github://{1}/{2}:{3}/{4}' format: {
		repository origin owner .
		repository name .
		self id .
		repository subdirectory }.
		
	self iceCommit packages do: [ :package |
		(package name asPackageIfAbsent: [ nil ])
			ifNotNil: [ :p |p  removeFromSystem ] ].
		
	repository unload.
	
	Metacello new
		baseline: aBaselineName;
		repository: repositoryUrl;
		onConflict: [ :ex | ex useIncoming ];
		onUpgrade: [ :ex | ex useIncoming ];
		onDowngrade: [ :ex | ex useIncoming ];
		ignoreImage;
		onWarningLog;
		load.
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

{ #category : #accessing }
ClioCommit >> snapshot [
	^ ClioDataCollector new loadPackagesAtCommit: self
]
