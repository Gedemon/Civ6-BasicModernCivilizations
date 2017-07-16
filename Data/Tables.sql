/*
	GMC
	by Gedemon (2017)
	
*/


-----------------------------------------------
-- Create Start Positions Table if needed
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition
	(	MapName TEXT,
		Civilization TEXT,
		Leader TEXT,
		X INT default 0,
		Y INT default 0);