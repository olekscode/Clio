Class {
	#name : #BaselineOfClio,
	#superclass : #BaselineOf,
	#category : #BaselineOfClio
}

{ #category : #baselines }
BaselineOfClio >> baseline: spec [ 
	<baseline>
	spec for: #common do: [	
		"Packages"
		spec 
			package: 'Clio';
			package: 'Clio-Tests' with: [ spec requires: #('Clio') ] ]
]
