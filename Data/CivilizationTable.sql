/*

	G.C.O.
	Civilizations creation file
	by Gedemon (2017)
	
	Ethnicity : MEDIT | EURO | SOUTHAM | ASIAN | AFRICAN
	
*/
		
-----------------------------------------------
-- Temporary Tables for initialization
-----------------------------------------------

DROP TABLE IF EXISTS CivilizationConfiguration;
		
CREATE TABLE CivilizationConfiguration
	(	Name TEXT,
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
-----------------------------------------------
INSERT INTO CivilizationConfiguration
(	Name,			PrimaryColor,			SecondaryColor,			TextColor,		Ethnicity,	CapitalName,	en_US_Name,			en_US_Adj,		en_US_Desc,								Leader_en_US ) VALUES
(	'ALGERIA',		'WHITE',				'GREEN',				'RED',			'MEDIT',	'ALGIERS',		'Algeria', 			'Algerian',		'Peoples Democratic Republic of Algeria','Algerian Governement'		),
(	'AMERICA',		'AMERICA_PRIMARY',		'AMERICA_SECONDARY',	'WHITE',		'EURO',		'WASHINGTON',	'U.S.A.', 			'American',		'United States of America',				'American Governement'		),
(	'ANGOLA',		'RED',					'BLACK',				'YELLOW',		'AFRICAN',	'LUANDA',		'Angola',			'Angolan',		'Republic of Angola',                   'Angolan Governement'		),
(	'ARABIA',		'ARABIA_PRIMARY',		'ARABIA_SECONDARY',		'WHITE',		'MEDIT',	'RIYADH',		'Saudi Arabia', 	'Arabian',		'Kingdom of Saudi Arabia',				'Arabian Governement'		),
(	'ARGENTINA',	'CYAN',					'WHITE',				'YELLOW',		'SOUTHAM',	'BUENOS_AIRES',	'Argentina',		'Argentine',	'Argentine Republic',					'Argentinian Governement'	),
(	'AUSTRALIA',	'MIDDLE_BLUE',			'WHITE',				'RED',			'EURO',		'CANBERRA',		'Australia',		'Australian',	'Commonwealth of Australia',			'Australian Governement'	),
(	'BRAZIL',		'BRAZIL_PRIMARY',		'BRAZIL_SECONDARY',		'WHITE',		'EURO',		'BRASILIA',		'Brazil', 			'Brazilian',	'Federative Republic of Brazil',		'Brazilian Governement'		),
(	'CANADA',		'WHITE',				'PALE_RED',				'WHITE',		'EURO',		'OTTAWA',		'Canada',			'Canadian',		'Canada',								'Canadian Governement'		),
(	'CHILE',		'MIDDLE_BLUE',			'PALE_RED',				'WHITE',		'SOUTHAM',	'SANTIAGO',		'Chile',			'Chilean',		'Republic of Chile',                    'Chilean Governement'		),
(	'CHINA_PRC',	'CHINA_PRC_PRIMARY',	'CHINA_PRC_SECONDARY',	'RED',			'ASIAN',	'BEIJING',		'P.R.C.',			'Chinese',		'Peoples Republic of China',			'Chinese Governement'		),
(	'CHINA_ROC',	'CHINA_ROC_PRIMARY',	'CHINA_ROC_SECONDARY',	'WHITE',		'ASIAN',	'TAIPEI',		'Taiwan',			'Taiwanese',	'Republic of China',					'Taiwanese Governement'		),
(	'COLOMBIA',		'COLOMBIA_PRIMARY',		'COLOMBIA_SECONDARY',	'RED',			'SOUTHAM',	'BOGOTA',		'Colombia',			'Colombian',	'Republic of Colombia',					'Colombian Governement'		),
(	'CONGO',		'KONGO_PRIMARY',		'BLUE',					'WHITE',		'AFRICAN',	'KINCHASSA',	'Congo', 			'Congolese',	'Democratic Republic of the Congo',		'Congolese Governement'		),
(	'CUBA',			'CUBA_PRIMARY',			'CUBA_SECONDARY',		'WHITE',		'SOUTHAM',	'HAVANA',		'Cuba',				'Cuban',		'Republic of Cuba',						'Cuban Governement'			),
(	'DENMARK',		'RED',					'WHITE',				'WHITE',		'EURO',		'COPENHAGEN',	'Denmark',			'Danish',		'Kingdom of Denmark',					'Danish Governement'		),
(	'EGYPT',		'EGYPT_PRIMARY',		'EGYPT_SECONDARY',		'YELLOW',		'MEDIT',	'CAIRO',		'Egypt', 			'Egyptian',		'Arab Republic of Egypt',				'Egyptian Governement'		),
(	'ETHIOPIA',		'DARK_YELLOW',			'GREEN',				'RED',			'AFRICAN',	'ADDIS_ABABA',	'Ethiopia',			'Ethiopian',	'Federal Democratic Republic of Ethiopia','Ethiopian Governement'	),
(	'FINLAND',		'WHITE',				'MIDDLE_BLUE',			'WHITE',		'EURO',		'HELSINKI',		'Finland',			'Finnish',		'Republic of Finland',					'Finnish Governement'		),
(	'FRANCE',		'FRANCE_PRIMARY',		'FRANCE_SECONDARY',		'WHITE',		'EURO',		'PARIS',		'France', 			'French',		'French Republic',						'French Governement'		),
(	'GERMANY',		'GERMANY_PRIMARY',		'GERMANY_SECONDARY',	'WHITE',		'EURO',		'BERLIN',		'Germany', 			'German',		'Federal Republic of Germany',			'German Governement'		),
(	'GREECE',		'GREECE_PRIMARY',		'GREECE_SECONDARY',		'BLUE',			'MEDIT',	'ATHENS',		'Greece', 			'Greek',		'Hellenic Republic',					'Greek Governement'			),
(	'ICELAND',		'DARK_CYAN',			'RED',					'WHITE',		'EURO',		'REYKJAVIK',	'Iceland',			'Icelandic',	'Iceland',								'Icelandic Governement'		),
(	'INDIA',		'INDIA_PRIMARY',		'INDIA_SECONDARY',		'WHITE',		'MEDIT',	'DELHI',		'India', 			'Indian',		'Republic of India',					'Indian Governement'		),
(	'INDONESIA',	'INDONESIA_PRIMARY',	'INDONESIA_SECONDARY',	'RED',			'ASIAN',	'JAKARTA',		'Indonesia',		'Indonesian',	'Republic of Indonesia',				'Indonesian Governement'	),
(	'IRAN',			'LIGHT_GREEN',			'RED',					'WHITE',		'MEDIT',	'TEHRAN',		'Iran',				'Iranian',		'Islamic Republic of Iran',				'Iranian Governement'		),
(	'IRAQ',			'IRAQ_PRIMARY',			'IRAQ_SECONDARY',		'WHITE',		'MEDIT',	'BAGHDAD',		'Iraq',				'Iraqi',		'Republic of Iraq',						'Iraqi Governement'			),
(	'IRELAND',		'GREEN',				'ORANGE',				'WHITE',		'EURO',		'DUBLIN',		'Ireland',			'Irish',		'Ireland',								'Irish Governement'			),
(	'ISRAEL',		'LIGHT_BLUE',			'WHITE',				'LIGHT_BLUE',	'MEDIT',	'JERUSALEM',	'Israel',			'Israeli',		'State of Israel',						'Israeli Governement'		),
(	'ITALY',		'DARK_GREEN',			'WHITE',				'WHITE',		'MEDIT',	'ROME',			'Italy', 			'Italian',		'Italian Republic',						'Italian Governement'		),
(	'JAPAN',		'JAPAN_PRIMARY',		'JAPAN_SECONDARY',		'RED',			'ASIAN',	'TOKYO',		'Japan', 			'Japanese',		'State of Japan',						'Japanese Governement'		),
(	'KAZAKHSTAN',	'LIGHT_BLUE',			'YELLOW',				'WHITE',		'ASIAN',	'ASTANA',		'Kazakhstan',		'Kazakh',		'Republic of Kazakhstan',				'Kazakh Governement'		),
(	'KENYA',		'DARK_GREEN',			'RED',					'BLACK',		'AFRICAN',	'NAIROBI',		'Kenya',			'Kenyan',		'Republic of Kenya',                    'Kenyan Governement'		),
(	'LIBYA',		'GREEN',				'BLACK',				'WHITE',		'MEDIT',	'TRIPOLI',		'Libya',			'Libyan',		'State of Libya',						'Libyan Governement'		),
(	'MADAGASCAR',	'WHITE',				'PALE_RED',				'GREEN',		'AFRICAN',	'ANTANANARIVO',	'Madagascar',		'Madagascan',	'Republic of Madagascar',				'Madagascan Governement'	),
(	'MALAYSIA',		'MALAYSIA_PRIMARY',		'MALAYSIA_SECONDARY',	'YELLOW',		'ASIAN',	'KUALA_LUMPUR',	'Malaysia',			'Malaysian',	'Federation of Malaysia',               'Malaysian Governement'		),
(	'MALI',			'YELLOW',				'RED',					'WHITE',		'AFRICAN',	'BAMAKO',		'Mali', 			'Malinese',		'Republic of Mali',						'Malinese Governement'		),
(	'MEXICO',		'DARK_GREEN',			'RED',					'WHITE',		'SOUTHAM',	'MEXICO_CITY',	'Mexico', 			'Mexican',		'United Mexican States',				'Mexican Governement'		),
(	'MONGOLIA',		'MONGOLIA_PRIMARY',		'MONGOLIA_SECONDARY',	'RED',			'ASIAN',	'ULAANBAATAR',	'Mongolia', 		'Mongolian',	'Mongolia',								'Mongolian Governement'		),
(	'MOROCCO',		'RED',					'DARK_GREEN',			'RED',			'MEDIT',	'RABAT',		'Morocco',			'Moroccan',		'Kingdom of Morocco',					'Moroccan Governement'		),
(	'MYANMAR',		'GREEN',				'YELLOW',				'RED',			'ASIAN',	'NAYPYIDAW',	'Myanmar',			'Burmese',		'Republic of the Union of Myanmar',		'Burmese Governement'		),
(	'NETHERLANDS',	'MIDDLE_BLUE',			'RED',					'WHITE',		'EURO',		'AMSTERDAM',	'Netherlands',		'Dutch',		'Kingdom of the Netherlands',			'Dutch Governement'			),
(	'NEW_ZEALAND',	'NEW_ZEALAND_PRIMARY',	'NEW_ZEALAND_SECONDARY','WHITE',		'EURO',		'WELLINGTON',	'New Zealand',		'New Zealand',	'New Zealand',							'New Zealand Governement'	),
(	'NIGERIA',		'GREEN',				'WHITE',				'WHITE',		'AFRICAN',	'ABUJA',		'Nigeria',			'Nigerian',		'Federal Republic of Nigeria',          'Nigerian Governement'		),
(	'NORTH_KOREA',	'NORTH_KOREA_PRIMARY',	'NORTH_KOREA_SECONDARY','WHITE',		'ASIAN',	'PYONGYANG',	'North Korea',		'North Korean',	'Democratic Peoples Republic of Korea',	'North Korean Governement'	),
(	'NORWAY',		'NORWAY_PRIMARY',		'NORWAY_SECONDARY',		'WHITE',		'EURO',		'OSLO',			'Norway', 			'Norwegian',	'Kingdom of Norway',					'Norwegian Governement'		),
(	'PAKISTAN',		'PAKISTAN_PRIMARY',		'PAKISTAN_SECONDARY',	'WHITE',		'ASIAN',	'ISLAMABAD',	'Pakistan',			'Pakistani',	'Islamic Republic of Pakistan',         'Pakistani Governement'		),
(	'PERU',			'PALE_RED',				'GREEN',				'WHITE',		'SOUTHAM',	'LIMA',			'Peru',				'Peruvian',		'Republic of Peru',            			'Peruvian Governement'		),
(	'PHILIPPINES',	'PHILIPPINES_PRIMARY',	'PHILIPPINES_SECONDARY','YELLOW',		'ASIAN',	'MANILA',		'The Philippines',	'Philippine',	'Republic of the Philippines',          'Philippine Governement'	),
(	'POLAND',		'WHITE',				'PALE_RED',				'WHITE',		'EURO',		'WARSAW',		'Poland',			'Polish',		'Republic of Poland',					'Polish Governement'		),
(	'PORTUGAL',		'GREEN',				'RED',					'YELLOW',		'EURO',		'LISBON',		'Portugal',			'Portuguese',	'Portuguese Republic',					'Portuguese Governement'	),
(	'ROMANIA',		'MIDDLE_BLUE',			'PALE_RED',				'YELLOW',		'EURO',		'BUCHAREST',	'Romania',			'Romanian',		'Romania',                              'Romanian Governement'		),
(	'RUSSIA',		'RUSSIA_PRIMARY',		'RUSSIA_SECONDARY',		'WHITE',		'EURO',		'MOSCOW',		'Russia', 			'Russian',		'Russian Federation',					'Russian Governement'		),
(	'SOUTH_AFRICA',	'SOUTH_AFRICA_PRIMARY',	'SOUTH_AFRICA_SECONDARY','BLUE',		'AFRICAN',	'CAPE_TOWN',	'South Africa',		'South African','Republic of South Africa',				'South African Governement'	),
(	'SOUTH_KOREA',	'SOUTH_KOREA_PRIMARY',	'SOUTH_KOREA_SECONDARY','WHITE',		'ASIAN',	'SEOUL',		'South Korea',		'South Korean',	'Republic of Korea',					'South Korean Governement'	),
(	'SPAIN',		'SPAIN_PRIMARY',		'SPAIN_SECONDARY',		'RED',			'EURO',		'MADRID',		'Spain', 			'Spanish',		'Kingdom of Spain',						'Spanish Governement'		),
(	'SUDAN',		'SUDAN_PRIMARY',		'SUDAN_SECONDARY',		'YELLOW',		'AFRICAN',	'KHARTOUM',		'Sudan',			'Sudanese',		'Republic of the Sudan',                'Sudanese Governement'		),
(	'SWEDEN',		'SWEDEN_PRIMARY',		'SWEDEN_SECONDARY',		'YELLOW',		'EURO',		'STOCKHOLM',	'Sweden',			'Swedish',		'Kingdom of Sweden',					'Swedish Governement'		),
(	'TANZANIA',		'TANZANIA_PRIMARY',		'TANZANIA_SECONDARY',	'YELLOW',		'AFRICAN',	'DODOMA',		'Tanzania',			'Tanzanian',	'United Republic of Tanzania',          'Tanzanian Governement'		),
(	'THAILAND',		'THAILAND_PRIMARY',		'THAILAND_SECONDARY',	'RED',			'ASIAN',	'BANGKOK',		'Thailand',			'Thai',			'Kingdom of Thailand',					'Thai Governement'			),
(	'TURKEY',		'TURKEY_PRIMARY',		'TURKEY_SECONDARY',		'RED',			'MEDIT',	'ANKARA',		'Turkey',			'Turkish',		'Republic of Turkey',					'Turkish Governement'		),
(	'UK',			'ENGLAND_PRIMARY',		'ENGLAND_SECONDARY',	'WHITE',		'EURO',		'LONDON',		'U.K.', 			'British',		'United Kingdom',						'British Governement'		),
(	'UKRAINE',		'YELLOW',				'LIGHT_BLUE',			'YELLOW',		'EURO',		'KIEV',			'Ukraine',			'Ukrainian',	'Ukraine',								'Ukrainian Governement'		),
(	'UZBEKISTAN',	'UZBEKISTAN_PRIMARY',	'UZBEKISTAN_SECONDARY',	'RED',			'ASIAN',	'TASHKENT',		'Uzbekistan',		'Uzbekistani',	'Republic of Uzbekistan',               'Uzbekistani Governement'   ),
(	'VENEZUELA',	'RED',					'YELLOW',				'BLUE',			'SOUTHAM',	'CARACAS',		'Venezuela',		'Venezuelan',	'Bolivarian Republic of Venezuela',     'Venezuelan Governement'	),
(	'VIETNAM',		'VIETNAM_PRIMARY',		'VIETNAM_SECONDARY',	'RED',			'ASIAN',	'HANOI',		'Vietnam',			'Vietnamese',	'Socialist Republic of Vietnam',		'Vietnamese Governement'	),

(	'END_OF_INSERT',	NULL,			NULL,					NULL,			NULL,		NULL,			NULL,				NULL,			NULL,									NULL						);	
-----------------------------------------------

-- Remove "END_OF_INSERT" entry 
DELETE from CivilizationConfiguration WHERE Name ='END_OF_INSERT';


