Class {
	#name : #FamixPythonGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'package',
		'containerEntity',
		'class',
		'type',
		'attribute',
		'method',
		'parameter',
		'primitiveType',
		'reference'
	],
	#category : #'Famix-Python-Generator'
}

{ #category : #accessing }
FamixPythonGenerator class >> packageName [

	^ #'Famix-Python-Entities'
]

{ #category : #accessing }
FamixPythonGenerator class >> prefix [

	^ #FamixPython
]

{ #category : #definition }
FamixPythonGenerator >> defineClasses [
	super defineClasses.
	attribute := builder newClassNamed: #Attribute.
	class := builder newClassNamed: #Class.
	containerEntity := builder newAbstractClassNamed: #ContainerEntity.
	method := builder newClassNamed: #Method.
	package := builder newClassNamed: #Package.
	parameter := builder newClassNamed: #Parameter.
	primitiveType := builder newClassNamed: #PrimitiveType.
	reference := builder newClassNamed: #Reference.
	type := builder newClassNamed: #Type
]

{ #category : #definition }
FamixPythonGenerator >> defineHierarchy [
	super defineHierarchy.
	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TInvocationsReceiver.
	attribute --|> #TWithComments.

	class --|> type.
	class --|> #TClass.
	class --|> #TWithImports.
	class --|> #TImportable.

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.

	method --|> containerEntity.
	method --|> #TMethod.
	method --|> #TWithComments.
	method --|> #TImportable.

	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> sourcedEntity.

	package --|> containerEntity.
	package --|> #TPackage.
	package --|> #TPackageable.
	package --|> #TWithComments.
	package --|> #TImportable.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TWithComments.

	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.

	reference --|> #TReference.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithMethods
]
