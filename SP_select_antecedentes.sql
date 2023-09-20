CREATE OR ALTER PROCEDURE formulario_historiaclinica
(@IdIdentificacion INT,
@Tabla NVARCHAR(100) = '')
AS
BEGIN TRY
END TRY  
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH


	END