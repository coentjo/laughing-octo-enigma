tests
testExecutionOrder

	| semEx1 semEx2 |
	semEx1 := SemesterExecution newNamed: '202202'.
	semEx2 := SemesterExecution newNamed: '202108'.
	self assert: (semEx2 isBefore: semEx1 )
	 description: 'Semester execution 202108 should be before 202202'