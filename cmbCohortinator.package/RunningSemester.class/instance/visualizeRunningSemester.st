accessing
visualizeRunningSemester

	| canvas |
	canvas := RSCanvas new.

	path allChildren do: [ :aFile | 
		| ellipse |
		ellipse := RSEllipse model: aFile.
		ellipse color: (self colorFor: aFile).
		canvas add: ellipse ].


	RSNormalizer size
		shapes: canvas nodes;
		from: 10;
		to: 30;
		normalize: [ :aFile | aFile size sqrt ].
		
	RSLineBuilder line 
		shapes: canvas nodes;
		connectFrom: #parent .

	RSHorizontalDominanceTreeLayout on: canvas nodes.
	canvas
		@ RSCanvasController.

	^ canvas