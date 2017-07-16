
DELETE from CivilizationRequestedResource;

/*

	Despecialize
	https://forums.civfanatics.com/resources/despecialise.25800/
	
	

*/
--/*
-- Leaders
CREATE TABLE IF NOT EXISTS NFLeaders (
      LeaderType  TEXT NOT NULL,
      TraitType   TEXT DEFAULT 'TRAIT_LEADER_NONE',
      Kind        TEXT DEFAULT 'KIND_TRAIT',
      Name        TEXT DEFAULT 'No Leader Trait',
      Description TEXT DEFAULT 'This trait does nothing.',
      PRIMARY KEY (LeaderType)
);
INSERT INTO NFLeaders (LeaderType) SELECT DISTINCT LeaderType FROM LeaderTraits WHERE LeaderType <> 'LEADER_BARBARIAN' AND LeaderType <> 'LEADER_DEFAULT' AND LeaderType NOT LIKE 'LEADER_MINOR_CIV_%';
UPDATE NFLeaders SET TraitType=(TraitType || '_' || substr(LeaderType,8));


-- Civilizations
CREATE TABLE IF NOT EXISTS NFCivs (
      CivilizationType TEXT NOT NULL,
      TraitType        TEXT DEFAULT 'TRAIT_CIVILIZATION_NONE',
      Kind             TEXT DEFAULT 'KIND_TRAIT',
      Name             TEXT DEFAULT 'No Civilization Trait',
      Description      TEXT DEFAULT 'This trait does nothing.',
      PRIMARY KEY (CivilizationType)
);
INSERT INTO NFCivs (CivilizationType) SELECT DISTINCT CivilizationType FROM CivilizationTraits WHERE CivilizationType <> 'CIVILIZATION_BARBARIAN';
UPDATE NFCivs SET TraitType=(TraitType || '_' || substr(CivilizationType,14));


-- Agendas
-- UPDATE HistoricalAgendas SET AgendaType=('AGENDA_NONE_HIST_' || substr(LeaderType,8)); --foreign key constraint failed

CREATE TABLE IF NOT EXISTS NFAgendaTraits (
      AgendaType  TEXT,
	  TraitType   TEXT DEFAULT 'TRAIT_AGENDA_NONE',
      Kind        TEXT DEFAULT 'KIND_TRAIT',
	  Name        TEXT DEFAULT 'No Agenda',
	  Description TEXT DEFAULT 'This agenda does nothing.',
      PRIMARY KEY (AgendaType)
);
INSERT INTO NFAgendaTraits (AgendaType) SELECT DISTINCT ('AGENDA_NONE_HIST_' || substr(LeaderType,8)) FROM HistoricalAgendas;
UPDATE NFAgendaTraits SET TraitType='TRAIT_' || AgendaType;
UPDATE NFAgendaTraits SET Name='No historical agenda';
INSERT INTO NFAgendaTraits (AgendaType,TraitType,Name) VALUES ('AGENDA_NONE_RAND','TRAIT_AGENDA_NONE_RAND','No random Agenda');

--CivilizationTraits,LeaderTraits,AgendaTraits for Types table
INSERT INTO Types (Type,Kind) SELECT TraitType,Kind FROM NFLeaders;
INSERT INTO Types (Type,Kind) SELECT TraitType,Kind FROM NFCivs;
INSERT INTO Types (Type,Kind) SELECT TraitType,Kind FROM NFAgendaTraits;
-- .. and Traits table
INSERT INTO Traits (TraitType,Name,Description) SELECT TraitType,Name,Description FROM NFLeaders;
INSERT INTO Traits (TraitType,Name,Description) SELECT TraitType,Name,Description FROM NFCivs;
INSERT INTO Traits (TraitType,Name,Description) SELECT TraitType,Name,Description FROM NFAgendaTraits;
-- next agenda table 
INSERT INTO Agendas (AgendaType,Name,Description) SELECT AgendaType,Name,Description FROM NFAgendaTraits;
-- ..plus agenda traits
INSERT INTO AgendaTraits (AgendaType,TraitType) SELECT AgendaType,TraitType FROM NFAgendaTraits;
INSERT INTO RandomAgendas (AgendaType) VALUES ('AGENDA_NONE_RAND');

INSERT INTO CivilizationTraits (CivilizationType,TraitType) SELECT CivilizationType,TraitType FROM NFCivs;
INSERT INTO LeaderTraits (LeaderType,TraitType) SELECT LeaderType,TraitType FROM NFLeaders;

-- Remove unused unique projects/districts/buildings/improvements/units to prevent them from cluttering the civilopedia.
-- Comment out the following 5 delete statements to keep those entries
DELETE FROM Projects
      WHERE PrereqDistrict IS NOT NULL
	  AND PrereqDistrict IN (SELECT DistrictType FROM Districts WHERE TraitType IS NOT NULL);
 
DELETE FROM Districts
      WHERE TraitType IS NOT NULL;

DELETE FROM Buildings
      WHERE TraitType IS NOT NULL;

DELETE FROM Improvements
      WHERE TraitType IS NOT NULL
      AND TraitType NOT LIKE 'MINOR_CIV_%'
	  AND TraitType <> 'TRAIT_BARBARIAN';

DELETE FROM Units
      WHERE TraitType IS NOT NULL
      AND TraitType <> 'TRAIT_BARBARIAN';

-- This is where the actual despecialising is happening
DELETE FROM CivilizationTraits 
      WHERE TraitType NOT LIKE 'TRAIT_CIVILIZATION_NONE%'
	  AND CivilizationType <> 'CIVILIZATION_BARBARIAN';
DELETE FROM LeaderTraits
      WHERE TraitType NOT LIKE 'TRAIT_LEADER_NONE%'
	  AND LeaderType <> 'LEADER_BARBARIAN'
	  AND LeaderType <> 'LEADER_DEFAULT'
	  AND LeaderType NOT LIKE 'LEADER_MINOR_CIV_%';


DELETE FROM Agendas WHERE AgendaType NOT LIKE 'AGENDA_NONE%';


DROP TABLE NFLeaders;
DROP TABLE NFCivs;
DROP TABLE NFAgendaTraits;
--*/