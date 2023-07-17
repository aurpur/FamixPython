Class {
	#name : #BaselineOfFamixPython,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixPython
}

{ #category : #baselines }
BaselineOfFamixPython >> baseline: spec [

	<baseline>
	spec for: #pharo do: [ 
		spec package: 'Famix-Python-Entities'.
		spec package: 'Famix-Python-Generator' ]
]
