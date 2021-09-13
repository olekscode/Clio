Extension { #name : #BlockClosure }

{ #category : #'*Clio-OldPharo' }
BlockClosure >> onErrorDo: errorHandlerBlock [
	"Evaluate the block represented by the receiver, and normally return it's value.  If an error occurs, the errorHandlerBlock is evaluated, and it's value is instead returned.  The errorHandlerBlock must accept zero or one parameter (the error object)."
	"Examples:
		[1 whatsUpDoc] onErrorDo: [:err | 'huh?'].
		[1 / 0] onErrorDo: [:err |
			ZeroDivide = err class
				ifTrue: [Float infinity]
				ifFalse: [self error: err]]
"

	^ self on: Error do: [:ex | errorHandlerBlock cull: ex]
]
