
DELETE from Parameters WHERE ParameterId ='RequestedResources';
DELETE from ParameterDependencies WHERE ParameterId ='RequestedResources';

--UPDATE MapSizes SET DefaultPlayers ='62' WHERE MapSizeType = 'MAPSIZE_GIANT' OR MapSizeType = 'MAPSIZE_LUDICROUS';

--
INSERT OR IGNORE INTO Players (Domain,CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground)
	SELECT	'Players:Expansion1_Players', CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground
	FROM Players WHERE Domain <> 'Players:Expansion1_Players' AND Domain <> 'ExpandedPlayers';
--
INSERT OR IGNORE INTO Players (Domain,CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground)
	SELECT	'Players:Expansion2_Players', CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground
	FROM Players WHERE Domain <> 'Players:Expansion2_Players' AND Domain <> 'ExpandedPlayers';
--
INSERT OR IGNORE INTO Players (Domain,CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground)
	SELECT	'Players:Expansion3_Players', CivilizationType,LeaderType,LeaderName,LeaderIcon,CivilizationName,CivilizationIcon,LeaderAbilityName,LeaderAbilityDescription,LeaderAbilityIcon,CivilizationAbilityName,CivilizationAbilityDescription,CivilizationAbilityIcon,Portrait,PortraitBackground
	FROM Players WHERE Domain <> 'Players:Expansion3_Players' AND Domain <> 'ExpandedPlayers';