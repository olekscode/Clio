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
			baseline: 'DeprecationVisitor'
			with: [ spec repository: 'github://olekscode/DeprecationVisitor/src' ].
			
		"Packages"
		spec 
			package: 'Clio' with: [ spec requires: #(DeprecationVisitor) ];
			package: 'Clio-Tests' with: [ spec requires: #(#Clio) ] ]
]
