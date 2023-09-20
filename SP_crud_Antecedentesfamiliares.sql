CREATE OR ALTER PROCEDURE crud_antecedentesfamiliares (
@IdAntecedenteFamiliar INT,
@IdEnfermedad INT,
@Procedimiento NVARCHAR(20) = '')

AS
BEGIN TRY  
	IF @Procedimiento = 'Insert'
		BEGIN
		 INSERT INTO AntecedentesFamiliares
		 (	IdAntecedenteFamiliar,
			IdEnfermedad 			
			)			
			Values(
			@IdAntecedenteFamiliar,
			@IdEnfermedad
			)
		END

	IF @Procedimiento = 'Update'
		BEGIN
			UPDATE AntecedentesFamiliares 
			 SET IdEnfermedad = @IdEnfermedad
			 WHERE IdAntecedenteFamiliar = @IdAntecedenteFamiliar
		END

	 ELSE IF @Procedimiento = 'Delete'
        BEGIN
            DELETE FROM AntecedentesFamiliares
            WHERE  IdAntecedenteFamiliar = @IdAntecedenteFamiliar
		END				
		;
END TRY  
BEGIN CATCH  
      SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH 