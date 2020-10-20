Class {
	#name : #ClioMoment,
	#superclass : #Object,
	#instVars : [
		'repository',
		'packages',
		'commit',
		'classes',
		'methods'
	],
	#category : #Clio
}

{ #category : #'as yet unclassified' }
ClioMoment >> collectDefinitions [
	| definitions |
	
	definitions := (packages flatCollect: [ :packageName |
		(commit snapshotFor: packageName) definitions ]) asSet.
	
	classes := definitions select: [ :each | each isClassDefinition ].
	methods := definitions select: [ :each | each isMethodDefinition ].
]

{ #category : #accessing }
ClioMoment >> commitSha: aCommitSha [
	commit := repository revparse: aCommitSha.
	packages := commit packages.
]

{ #category : #'as yet unclassified' }
ClioMoment >> methods [
	^ methods
]

{ #category : #accessing }
ClioMoment >> packages: anObject [
	packages := anObject
]

{ #category : #accessing }
ClioMoment >> repository: anObject [
	repository := anObject
]
