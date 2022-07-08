/*

	Basic Civilizations
	Civilizations creation file
	by Gedemon (2017)
	
	Ethnicity : MEDIT | EURO | SOUTHAM | ASIAN | AFRICAN
	
*/
		
-----------------------------------------------
-- Temporary Tables for initialization
-----------------------------------------------
		
CREATE TABLE IF NOT EXISTS CivilizationConfiguration
	(	Name TEXT,
		Domain TEXT,
		PrimaryColor TEXT,
		SecondaryColor TEXT,
		TextColor TEXT,
		Ethnicity TEXT,
		CapitalName TEXT,
		en_US_Name TEXT,
		en_US_Adj TEXT,
		en_US_Desc TEXT,
		Leader_en_US TEXT
	);

-----------------------------------------------
-- Fill the initialization table
-- StandardPlayers	= Civilizations available with the standard mod
-- ExpandedPlayers 	= Civilizations activated by the "Basic Civilizations Expanded" mod
-----------------------------------------------
INSERT INTO CivilizationConfiguration
(	Name,			Domain,				PrimaryColor,				SecondaryColor,				TextColor,	Ethnicity,	CapitalName,	en_US_Name,		en_US_Adj,		en_US_Desc,					Leader_en_US ) VALUES
(	'ALGERIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'MEDIT',	'ALGIERS',	'Algeria', 		'Algerian',		'Peoples Democratic Republic of Algeria',	'Algerian Government'),
(	'AMERICA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'WASHINGTON',	'The United States', 	'American',		'United States of America',			'American Government'),
(	'ANGOLA',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'AFRICAN',	'LUANDA',	'Angola',		'Angolan',		'Republic of Angola',                   	'Angolan Government'),
(	'ARABIA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'RIYADH',	'Saudi Arabia', 	'Arabian',		'Kingdom of Saudi Arabia',			'Arabian Government'),
(	'ARGENTINA',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'SOUTHAM',	'BUENOS_AIRES',	'Argentina',		'Argentine',		'Argentine Republic',				'Argentinian Government'),
(	'AUSTRALIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'CANBERRA',	'Australia',		'Australian',		'Commonwealth of Australia',			'Australian Government'	),
(	'BRAZIL',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'BRASILIA',	'Brazil', 		'Brazilian',		'Federative Republic of Brazil',		'Brazilian Government'),
(	'CANADA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'OTTAWA',	'Canada',		'Canadian',		'Canada',					'Canadian Government'),
(	'CHILE',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'SANTIAGO',	'Chile',		'Chilean',		'Republic of Chile',                    	'Chilean Government'),
(	'CHINA_PRC',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'BEIJING',	'China',		'Chinese',		'Peoples Republic of China',			'Chinese Government'),
(	'CHINA_ROC',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'TAIPEI',	'Taiwan',		'Taiwanese',		'Republic of China',				'Taiwanese Government'),
(	'COLOMBIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'SOUTHAM',	'BOGOTA',	'Colombia',		'Colombian',		'Republic of Colombia',				'Colombian Government'),
(	'CONGO',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'AFRICAN',	'KINCHASSA',	'Congo', 		'Congolese',		'Democratic Republic of the Congo',		'Congolese Government'),
(	'CUBA',			'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'HAVANA',	'Cuba',			'Cuban',		'Republic of Cuba',				'Cuban Government'),
(	'DENMARK',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'COPENHAGEN',	'Denmark',		'Danish',		'Kingdom of Denmark',				'Danish Government'),
(	'EGYPT',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'MEDIT',	'CAIRO',	'Egypt', 		'Egyptian',		'Arab Republic of Egypt',			'Egyptian Government'),
(	'ETHIOPIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'AFRICAN',	'ADDIS_ABABA',	'Ethiopia',		'Ethiopian',		'Federal Democratic Republic of Ethiopia',	'Ethiopian Government'),
(	'FINLAND',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'HELSINKI',	'Finland',		'Finnish',		'Republic of Finland',				'Finnish Government'),
(	'FRANCE',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'PARIS',	'France', 		'French',		'French Republic',				'French Government'),
(	'GERMANY',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'BERLIN',	'Germany', 		'German',		'Federal Republic of Germany',			'German Government'),
(	'GREECE',		'Players:StandardPlayers',	NULL,					NULL,					'BLUE',		'MEDIT',	'ATHENS',	'Greece', 		'Greek',		'Hellenic Republic',				'Greek Government'),
(	'ICELAND',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'REYKJAVIK',	'Iceland',		'Icelandic',		'Iceland',					'Icelandic Government'),
(	'INDIA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'DELHI',	'India', 		'Indian',		'Republic of India',				'Indian Government'),
(	'INDONESIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'JAKARTA',	'Indonesia',		'Indonesian',		'Republic of Indonesia',			'Indonesian Government'),
(	'IRAN',			'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'TEHRAN',	'Iran',			'Iranian',		'Islamic Republic of Iran',			'Iranian Government'),
(	'IRAQ',			'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'BAGHDAD',	'Iraq',			'Iraqi',		'Republic of Iraq',				'Iraqi Government'),
(	'IRELAND',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'DUBLIN',	'Ireland',		'Irish',		'Ireland',					'Irish Government'),
(	'ISRAEL',		'Players:StandardPlayers',	NULL,					NULL,					'LIGHT_BLUE',	'MEDIT',	'JERUSALEM',	'Israel',		'Israeli',		'State of Israel',				'Israeli Government'),
(	'ITALY',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'ROME',		'Italy', 		'Italian',		'Italian Republic',				'Italian Government'),
(	'JAPAN',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'TOKYO',	'Japan', 		'Japanese',		'State of Japan',				'Japanese Government'),
(	'KAZAKHSTAN',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'ASTANA',	'Kazakhstan',		'Kazakh',		'Republic of Kazakhstan',			'Kazakh Government'),
(	'KENYA',		'Players:StandardPlayers',	NULL,					NULL,					'BLACK',	'AFRICAN',	'NAIROBI',	'Kenya',		'Kenyan',		'Republic of Kenya',				'Kenyan Government'),
(	'LIBYA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'MEDIT',	'TRIPOLI',	'Libya',		'Libyan',		'State of Libya',				'Libyan Government'),
(	'MADAGASCAR',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'AFRICAN',	'ANTANANARIVO',	'Madagascar',		'Madagascan',		'Republic of Madagascar',			'Madagascan Government'),
(	'MALAYSIA',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'ASIAN',	'KUALA_LUMPUR',	'Malaysia',		'Malaysian',		'Federation of Malaysia',               	'Malaysian Government'),
(	'MALI',			'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'AFRICAN',	'BAMAKO',	'Mali', 		'Malinese',		'Republic of Mali',				'Malinese Government'),
(	'MEXICO',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'MEXICO_CITY',	'Mexico', 		'Mexican',		'United Mexican States',			'Mexican Government'),
(	'MONGOLIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'ULAANBAATAR',	'Mongolia', 		'Mongolian',		'Mongolia',					'Mongolian Government'),
(	'MOROCCO',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'MEDIT',	'RABAT',	'Morocco',		'Moroccan',		'Kingdom of Morocco',				'Moroccan Government'),
(	'MYANMAR',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'NAYPYIDAW',	'Myanmar',		'Burmese',		'Republic of the Union of Myanmar',		'Burmese Government'),
(	'NETHERLANDS',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'AMSTERDAM',	'Netherlands',		'Dutch',		'Kingdom of the Netherlands',			'Dutch Government'),
(	'NEW_ZEALAND',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'WELLINGTON',	'New Zealand',		'New Zealand',		'New Zealand',					'New Zealand Government'),
(	'NIGERIA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'AFRICAN',	'ABUJA',	'Nigeria',		'Nigerian',		'Federal Republic of Nigeria',          	'Nigerian Government'),
(	'NORTH_KOREA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'PYONGYANG',	'North Korea',		'North Korean',		'Democratic Peoples Republic of Korea',		'North Korean Government'),
(	'NORWAY',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'OSLO',		'Norway', 		'Norwegian',		'Kingdom of Norway',				'Norwegian Government'),
(	'PAKISTAN',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'ISLAMABAD',	'Pakistan',		'Pakistani',		'Islamic Republic of Pakistan',			'Pakistani Government'),
(	'PERU',			'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'SOUTHAM',	'LIMA',		'Peru',			'Peruvian',		'Republic of Peru',            			'Peruvian Government'),
(	'PHILIPPINES',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'ASIAN',	'MANILA',	'The Philippines',	'Philippine',		'Republic of the Philippines',          	'Philippine Government'),
(	'POLAND',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'WARSAW',	'Poland',		'Polish',		'Republic of Poland',				'Polish Government'),
(	'PORTUGAL',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'LISBON',	'Portugal',		'Portuguese',		'Portuguese Republic',				'Portuguese Government'),
(	'ROMANIA',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'BUCHAREST',	'Romania',		'Romanian',		'Romania',                              	'Romanian Government'),
(	'RUSSIA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'MOSCOW',	'Russia', 		'Russian',		'Russian Federation',				'Russian Government'),
(	'SOUTH_AFRICA',		'Players:StandardPlayers',	NULL,					NULL,					'BLUE',		'AFRICAN',	'CAPE_TOWN',	'South Africa',		'South African',	'Republic of South Africa',			'South African Government'),
(	'SOUTH_KOREA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'ASIAN',	'SEOUL',	'South Korea',		'South Korean',		'Republic of Korea',				'South Korean Government'),
(	'SPAIN',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'EURO',		'MADRID',	'Spain', 		'Spanish',		'Kingdom of Spain',				'Spanish Government'),
(	'SUDAN',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'AFRICAN',	'KHARTOUM',	'Sudan',		'Sudanese',		'Republic of the Sudan',			'Sudanese Government'),
--(	'SWEDEN',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'STOCKHOLM',	'Sweden',		'Swedish',		'Kingdom of Sweden',				'Swedish Government'), -- Causes a crash on loading. I suppose because of an entry in artdef from vanilla using CIVILIZATION_SWEDEN. Question is, why doesn't it crash for other similar cases?
(	'SWEDEN_FIX',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'STOCKHOLM',	'Sweden',		'Swedish',		'Kingdom of Sweden',				'Swedish Government'),
(	'TANZANIA',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'AFRICAN',	'DODOMA',	'Tanzania',		'Tanzanian',		'United Republic of Tanzania',          	'Tanzanian Government'),
(	'THAILAND',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'BANGKOK',	'Thailand',		'Thai',			'Kingdom of Thailand',				'Thai Government'),
(	'TURKEY',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'MEDIT',	'ANKARA',	'Turkey',		'Turkish',		'Republic of Turkey',				'Turkish Government'),
(	'UK',			'Players:StandardPlayers',	'ENGLAND_PRIMARY',			'ENGLAND_SECONDARY',			'WHITE',	'EURO',		'LONDON',	'The United Kingdom', 	'British',		'United Kingdom',				'British Government'),
(	'UKRAINE',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'KIEV',		'Ukraine',		'Ukrainian',		'Ukraine',					'Ukrainian Government'),
(	'UZBEKISTAN',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'TASHKENT',	'Uzbekistan',		'Uzbekistani',		'Republic of Uzbekistan',               	'Uzbekistani Government'),
(	'VENEZUELA',		'Players:StandardPlayers',	NULL,					NULL,					'BLUE',		'SOUTHAM',	'CARACAS',	'Venezuela',		'Venezuelan',		'Bolivarian Republic of Venezuela',     	'Venezuelan Government'),
(	'VIETNAM',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'HANOI',	'Vietnam',		'Vietnamese',		'Socialist Republic of Vietnam',		'Vietnamese Government'),

-- NOT IN GAME YET (UPCOMING):
--(	'AFGHANISTAN',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'MEDIT',	'KABUL',	'Afghanistan', 		'Afghan',		'Islamic Emirate of Afghanistan',		'Afghan Government'),--
--(	'AUSTRIA',		'Players:StandardPlayers',	NULL,					NULL,					'WHITE',	'EURO',		'VIENNA',	'Austria', 		'Austrian',		'Republic of Austria',				'Austrian Government'),--
--(	'BANGLADESH',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'ASIAN',	'DHAKA',	'Bangladesh',		'Bangladeshi',		'Peoples Republic of Bangladesh',		'Bangladeshi Government'),--
--(	'BELGIUM',		'Players:StandardPlayers',	NULL,					NULL,					'YELLOW',	'EURO',		'BRUSSELS',	'Belgium', 		'Belgian',		'Kingdom of Belgium',				'Belgian Government'),--
--(	'BULGARIA',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'EURO',		'SOFIA',	'Bulgaria', 		'Bulgarian',		'Republic of Bulgaria',				'Bulgarian Government'),--
--(	'CZECHIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'EURO',		'PRAGUE',	'Czechia',		'Czech',		'Czech Republic',				'Czech Government'),--
--(	'FIJI',			'Players:StandardPlayers',	NULL,					NULL,					'BLUE',		'SOUTHAM',	'SUVA',		'Fiji',			'Fijian',		'Republic of Fiji',				'Fijian Government'),--
--(	'GEORGIA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'EURO',		'TBILISI',	'Georgia',		'Georgian',		'Republic of Georgia',				'Georgian Government'),--
--(	'HUNGARY',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'EURO',		'BUDAPEST',	'Hungary',		'Hungarian',		'Hungary',					'Hungarian Government'),--
--(	'LEBANON',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'MEDIT',	'BEIRUT',	'Lebanon', 		'Lebanese',		'Republic of Lebanon',				'Lebanese Government'),--
--(	'MALDIVES',		'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'ASIAN',	'MALE',		'Maldives', 		'Maldivian',		'Republic of the Maldives',			'Maldivian Government'),--
--(	'NEPAL',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'KATHMANDU',	'Nepal', 		'Nepali',		'Federal Democratic Republic of Nepal',		'Nepali Government'),--
--(	'PAPUA_NEW_GUINEA',	'Players:StandardPlayers',	NULL,					NULL,					'RED',		'ASIAN',	'PORT_MORESBY',	'Papua New Guinea',	'Papuan',		'Independent State of Papua New Guinea',	'Papuan Government'),--
--(	'SOMALIA',		'Players:StandardPlayers',	NULL,					NULL,					'LIGHT_BLUE',	'AFRICAN',	'MOGADISHU',	'Somalia',		'Somali',		'Federal Republic of Somalia',			'Somali Government'),--
--(	'SWITZERLAND'		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'EURO',		'BERN',		'Switzerland', 		'Swiss',		'Swiss Confederation',				'Swiss Government'),--
--(	'UAE',			'Players:StandardPlayers',	NULL,					NULL,					'GREEN',	'MEDIT',	'ABU_DHABI',	'United Arab Emirates', 'Emirati',		'United Arab Emirates',				'Emirati Government'),--
--(	'UGANDA',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'AFRICAN',	'KAMPALA',	'Uganda',		'Ugandan',		'Republic of Uganda',				'Ugandan Government'),--
--(	'ZIMBABWE',		'Players:StandardPlayers',	NULL,					NULL,					'RED',		'AFRICAN',	'HARARE',	'Zimbabwe',		'Zimbabwean',		'Republic of Zimbabwe',				'Zimbabwean Government'),--

(	'END_OF_INSERT',	NULL,				NULL,					NULL,					NULL,		NULL,		NULL,		NULL,			NULL,			NULL,						NULL);	
-----------------------------------------------

-- Remove "END_OF_INSERT" entry 
DELETE from CivilizationConfiguration WHERE Name ='END_OF_INSERT';


