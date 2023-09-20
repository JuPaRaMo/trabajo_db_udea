SELECT * FROM  Pacientes P
		INNER JOIN HistoriasClinicas HC ON HC.IdPaciente = P.IdPaciente
		INNER JOIN Antecedentes ANT ON ANT.IdAntecedente = HC.IdAntecedente
		INNER JOIN AntecedentesObstetricos AO ON ANT.IdAntecedenteObstetrico = AO.IdAntecedentesObstetricos	
		INNER JOIN FracasosMetodosAnticonceptivos FMA ON FMA.IdFracasoMetodoAnticonceptivo = AO.IdFracasoMetodoAnticonceptivo
		WHERE UsoMetodoAnticonceptivo =  0