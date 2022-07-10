accessing
colorFor: aFile 
	aFile isDirectory ifTrue: [ ^ Color orange ].
	"aFile is_a file"
	aFile extension = 'zip' ifTrue: [ ^ Color red ]. 
	^ Color gray