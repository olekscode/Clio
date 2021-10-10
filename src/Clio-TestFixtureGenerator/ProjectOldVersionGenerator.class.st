Class {
	#name : #ProjectOldVersionGenerator,
	#superclass : #ProjectVersionGenerator,
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #accessing }
ProjectOldVersionGenerator >> classes [

	^ realData oldClasses
]

{ #category : #accessing }
ProjectOldVersionGenerator >> methods [

	^ realData oldImplementedMethods
]

{ #category : #accessing }
ProjectOldVersionGenerator >> packages [

	^ realData oldPackages
]

{ #category : #accessing }
ProjectOldVersionGenerator >> prefix [ 

	^ 'old'
]
