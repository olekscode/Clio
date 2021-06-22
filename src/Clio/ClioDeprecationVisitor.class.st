Class {
	#name : #ClioDeprecationVisitor,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'deprecations'
	],
	#category : #'Clio-Visitors'
}

{ #category : #accessing }
ClioDeprecationVisitor >> deprecations [
	^ deprecations
]

{ #category : #accessing }
ClioDeprecationVisitor >> extractTransformationRuleFrom: aNode [
	| antecedent consequent |
	(aNode isMessage and: [ aNode selector = #-> ])
		ifFalse: [ ^ nil ].
		
	antecedent := aNode receiver value.
	consequent := aNode arguments first value.
	
	(antecedent isString and: [ consequent isString ])
		ifFalse: [ ^ nil ].
	
	^ TransformationRule
		antecedent: 	antecedent
		consequent: consequent.
]

{ #category : #accessing }
ClioDeprecationVisitor >> initialize [
	super initialize.
	deprecations := OrderedCollection new.
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecated: aMessageNode [
	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecatedOnIn: aMessageNode [
	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
"		date: aMessageNode arguments second evaluate;
		version: aMessageNode arguments third value;"
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecatedOnInTransformWith: aMessageNode [
	| ruleNode |
	ruleNode := aMessageNode arguments fourth.

	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
"		date: aMessageNode arguments second evaluate;
		version: aMessageNode arguments third value;"
		transformationRule: (self extractTransformationRuleFrom: ruleNode);
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecatedOnInTransformWithWhen: aMessageNode [
	| ruleNode |
	ruleNode := aMessageNode arguments fourth.

	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
"		date: aMessageNode arguments second evaluate;
		version: aMessageNode arguments third value;"
		transformationRule: (self extractTransformationRuleFrom: ruleNode);
"		transformationCondition: aMessageNode arguments fifth evaluate;"
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecatedTransformWith: aMessageNode [
	| ruleNode |
	ruleNode := aMessageNode arguments second.

	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
		transformationRule: (self extractTransformationRuleFrom: ruleNode);
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitDeprecatedTransformWithWhen: aMessageNode [
	| ruleNode |
	ruleNode := aMessageNode arguments second.

	deprecations add: (ClioDeprecation new
		message: aMessageNode arguments first value;
		transformationRule: (self extractTransformationRuleFrom: ruleNode);
"		transformationCondition: aMessageNode arguments third evaluate;"
		yourself).
]

{ #category : #accessing }
ClioDeprecationVisitor >> visitMessageNode: aMessageNode [
	| options |
	
	options := { 
		#deprecated: -> [ self visitDeprecated: aMessageNode ] .
		#deprecated:on:in: -> [ self visitDeprecatedOnIn: aMessageNode ] .
		#deprecated:on:in:transformWith: -> [ self visitDeprecatedOnInTransformWith: aMessageNode ] .
		#deprecated:on:in:transformWith:when: -> [ self visitDeprecatedOnInTransformWithWhen: aMessageNode ] .
		#deprecated:transformWith: -> [ self visitDeprecatedTransformWith: aMessageNode ] .
		#deprecated:transformWith:when: -> [ self visitDeprecatedTransformWithWhen: aMessageNode ]
	} asDictionary.
	
	options at: aMessageNode selector
		ifPresent: [ :aBlock | aBlock value ].
		
	super visitMessageNode: aMessageNode.
]
