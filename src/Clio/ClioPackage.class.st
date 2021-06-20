Class {
	#name : #ClioPackage,
	#superclass : #Object,
	#instVars : [
		'name',
		'classes'
	],
	#category : #Clio
}

{ #category : #accessing }
ClioPackage >> classes [

	^ classes
]

{ #category : #initialization }
ClioPackage >> initialize [
	super initialize.
	classes := OrderedCollection new.
]

{ #category : #testing }
ClioPackage >> isPrivate [
	^ VisibilityDeductor new isPackagePrivate: self
]

{ #category : #testing }
ClioPackage >> isPublic [
	^ VisibilityDeductor new isPackagePublic: self
]

{ #category : #accessing }
ClioPackage >> name [

	^ name
]

{ #category : #accessing }
ClioPackage >> name: anObject [

	name := anObject
]

{ #category : #printing }
ClioPackage >> printOn: aStream [
	aStream nextPutAll: name.
]
