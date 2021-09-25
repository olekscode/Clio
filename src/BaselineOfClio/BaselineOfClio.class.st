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
			package: 'Clio-Metamodel';
			package: 'Clio' with: [ spec requires: #('DeprecationVisitor' 'Clio-Metamodel') ];
			package: 'Clio-Metamodel-Tests' with: [ spec requires: #('Clio-Metamodel') ];
			package: 'Clio-Tests' with: [ spec requires: #('Clio') ] ].
		
	spec for: #(#'pharo5.x' #'pharo6.x' #'pharo7.x' #'pharo8.x') do: [
		spec package: 'Clio-OldPharo' ].
	
	
]
