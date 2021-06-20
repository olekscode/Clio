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
			baseline: 'VisibilityDeductor'
			with: [ spec repository: 'github://olekscode/VisibilityDeductor/src' ].
			
		"Packages"
		spec 
			package: 'Clio' with: [ spec requires: #(PharoDeprecationsCollector VisibilityDeductor) ];
			package: 'Clio-Tests' with: [ spec requires: #(Clio) ] ]
]
