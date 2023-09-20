CREATE OR ALTER PROCEDURE crud_gestacionactual (
@IdGestacionActual INT,
@IdPaciente INT,
@IdIMC INT,
@IdEG INT,
@IdExNormal INT,
@IdCervix INT,
@IdEstiloVida INT,
@IdAntitetanica INT,
@IdTGestacion INT,
@IdGrupoRH INT,
@IdHemoglobina INT,
@IdToxoplasmosis INT,
@IdFolatos INT,
@IdSifilis INT,
@IdChagas INT,
@IdPaludismo INT,
@IdGlucemiaAyunas INT,
@IdEstreptococo INT,
@IdPreparacionParto INT,
@IdConsejeriaLactancia INT,
@IdBacteriuria INT,
@IdVIH INT,
@Procedimiento NVARCHAR(20) = '')

AS
BEGIN TRY  
	IF @Procedimiento = 'Insert'
		BEGIN
		 INSERT INTO GestacionActualPacientes
		 (	IdGestacionActual,
			IdPaciente ,
			IdIMC ,
			IdEG ,
			IdExNormal ,
			IdCervix ,
			IdEstiloVida ,
			IdAntitetanica ,
			IdTGestacion ,
			IdGrupoRH ,
			IdHemoglobina ,
			IdToxoplasmosis ,
			IdFolatos ,
			IdSifilis ,
			IdChagas ,
			IdPaludismo ,
			IdGlucemiaAyunas ,
			IdEstreptococo ,
			IdPreparacionParto ,
			IdConsejeriaLactancia ,
			IdBacteriuria ,
			IdVIH			
			)			
			Values(
			@IdGestacionActual,
			@IdPaciente ,
			@IdIMC ,
			@IdEG ,
			@IdExNormal ,
			@IdCervix ,
			@IdEstiloVida ,
			@IdAntitetanica ,
			@IdTGestacion ,
			@IdGrupoRH ,
			@IdHemoglobina ,
			@IdToxoplasmosis ,
			@IdFolatos ,
			@IdSifilis ,
			@IdChagas ,
			@IdPaludismo ,
			@IdGlucemiaAyunas ,
			@IdEstreptococo ,
			@IdPreparacionParto ,
			@IdConsejeriaLactancia ,
			@IdBacteriuria ,
			@IdVIH
			)
		END

	IF @Procedimiento = 'Update'
		BEGIN
			UPDATE GestacionActualPacientes 
			 SET IdPaciente = @IdPaciente,
			IdIMC = @IdIMC,
			IdEG = @IdEG,
			IdExNormal = @IdExNormal,
			IdCervix = @IdCervix,
			IdEstiloVida = @IdEstiloVida,
			IdAntitetanica = @IdAntitetanica,
			IdTGestacion = @IdTGestacion,
			IdGrupoRH = @IdGrupoRH,
			IdHemoglobina = @IdHemoglobina,
			IdToxoplasmosis = @IdToxoplasmosis,
			IdFolatos = @IdFolatos,
			IdSifilis = @IdSifilis,
			IdChagas = @IdChagas,
			IdPaludismo = @IdPaludismo,
			IdGlucemiaAyunas = @IdGlucemiaAyunas,
			IdEstreptococo = @IdEstreptococo,
			IdPreparacionParto = @IdPreparacionParto,
			IdConsejeriaLactancia = @IdConsejeriaLactancia,
			IdBacteriuria = @IdBacteriuria,
			IdVIH = @IdVIH
			 WHERE IdGestacionActual = @IdGestacionActual
		END

	 ELSE IF @Procedimiento = 'Delete'
        BEGIN
            DELETE FROM GestacionActualPacientes
            WHERE  IdGestacionActual = @IdGestacionActual
		END				
		;
END TRY  
BEGIN CATCH  
      SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH 