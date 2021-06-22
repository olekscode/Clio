Class {
	#name : #BaselineOfClio,
	#superclass : #BaselineOf,
	#category : #BaselineOfClio
}

{ #category : #baselines }
BaselineOfClio >> baseline: spec [ 
	<baseline>
	spec for: #common do: [	
		"External dependencies"
		spec
			baseline: 'TransformationRule'
			with: [ spec repository: 'github://olekscode/TransformationRule/src' ].
			
		"Packages"
		spec 
			package: 'Clio' with: [ spec requires: #(TransformationRule) ];
			package: 'Clio-Tests' with: [ spec requires: #(#Clio) ] ]
]
