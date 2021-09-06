Class {
	#name : #ClioRepositoryLoader,
	#superclass : #Object,
	#category : #'Clio-Controllers'
}

{ #category : #'as yet unclassified' }
ClioRepositoryLoader class >> cloneRepositoryNamed: aRepositoryName owner: anOwnerName [

	| location remoteUrl repository |

	location := FileLocator imageDirectory / 'iceberg' / anOwnerName / aRepositoryName.
	remoteUrl := 'git@github.com:{1}/{2}.git' format: { anOwnerName . aRepositoryName }.

	UIManager default 
		informUser: ('Cloning repository {1}' format: { remoteUrl })
		during: [ 
			repository := IceRepositoryCreator new 
				remote: (IceGitRemote url: remoteUrl);
				location: location;
				createRepository ].
		
	repository register.
	^ repository
]

{ #category : #'as yet unclassified' }
ClioRepositoryLoader class >> detectOrCloneRepositoryNamed: aRepositoryName owner: anOwnerName [

	^ self detectRepositoryNamed: aRepositoryName owner: anOwnerName ifNone: [ 
		self cloneRepositoryNamed: aRepositoryName owner: anOwnerName ]. 
]

{ #category : #'accessing - repository' }
ClioRepositoryLoader class >> detectRepositoryNamed: aRepositoryName owner: anOwnerName [

	^ self
		detectRepositoryNamed: aRepositoryName
		owner: anOwnerName
		ifNone: [ self error: 'Repository not found' ].
]

{ #category : #'accessing - repository' }
ClioRepositoryLoader class >> detectRepositoryNamed: aRepositoryName owner: anOwnerName ifNone: aBlock [

	^ IceRepository registry
		detect: [ :repo |
			repo isValid and: [
				repo name = aRepositoryName and: [
					repo origin owner = anOwnerName ] ] ]
		ifNone: aBlock
]

{ #category : #'API - loading' }
ClioRepositoryLoader class >> installBaseline: aBaselineName forRepository: anIceRepository onCommit: aCommitId [
	"Install a specified baseline of the project on a given commit"
	
	| repositoryUrl iceCommit |
	
	repositoryUrl := 'github://{1}/{2}:{3}/{4}' format: {
		anIceRepository origin owner .
		anIceRepository name .
		aCommitId .
		anIceRepository subdirectory }.
		
	iceCommit := anIceRepository revparse: aCommitId.
		
	iceCommit packages do: [ :package |
		(package name asPackageIfAbsent: [ nil ])
			ifNotNil: [ :p |p  removeFromSystem ] ].
		
	anIceRepository unload.
	
	Metacello new
		baseline: aBaselineName;
		repository: repositoryUrl;
		onConflict: [ :ex | ex useIncoming ];
		onUpgrade: [ :ex | ex useIncoming ];
		onDowngrade: [ :ex | ex useIncoming ];
		ignoreImage;
		onWarningLog;
		load.
]
