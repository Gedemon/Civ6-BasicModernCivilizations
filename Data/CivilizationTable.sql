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
(	Name,			Domain,				PrimaryColor,			SecondaryColor,			TextColor,		Ethnicity,	CapitalName,	en_US_Name,			en_US_Adj,		en_US_Desc,								Leader_en_US ) VALUES
(	'ALGERIA',		'StandardPlayers',	NULL,					NULL,					'RED',			'MEDIT',	'ALGIERS',		'Algeria', 			'Algerian',		'Peoples Democratic Republic of Algeria','Algerian Governement'		),
(	'AMERICA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'WASHINGTON',	'U.S.A.', 			'American',		'United States of America',				'American Governement'		),
(	'ANGOLA',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'AFRICAN',	'LUANDA',		'Angola',			'Angolan',		'Republic of Angola',                   'Angolan Governement'		),
(	'ARABIA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'RIYADH',		'Saudi Arabia', 	'Arabian',		'Kingdom of Saudi Arabia',				'Arabian Governement'		),
(	'ARGENTINA',	'StandardPlayers',	NULL,					NULL,					'YELLOW',		'SOUTHAM',	'BUENOS_AIRES',	'Argentina',		'Argentine',	'Argentine Republic',					'Argentinian Governement'	),
(	'AUSTRALIA',	'StandardPlayers',	NULL,					NULL,					'RED',			'EURO',		'CANBERRA',		'Australia',		'Australian',	'Commonwealth of Australia',			'Australian Governement'	),
(	'BRAZIL',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'BRASILIA',		'Brazil', 			'Brazilian',	'Federative Republic of Brazil',		'Brazilian Governement'		),
(	'CANADA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'OTTAWA',		'Canada',			'Canadian',		'Canada',								'Canadian Governement'		),
(	'CHILE',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'SOUTHAM',	'SANTIAGO',		'Chile',			'Chilean',		'Republic of Chile',                    'Chilean Governement'		),
(	'CHINA_PRC',	'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'BEIJING',		'P.R.C.',			'Chinese',		'Peoples Republic of China',			'Chinese Governement'		),
(	'CHINA_ROC',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'ASIAN',	'TAIPEI',		'Taiwan',			'Taiwanese',	'Republic of China',					'Taiwanese Governement'		),
(	'COLOMBIA',		'StandardPlayers',	NULL,					NULL,					'RED',			'SOUTHAM',	'BOGOTA',		'Colombia',			'Colombian',	'Republic of Colombia',					'Colombian Governement'		),
(	'CONGO',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'AFRICAN',	'KINCHASSA',	'Congo', 			'Congolese',	'Democratic Republic of the Congo',		'Congolese Governement'		),
(	'CUBA',			'StandardPlayers',	NULL,					NULL,					'WHITE',		'SOUTHAM',	'HAVANA',		'Cuba',				'Cuban',		'Republic of Cuba',						'Cuban Governement'			),
(	'DENMARK',		'ExpandedPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'COPENHAGEN',	'Denmark',			'Danish',		'Kingdom of Denmark',					'Danish Governement'		),
(	'EGYPT',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'MEDIT',	'CAIRO',		'Egypt', 			'Egyptian',		'Arab Republic of Egypt',				'Egyptian Governement'		),
(	'ETHIOPIA',		'StandardPlayers',	NULL,					NULL,					'RED',			'AFRICAN',	'ADDIS_ABABA',	'Ethiopia',			'Ethiopian',	'Federal Democratic Republic of Ethiopia','Ethiopian Governement'	),
(	'FINLAND',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'HELSINKI',		'Finland',			'Finnish',		'Republic of Finland',					'Finnish Governement'		),
(	'FRANCE',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'PARIS',		'France', 			'French',		'French Republic',						'French Governement'		),
(	'GERMANY',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'BERLIN',		'Germany', 			'German',		'Federal Republic of Germany',			'German Governement'		),
(	'GREECE',		'StandardPlayers',	NULL,					NULL,					'BLUE',			'MEDIT',	'ATHENS',		'Greece', 			'Greek',		'Hellenic Republic',					'Greek Governement'			),
(	'ICELAND',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'REYKJAVIK',	'Iceland',			'Icelandic',	'Iceland',								'Icelandic Governement'		),
(	'INDIA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'DELHI',		'India', 			'Indian',		'Republic of India',					'Indian Governement'		),
(	'INDONESIA',	'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'JAKARTA',		'Indonesia',		'Indonesian',	'Republic of Indonesia',				'Indonesian Governement'	),
(	'IRAN',			'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'TEHRAN',		'Iran',				'Iranian',		'Islamic Republic of Iran',				'Iranian Governement'		),
(	'IRAQ',			'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'BAGHDAD',		'Iraq',				'Iraqi',		'Republic of Iraq',						'Iraqi Governement'			),
(	'IRELAND',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'DUBLIN',		'Ireland',			'Irish',		'Ireland',								'Irish Governement'			),
(	'ISRAEL',		'StandardPlayers',	NULL,					NULL,					'LIGHT_BLUE',	'MEDIT',	'JERUSALEM',	'Israel',			'Israeli',		'State of Israel',						'Israeli Governement'		),
(	'ITALY',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'ROME',			'Italy', 			'Italian',		'Italian Republic',						'Italian Governement'		),
(	'JAPAN',		'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'TOKYO',		'Japan', 			'Japanese',		'State of Japan',						'Japanese Governement'		),
(	'KAZAKHSTAN',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'ASIAN',	'ASTANA',		'Kazakhstan',		'Kazakh',		'Republic of Kazakhstan',				'Kazakh Governement'		),
(	'KENYA',		'ExpandedPlayers',	NULL,					NULL,					'BLACK',		'AFRICAN',	'NAIROBI',		'Kenya',			'Kenyan',		'Republic of Kenya',                    'Kenyan Governement'		),
(	'LIBYA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'MEDIT',	'TRIPOLI',		'Libya',			'Libyan',		'State of Libya',						'Libyan Governement'		),
(	'MADAGASCAR',	'StandardPlayers',	NULL,					NULL,					'GREEN',		'AFRICAN',	'ANTANANARIVO',	'Madagascar',		'Madagascan',	'Republic of Madagascar',				'Madagascan Governement'	),
(	'MALAYSIA',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'ASIAN',	'KUALA_LUMPUR',	'Malaysia',			'Malaysian',	'Federation of Malaysia',               'Malaysian Governement'		),
(	'MALI',			'StandardPlayers',	NULL,					NULL,					'WHITE',		'AFRICAN',	'BAMAKO',		'Mali', 			'Malinese',		'Republic of Mali',						'Malinese Governement'		),
(	'MEXICO',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'SOUTHAM',	'MEXICO_CITY',	'Mexico', 			'Mexican',		'United Mexican States',				'Mexican Governement'		),
(	'MONGOLIA',		'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'ULAANBAATAR',	'Mongolia', 		'Mongolian',	'Mongolia',								'Mongolian Governement'		),
(	'MOROCCO',		'StandardPlayers',	NULL,					NULL,					'RED',			'MEDIT',	'RABAT',		'Morocco',			'Moroccan',		'Kingdom of Morocco',					'Moroccan Governement'		),
(	'MYANMAR',		'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'NAYPYIDAW',	'Myanmar',			'Burmese',		'Republic of the Union of Myanmar',		'Burmese Governement'		),
(	'NETHERLANDS',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'AMSTERDAM',	'Netherlands',		'Dutch',		'Kingdom of the Netherlands',			'Dutch Governement'			),
(	'NEW_ZEALAND',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'WELLINGTON',	'New Zealand',		'New Zealand',	'New Zealand',							'New Zealand Governement'	),
(	'NIGERIA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'AFRICAN',	'ABUJA',		'Nigeria',			'Nigerian',		'Federal Republic of Nigeria',          'Nigerian Governement'		),
(	'NORTH_KOREA',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'ASIAN',	'PYONGYANG',	'North Korea',		'North Korean',	'Democratic Peoples Republic of Korea',	'North Korean Governement'	),
(	'NORWAY',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'OSLO',			'Norway', 			'Norwegian',	'Kingdom of Norway',					'Norwegian Governement'		),
(	'PAKISTAN',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'ASIAN',	'ISLAMABAD',	'Pakistan',			'Pakistani',	'Islamic Republic of Pakistan',         'Pakistani Governement'		),
(	'PERU',			'StandardPlayers',	NULL,					NULL,					'WHITE',		'SOUTHAM',	'LIMA',			'Peru',				'Peruvian',		'Republic of Peru',            			'Peruvian Governement'		),
(	'PHILIPPINES',	'StandardPlayers',	NULL,					NULL,					'YELLOW',		'ASIAN',	'MANILA',		'The Philippines',	'Philippine',	'Republic of the Philippines',          'Philippine Governement'	),
(	'POLAND',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'WARSAW',		'Poland',			'Polish',		'Republic of Poland',					'Polish Governement'		),
(	'PORTUGAL',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'EURO',		'LISBON',		'Portugal',			'Portuguese',	'Portuguese Republic',					'Portuguese Governement'	),
(	'ROMANIA',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'EURO',		'BUCHAREST',	'Romania',			'Romanian',		'Romania',                              'Romanian Governement'		),
(	'RUSSIA',		'StandardPlayers',	NULL,					NULL,					'WHITE',		'EURO',		'MOSCOW',		'Russia', 			'Russian',		'Russian Federation',					'Russian Governement'		),
(	'SOUTH_AFRICA',	'StandardPlayers',	NULL,					NULL,					'BLUE',			'AFRICAN',	'CAPE_TOWN',	'South Africa',		'South African','Republic of South Africa',				'South African Governement'	),
(	'SOUTH_KOREA',	'StandardPlayers',	NULL,					NULL,					'WHITE',		'ASIAN',	'SEOUL',		'South Korea',		'South Korean',	'Republic of Korea',					'South Korean Governement'	),
(	'SPAIN',		'StandardPlayers',	NULL,					NULL,					'RED',			'EURO',		'MADRID',		'Spain', 			'Spanish',		'Kingdom of Spain',						'Spanish Governement'		),
(	'SUDAN',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'AFRICAN',	'KHARTOUM',		'Sudan',			'Sudanese',		'Republic of the Sudan',                'Sudanese Governement'		),
(	'SWEDEN',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'EURO',		'STOCKHOLM',	'Sweden',			'Swedish',		'Kingdom of Sweden',					'Swedish Governement'		),
(	'TANZANIA',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'AFRICAN',	'DODOMA',		'Tanzania',			'Tanzanian',	'United Republic of Tanzania',          'Tanzanian Governement'		),
(	'THAILAND',		'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'BANGKOK',		'Thailand',			'Thai',			'Kingdom of Thailand',					'Thai Governement'			),
(	'TURKEY',		'StandardPlayers',	NULL,					NULL,					'RED',			'MEDIT',	'ANKARA',		'Turkey',			'Turkish',		'Republic of Turkey',					'Turkish Governement'		),
(	'UK',			'StandardPlayers',	'ENGLAND_PRIMARY',		'ENGLAND_SECONDARY',	'WHITE',		'EURO',		'LONDON',		'U.K.', 			'British',		'United Kingdom',						'British Governement'		),
(	'UKRAINE',		'StandardPlayers',	NULL,					NULL,					'YELLOW',		'EURO',		'KIEV',			'Ukraine',			'Ukrainian',	'Ukraine',								'Ukrainian Governement'		),
(	'UZBEKISTAN',	'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'TASHKENT',		'Uzbekistan',		'Uzbekistani',	'Republic of Uzbekistan',               'Uzbekistani Governement'   ),
(	'VENEZUELA',	'StandardPlayers',	NULL,					NULL,					'BLUE',			'SOUTHAM',	'CARACAS',		'Venezuela',		'Venezuelan',	'Bolivarian Republic of Venezuela',     'Venezuelan Governement'	),
(	'VIETNAM',		'StandardPlayers',	NULL,					NULL,					'RED',			'ASIAN',	'HANOI',		'Vietnam',			'Vietnamese',	'Socialist Republic of Vietnam',		'Vietnamese Governement'	),

(	'END_OF_INSERT',	NULL,			NULL,					NULL,					NULL,			NULL,		NULL,			NULL,				NULL,			NULL,									NULL						);	
-----------------------------------------------

-- Remove "END_OF_INSERT" entry 
DELETE from CivilizationConfiguration WHERE Name ='END_OF_INSERT';


