Class {
	#name : #ProjectNewVersionGenerator,
	#superclass : #ProjectVersionGenerator,
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #accessing }
ProjectNewVersionGenerator >> classes [

	^ realData newClasses
]

{ #category : #accessing }
ProjectNewVersionGenerator >> methods [

	^ realData newImplementedMethods
]

{ #category : #accessing }
ProjectNewVersionGenerator >> packages [

	^ realData newPackages
]

{ #category : #accessing }
ProjectNewVersionGenerator >> prefix [ 

	^ 'new'
]
