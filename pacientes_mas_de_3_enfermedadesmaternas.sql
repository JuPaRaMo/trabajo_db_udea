SELECT * FROM  Pacientes P
		INNER JOIN HistoriasClinicas HC ON HC.IdPaciente = P.IdPaciente
		INNER JOIN Antecedentes ANT ON ANT.IdAntecedente = HC.IdAntecedente
		INNER JOIN AntecedentesPersonales AP ON ANT.IdAntecedentePersonal = AP.IdAntecedentePersonal
		INNER JOIN Enfermedades EF ON AP.IdEnfermedad = EF.IdEnfermedad 
		WHERE IdPatologiasMartenas >= 3
	