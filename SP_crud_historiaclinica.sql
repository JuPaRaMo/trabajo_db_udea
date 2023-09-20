CREATE OR ALTER PROCEDURE crud_historiaclinica (
@IdHistoriaClinica INT,
@IdPaciente INT,
@IdAntecedente INT,
@IdGestacionActual INT,
@IdPatologiasMartenas INT,
@Procedimiento NVARCHAR(20) = '')

AS
BEGIN TRY  
	IF @Procedimiento = 'Insert'
		BEGIN
		 INSERT INTO HistoriasClinicas
		 (	IdHistoriaClinica,
			IdPaciente ,
			IdAntecedente,
			IdGestacionActual,
			IdPatologiasMartenas			
			)			
			Values(
			@IdHistoriaClinica,
			@IdPaciente ,
			@IdAntecedente,
			@IdGestacionActual,
			@IdPatologiasMartenas)
		END

	IF @Procedimiento = 'Update'
		BEGIN
			UPDATE HistoriasClinicas 
			 SET IdPaciente =@IdPaciente ,
				 IdAntecedente = @IdAntecedente,
				 IdGestacionActual = @IdGestacionActual,
				 IdPatologiasMartenas = @IdPatologiasMartenas
			 WHERE IdHistoriaClinica = @IdHistoriaClinica
		END

	 ELSE IF @Procedimiento = 'Delete'
        BEGIN
            DELETE FROM HistoriasClinicas
            WHERE  IdHistoriaClinica = @IdHistoriaClinica
		END				
		;
END TRY  
BEGIN CATCH  
      SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH 