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
ClioTest >> testOldMethods [
	self assert: clio oldMethods equals: #().
]
