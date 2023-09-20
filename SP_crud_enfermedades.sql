CREATE OR ALTER PROCEDURE crud_enfermedades (
@IdEnfermedad INT,
@Enfermedades NVARCHAR(50),
@Procedimiento NVARCHAR(20) = '')

AS
BEGIN TRY  
	IF @Procedimiento = 'Insert'
		BEGIN
		 INSERT INTO Enfermedades
		 (	IdEnfermedad,
			Enfermedades		
			)			
			Values(
			@IdEnfermedad,
			@Enfermedades
			)
		END

	IF @Procedimiento = 'Update'
		BEGIN
			UPDATE Enfermedades 
			 SET Enfermedades = @Enfermedades
			 WHERE IdEnfermedad = @IdEnfermedad
		END

	 ELSE IF @Procedimiento = 'Delete'
        BEGIN
            DELETE FROM Enfermedades
            WHERE  IdEnfermedad = @IdEnfermedad
		END				
		;
END TRY  
BEGIN CATCH  
      SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH 