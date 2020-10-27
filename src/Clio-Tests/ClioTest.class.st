Class {
	#name : #ClioTest,
	#superclass : #TestCase,
	#instVars : [
		'clio'
	],
	#category : #'Clio-Tests'
}

{ #category : #initialization }
ClioTest >> setUp [
	super setUp.
	
	clio := Clio
		for: 'Clio'
		between: 'a843b6606faea4dabd3183a017e3931ad24c6c16'
		and: 'b5367b8cd9efa07c30a11fb1d8b6a9299e7155db'.
]

{ #category : #tests }
ClioTest >> testNewMethodSelectors [
	| expectedSelectors actualSelectors |
	
	expectedSelectors := Set withAll: #(#transformationRule #className #for: #selector #methods #deletedMethods #hasTransformationRule #pastMoment #hash #printOn: #unchangedMethods #for:between:and: #= #presentMoment #scanAstForDeprecations #methodWithSignature: #newMethods #sourceCode: #repositoryNamed: #methodSignatures #oldMethods #packages: #commitSha: #collectDefinitions #oldCommitSha: #repository: #modifiedMethods #signature #isDeprecated #className: #ast #baseline: #sourceCode #asClioMethod #newCommitSha: #selector: #addedMethods #methodsWithSignatures:).
	
	actualSelectors := clio newMethods collect: [ :method | method selector ].
	
	self assert: actualSelectors equals: expectedSelectors.
]

{ #category : #tests }
ClioTest >> testOldMethodSelectors [
	| expectedSelectors actualSelectors |
	
	expectedSelectors := Set withAll: #(#methods #baseline: #addedMethods #repository: #for: #packages: #commitSha: #repositoryNamed: #newCommitSha: #oldCommitSha: #collectDefinitions #for:between:and:).
	
	actualSelectors := clio oldMethods collect: [ :method | method selector ].
	
	self assert: actualSelectors equals: expectedSelectors.
]
