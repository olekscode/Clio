Class {
	#name : #ClioMoment,
	#superclass : #Object,
	#instVars : [
		'repository',
		'packages',
		'commit',
		'methodDictionary'
	],
	#category : #'Clio-Controllers'
}

{ #category : #'as yet unclassified' }
ClioMoment >> collectDefinitions [
	| definitions classDefinitions method |
	
	methodDictionary := Dictionary new.
	
	packages do: [ :package |
		definitions := (commit snapshotFor: package) definitions asSet.
	
		classDefinitions := definitions
			select: [ :definition | definition isClassDefinition ].
	
		definitions
			select: [ :definition | definition isMethodDefinition ]
			thenDo: [ :methodDefinition |
				method := methodDefinition asClioMethod.
				method packageName: package name.
				methodDictionary at: method signature put: method ] ].
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
