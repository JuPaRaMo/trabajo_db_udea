CREATE OR ALTER PROCEDURE formulario_historiaclinica
(@IdIdentificacion INT,
@Tabla NVARCHAR(100) = '')
AS
BEGIN TRY
	IF @Tabla = 'HC'
	BEGIN
		SELECT * FROM  HistoriasClinicas HC
		INNER JOIN Pacientes P ON P.IdPaciente = HC.IdPaciente
		WHERE IdIdentificación = @IdIdentificacion
	END
	
	IF @Tabla = 'AFPO'
	BEGIN
		SELECT * FROM  Pacientes P
		INNER JOIN HistoriasClinicas HC ON HC.IdPaciente = P.IdPaciente
		INNER JOIN Antecedentes ANT ON ANT.IdAntecedente = HC.IdAntecedente
		INNER JOIN AntecedentesFamiliares AF ON ANT.IdAntecedenteFamiliar = AF.IdAntecedenteFamiliar
		INNER JOIN AntecedentesPersonales AP ON ANT.IdAntecedentePersonal = AP.IdAntecedentePersonal
		INNER JOIN AntecedentesObstetricos AO ON ANT.IdAntecedenteObstetrico = AO.IdAntecedentesObstetricos		
		WHERE IdIdentificación =  @IdIdentificacion
	END

	IF @Tabla = 'GA'
	BEGIN
		SELECT * FROM  GestacionActualPacientes GAP
		INNER JOIN Pacientes P ON P.IdPaciente = GAP.IdPaciente
		WHERE IdIdentificación = @IdIdentificacion
	END

	IF @Tabla = 'EF'
	BEGIN
		SELECT * FROM  Pacientes P
		INNER JOIN HistoriasClinicas HC ON HC.IdPaciente = P.IdPaciente
		INNER JOIN Antecedentes ANT ON ANT.IdAntecedente = HC.IdAntecedente
		INNER JOIN AntecedentesPersonales AP ON ANT.IdAntecedentePersonal = AP.IdAntecedentePersonal
		INNER JOIN Enfermedades EF ON AP.IdEnfermedad = EF.IdEnfermedad 
		WHERE IdIdentificación = @IdIdentificacion
	END

END TRY  
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH