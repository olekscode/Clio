Extension { #name : #MCMethodDefinition }

{ #category : #'*Clio' }
MCMethodDefinition >> hasSameSignatureAs: aMethodDefinition [
	^ aMethodDefinition className = className and: [ 
		aMethodDefinition selector = selector ]
]

{ #category : #'*Clio' }
MCMethodDefinition >> hasSameSourceCodeAs: aMethodDefinition [
	^ aMethodDefinition source withInternalLineEndings = source withInternalLineEndings
]

{ #category : #'*Clio' }
MCMethodDefinition >> signature [
	^ className, '>>', selector
]
