Extension { #name : #DeprecationModel }

{ #category : #'*Clio' }
DeprecationModel >> asJsonDictionary [
	
	^ { 
		'message' -> message asString .
		'version' -> version .
		'date' -> (date ifNotNil: [ date asString ]) .
		'transformationRule' -> (transformationRule ifNotNil: [ transformationRule asString ]) .
		'condition' -> condition
	} asDictionary.
]

{ #category : #'*Clio' }
DeprecationModel class >> fromJsonDictionary: aDictionary [

	| deprecation transformationRule |
	
	deprecation := self new
		message: (aDictionary at: 'message');
		version: (aDictionary at: 'version');
		date: ((aDictionary at: 'date') ifNotNil: [ :str | str asDate ]);
		condition: (aDictionary at: 'condition');
		yourself.
		
	transformationRule := aDictionary at: 'transformationRule'.
	
	transformationRule ifNotNil: [ 
		deprecation transformationRule: (TransformationRule fromString: transformationRule) ].
	
	^ deprecation
]
