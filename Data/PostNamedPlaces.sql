--==============================================================================================================
											-- NAMED PLACES SETUP --
	-- NOTE: ORIGINAL SQL SCRIPT CREATED BY MAPPA MUNDI. CREDITS GO TO THEM FOR CREATING THE ORIGINAL FILE.
--==============================================================================================================
--Truncate necessary tables
DELETE FROM NamedDeserts;
DELETE FROM NamedMountains;
DELETE FROM NamedRivers;
DELETE FROM NamedLakes;
DELETE FROM NamedVolcanoes;
DELETE FROM NamedSeas;
DELETE FROM NamedDesertCivilizations;
DELETE FROM NamedMountainCivilizations;
DELETE FROM NamedRiverCivilizations;
DELETE FROM NamedLakeCivilizations;
DELETE FROM NamedVolcanoCivilizations;
DELETE FROM NamedSeaCivilizations;

--Clean and re-populate Types
CREATE TEMP TABLE IF NOT EXISTS BMC_Types (
	Type TEXT UNIQUE, 
	Tag TEXT, 
	Kind TEXT);

INSERT OR REPLACE INTO BMC_Types (Type)
	SELECT DISTINCT FeatureType
	FROM BMC_Database;

UPDATE BMC_Types 
SET Kind = (SELECT Kind FROM BMC_Database WHERE BMC_Database.FeatureType = BMC_Types.Type);
UPDATE BMC_Types 
SET Tag = (SELECT Tag FROM BMC_Database WHERE BMC_Database.FeatureType = BMC_Types.Type);

DELETE FROM Types WHERE Type = (SELECT Type FROM BMC_Types WHERE BMC_Types.Type = Types.Type);

INSERT OR REPLACE INTO Types (Type, Kind)
	SELECT Type, Kind
	FROM BMC_Types;

--Insert into NamedPlace tables
INSERT INTO NamedDeserts (NamedDesertType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_DESERT";

INSERT INTO NamedMountains (NamedMountainType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_MOUNTAIN";

INSERT INTO NamedRivers (NamedRiverType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_RIVER";
	
INSERT INTO NamedLakes (NamedLakeType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_LAKE";

INSERT INTO NamedVolcanoes (NamedVolcanoType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_VOLCANO";
	
INSERT INTO NamedSeas (NamedSeaType, Name)
	SELECT Type, Tag
	FROM BMC_Types
	WHERE BMC_Types.Kind = "KIND_NAMED_SEA";

--Insert into NamedFeatureCivilization tables
INSERT INTO NamedDesertCivilizations (NamedDesertType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_DESERT";
					
INSERT INTO NamedMountainCivilizations (NamedMountainType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_MOUNTAIN";
		
INSERT INTO NamedRiverCivilizations (NamedRiverType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_RIVER";
			
INSERT INTO NamedLakeCivilizations (NamedLakeType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_LAKE";
			
INSERT INTO NamedVolcanoCivilizations (NamedVolcanoType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_VOLCANO";
			
INSERT INTO NamedSeaCivilizations (NamedSeaType, CivilizationType)
	SELECT FeatureType, CivilizationType
	FROM BMC_Database
		WHERE BMC_Database.CivilizationType IN (SELECT Civilizations.CivilizationType FROM Civilizations)
		AND BMC_Database.Kind = "KIND_NAMED_SEA";

--Cleanup
DROP TABLE BMC_Database;
DROP TABLE BMC_Types;