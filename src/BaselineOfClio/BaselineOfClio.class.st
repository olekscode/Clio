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
			baseline: 'PharoDeprecationsCollector'
			with: [ spec repository: 'github://olekscode/PharoDeprecationsCollector/src' ].
			
		"Packages"
		spec 
			package: 'Clio' with: [ spec requires: #('PharoDeprecationsCollector') ];
			package: 'Clio-Tests' with: [ spec requires: #('Clio') ] ]
]
