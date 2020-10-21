Class {
	#name : #ClioMoment,
	#superclass : #Object,
	#instVars : [
		'repository',
		'packages',
		'commit',
		'methodDictionary'
	],
	#category : #Clio
}

{ #category : #'as yet unclassified' }
ClioMoment >> collectDefinitions [
	| definitions methods |
	
	definitions := (packages flatCollect: [ :packageName |
		(commit snapshotFor: packageName) definitions ]) asSet.
	
	methods := definitions
		select: [ :definition | definition isMethodDefinition ]
		thenCollect: [ :methodDefinition | methodDefinition asClioMethod ].
	
	methodDictionary := Dictionary newFromAssociations:
		(methods collect: [ :method | method signature -> method ]).
]

{ #category : #accessing }
ClioMoment >> commitSha: aCommitSha [
	commit := repository revparse: aCommitSha.
	packages := commit packages.
]

{ #category : #'as yet unclassified' }
ClioMoment >> methodSignatures [
	^ methodDictionary keys asSet
]

{ #category : #'as yet unclassified' }
ClioMoment >> methodWithSignature: aSignature [
	^ methodDictionary at: aSignature
]

{ #category : #'as yet unclassified' }
ClioMoment >> methods [
	^ methodDictionary values asSet
]

{ #category : #'as yet unclassified' }
ClioMoment >> methodsWithSignatures: aCollectionOfSignatures [
	^ aCollectionOfSignatures collect: [ :signature |
		self methodWithSignature: signature ]
]

{ #category : #accessing }
ClioMoment >> packages: anObject [
	packages := anObject
]

{ #category : #accessing }
ClioMoment >> repository: anObject [
	repository := anObject
]
