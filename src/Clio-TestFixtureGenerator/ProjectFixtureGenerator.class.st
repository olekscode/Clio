Class {
	#name : #ProjectFixtureGenerator,
	#superclass : #Object,
	#instVars : [
		'realData',
		'destinationClass'
	],
	#category : #'Clio-TestFixtureGenerator'
}

{ #category : #examples }
ProjectFixtureGenerator class >> generateContainers [
	<example>
	| collector data generator |
	
	collector := ClioDataCollector new
		repositoryName: 'FakeProject';
		repositoryOwner: 'olekscode';
		baselineName: 'Containers';
		oldVersion: 'v1.0';
		newVersion: 'v2.0';
		yourself.
		
	collector
		cloneRepository;
		loadPackages;
		extractCommits.
	
	data := collector data.

	generator := self new
		destinationClass: ContainersProjectFixture;
		realData: data;
		yourself.
	
	generator generate.

]

{ #category : #accessing }
ProjectFixtureGenerator >> destinationClass [

	^ destinationClass
]

{ #category : #accessing }
ProjectFixtureGenerator >> destinationClass: anObject [

	destinationClass := anObject
]

{ #category : #'as yet unclassified' }
ProjectFixtureGenerator >> generate [

	self generateMethodsDefiningOldVersion.
	self generateMethodsDefiningNewVersion.
	self generateMethodsDefiningCommitHistory.
]

{ #category : #'as yet unclassified' }
ProjectFixtureGenerator >> generateMethodsDefiningCommitHistory [

	| generator |
	
	generator := ProjectCommitHistoryGenerator new
		realData: realData;
		destinationClass: destinationClass;
		yourself.
		
	generator generate.
]

{ #category : #'as yet unclassified' }
ProjectFixtureGenerator >> generateMethodsDefiningNewVersion [

	| generator |
	
	generator := ProjectNewVersionGenerator new
		realData: realData;
		destinationClass: destinationClass;
		yourself.
		
	generator generate.
]

{ #category : #'as yet unclassified' }
ProjectFixtureGenerator >> generateMethodsDefiningOldVersion [

	| generator |
	
	generator := ProjectOldVersionGenerator new
		realData: realData;
		destinationClass: destinationClass;
		yourself.
		
	generator generate.
]

{ #category : #accessing }
ProjectFixtureGenerator >> realData [

	^ realData
]

{ #category : #accessing }
ProjectFixtureGenerator >> realData: anObject [

	realData := anObject
]
