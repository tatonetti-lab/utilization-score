-- CREATE REFERENCE SET --
DROP TABLE IF EXISTS #reference_set
CREATE TABLE #reference_set (cohort_id INT
                            , condition_name VARCHAR(30)
                            , drug_concept_id INT
                            , drug_name VARCHAR(30)
                            , control INT)

INSERT INTO #reference_set VALUES
(500000401,'Acute kidney injury',1167322,'Allopurinol',1),
(500000401,'Acute kidney injury',19026710,'Capreomycin',1),
(500000401,'Acute kidney injury',1340128,'Captopril',1),
(500000401,'Acute kidney injury',1703687,'Acyclovir',1),
(500000401,'Acute kidney injury',992590,'Chlorothiazide',1),
(500000401,'Acute kidney injury',19010482,'Cyclosporine',1),
(500000401,'Acute kidney injury',1126128,'Diflunisal',1),
(500000401,'Acute kidney injury',1342001,'Enalaprilat',1),
(500000401,'Acute kidney injury',1195492,'Etodolac',1),
(500000401,'Acute kidney injury',1153928,'Fenoprofen',1),
(500000401,'Acute kidney injury',974166,'Hydrochlorothiazide',1),
(500000401,'Acute kidney injury',1177480,'Ibuprofen',1),
(500000401,'Acute kidney injury',1185922,'Ketoprofen',1),
(500000401,'Acute kidney injury',1136980,'Ketorolac',1),
(500000401,'Acute kidney injury',1308216,'Lisinopril',1),
(500000401,'Acute kidney injury',1197736,'Mefenamate',1),
(500000401,'Acute kidney injury',1115008,'Naproxen',1),
(500000401,'Acute kidney injury',1312742,'Olmesartan medoxomil',1),
(500000401,'Acute kidney injury',1146810,'Piroxicam',1),
(500000401,'Acute kidney injury',1351557,'candesartan',1),
(500000401,'Acute kidney injury',1150345,'meloxicam',1),
(500000401,'Acute kidney injury',1310756,'moexipril',1),
(500000401,'Acute kidney injury',1118045,'oxaprozin',1),
(500000401,'Acute kidney injury',1317640,'telmisartan',1),
(500000401,'Acute kidney injury',1529331,'Acarbose',0),
(500000401,'Acute kidney injury',1309204,'Adenosine',0),
(500000401,'Acute kidney injury',919204,'Amylases',0),
(500000401,'Acute kidney injury',917006,'Benzocaine',0),
(500000401,'Acute kidney injury',1390051,'Chlorambucil',0),
(500000401,'Acute kidney injury',790253,'Chlorazepate',0),
(500000401,'Acute kidney injury',800878,'Clozapine',0),
(500000401,'Acute kidney injury',19008009,'Cosyntropin',0),
(500000401,'Acute kidney injury',1311409,'Dacarbazine',0),
(500000401,'Acute kidney injury',924724,'Dicyclomine',0),
(500000401,'Acute kidney injury',735850,'Disulfiram',0),
(500000401,'Acute kidney injury',931973,'Endopeptidases',0),
(500000401,'Acute kidney injury',1145379,'Ergotamine',0),
(500000401,'Acute kidney injury',954853,'Flavoxate',0),
(500000401,'Acute kidney injury',1356461,'Flutamide',0),
(500000401,'Acute kidney injury',1763779,'Griseofulvin',0),
(500000401,'Acute kidney injury',923672,'Hyoscyamine',0),
(500000401,'Acute kidney injury',778268,'Imipramine',0),
(500000401,'Acute kidney injury',985708,'Ketoconazole',0),
(500000401,'Acute kidney injury',986117,'Ketotifen',0),
(500000401,'Acute kidney injury',987245,'Lactulose',0),
(500000401,'Acute kidney injury',990760,'Lipase',0),
(500000401,'Acute kidney injury',1107830,'Loratadine',0),
(500000401,'Acute kidney injury',1794280,'Mebendazole',0),
(500000401,'Acute kidney injury',904356,'Methenamine',0),
(500000401,'Acute kidney injury',704943,'Methocarbamol',0),
(500000401,'Acute kidney injury',907879,'Miconazole',0),
(500000401,'Acute kidney injury',1715472,'Nelfinavir',0),
(500000401,'Acute kidney injury',717136,'Neostigmine',0),
(500000401,'Acute kidney injury',721724,'Nortriptyline',0),
(500000401,'Acute kidney injury',1727443,'Paromomycin',0),
(500000401,'Acute kidney injury',1729720,'Penicillin V',0),
(500000401,'Acute kidney injury',735340,'Phentermine',0),
(500000401,'Acute kidney injury',1335539,'Phentolamine',0),
(500000401,'Acute kidney injury',951279,'Prilocaine',0),
(500000401,'Acute kidney injury',751347,'Primidone',0),
(500000401,'Acute kidney injury',752061,'Prochlorperazine',0),
(500000401,'Acute kidney injury',965748,'Scopolamine',0),
(500000401,'Acute kidney injury',966991,'Simethicone',0),
(500000401,'Acute kidney injury',990499,'Sodium Phosphate, Monobasic',0),
(500000401,'Acute kidney injury',836715,'Temazepam',0),
(500000401,'Acute kidney injury',1037005,'Tetrahydrocannabinol',0),
(500000401,'Acute kidney injury',1837289,'Thiabendazole',0),
(500000401,'Acute kidney injury',700465,'Thiothixene',0),
(500000401,'Acute kidney injury',1702559,'Tinidazole',0),
(500000401,'Acute kidney injury',906914,'Urea',0),
(500000401,'Acute kidney injury',19008339,'Vitamin A',0),
(500000401,'Acute kidney injury',1103552,'almotriptan',0),
(500000401,'Acute kidney injury',1136601,'benzonatate',0),
(500000401,'Acute kidney injury',1139179,'bromfenac',0),
(500000401,'Acute kidney injury',1304643,'darbepoetin alfa',0),
(500000401,'Acute kidney injury',916230,'darifenacin',0),
(500000401,'Acute kidney injury',1756831,'darunavir',0),
(500000401,'Acute kidney injury',1189697,'eletriptan',0),
(500000401,'Acute kidney injury',1711246,'entecavir',0),
(500000401,'Acute kidney injury',1396012,'ferrous gluconate',0),
(500000401,'Acute kidney injury',1189458,'frovatriptan',0),
(500000401,'Acute kidney injury',1789276,'gatifloxacin',0),
(500000401,'Acute kidney injury',937368,'infliximab',0),
(500000401,'Acute kidney injury',780369,'metaxalone',0),
(500000401,'Acute kidney injury',741530,'orlistat',0),
(500000401,'Acute kidney injury',781182,'ramelteon',0),
(500000401,'Acute kidney injury',1154077,'rizatriptan',0),
(500000401,'Acute kidney injury',1111706,'zafirlukast',0),
(500000301,'Acute liver injury',929435,'Acetazolamide',1),
(500000301,'Acute liver injury',1167322,'Allopurinol',1),
(500000301,'Acute liver injury',1333357,'Busulfan',1),
(500000301,'Acute liver injury',1340128,'Captopril',1),
(500000301,'Acute liver injury',740275,'Carbamazepine',1),
(500000301,'Acute liver injury',1718054,'Caspofungin',1),
(500000301,'Acute liver injury',1797513,'Ciprofloxacin',1),
(500000301,'Acute liver injury',800878,'Clozapine',1),
(500000301,'Acute liver injury',19010482,'Cyclosporine',1),
(500000301,'Acute liver injury',1311409,'Dacarbazine',1),
(500000301,'Acute liver injury',1724869,'Didanosine',1),
(500000301,'Acute liver injury',1328165,'Diltiazem',1),
(500000301,'Acute liver injury',735850,'Disulfiram',1),
(500000301,'Acute liver injury',1342001,'Enalaprilat',1),
(500000301,'Acute liver injury',1746940,'Erythromycin',1),
(500000301,'Acute liver injury',1195492,'Etodolac',1),
(500000301,'Acute liver injury',1754994,'Fluconazole',1),
(500000301,'Acute liver injury',1356461,'Flutamide',1),
(500000301,'Acute liver injury',1177480,'Ibuprofen',1),
(500000301,'Acute liver injury',1178663,'Indomethacin',1),
(500000301,'Acute liver injury',722424,'Interferonbeta-1a',1),
(500000301,'Acute liver injury',1703653,'Itraconazole',1),
(500000301,'Acute liver injury',1136980,'Ketorolac',1),
(500000301,'Acute liver injury',1704183,'Lamivudine',1),
(500000301,'Acute liver injury',1742253,'Levofloxacin',1),
(500000301,'Acute liver injury',1308216,'Lisinopril',1),
(500000301,'Acute liver injury',1504620,'Methimazole',1),
(500000301,'Acute liver injury',1305058,'Methotrexate',1),
(500000301,'Acute liver injury',1305447,'Methyldopa',1),
(500000301,'Acute liver injury',1115008,'Naproxen',1),
(500000301,'Acute liver injury',1769389,'Nevirapine',1),
(500000301,'Acute liver injury',1517824,'Niacin',1),
(500000301,'Acute liver injury',1318853,'Nifedipine',1),
(500000301,'Acute liver injury',920293,'Nitrofurantoin',1),
(500000301,'Acute liver injury',1721543,'Norfloxacin',1),
(500000301,'Acute liver injury',721724,'Nortriptyline',1),
(500000301,'Acute liver injury',923081,'Ofloxacin',1),
(500000301,'Acute liver injury',19028050,'Penicillamine',1),
(500000301,'Acute liver injury',1146810,'Piroxicam',1),
(500000301,'Acute liver injury',1554072,'Propylthiouracil',1),
(500000301,'Acute liver injury',1334456,'Ramipril',1),
(500000301,'Acute liver injury',1763204,'Rifampin',1),
(500000301,'Acute liver injury',1781406,'Stavudine',1),
(500000301,'Acute liver injury',1836503,'Sulfisoxazole',1),
(500000301,'Acute liver injury',1236607,'Sulindac',1),
(500000301,'Acute liver injury',1436678,'Tamoxifen',1),
(500000301,'Acute liver injury',19011093,'Tenofovir',1),
(500000301,'Acute liver injury',1837289,'Thiabendazole',1),
(500000301,'Acute liver injury',1437379,'Thioguanine',1),
(500000301,'Acute liver injury',1102917,'Tolmetin',1),
(500000301,'Acute liver injury',745466,'Valproate',1),
(500000301,'Acute liver injury',1724827,'Zalcitabine',1),
(500000301,'Acute liver injury',1710612,'Zidovudine',1),
(500000301,'Acute liver injury',1736971,'abacavir',1),
(500000301,'Acute liver injury',19018154,'alatrofloxacin',1),
(500000301,'Acute liver injury',1336825,'bortezomib',1),
(500000301,'Acute liver injury',1321636,'bosentan',1),
(500000301,'Acute liver injury',1118084,'celecoxib',1),
(500000301,'Acute liver injury',1756831,'darunavir',1),
(500000301,'Acute liver injury',1738135,'efavirenz',1),
(500000301,'Acute liver injury',795661,'felbamate',1),
(500000301,'Acute liver injury',1314924,'gemcitabine',1),
(500000301,'Acute liver injury',1716721,'gemifloxacin',1),
(500000301,'Acute liver injury',1304107,'imatinib',1),
(500000301,'Acute liver injury',937368,'infliximab',1),
(500000301,'Acute liver injury',1782521,'isoniazid',1),
(500000301,'Acute liver injury',705103,'lamotrigine',1),
(500000301,'Acute liver injury',1310756,'moexipril',1),
(500000301,'Acute liver injury',714684,'nefazodone',1),
(500000301,'Acute liver injury',741530,'orlistat',1),
(500000301,'Acute liver injury',1118045,'oxaprozin',1),
(500000301,'Acute liver injury',1525215,'pioglitazone',1),
(500000301,'Acute liver injury',1704139,'posaconazole',1),
(500000301,'Acute liver injury',1331235,'quinapril',1),
(500000301,'Acute liver injury',1741309,'terbinafine',1),
(500000301,'Acute liver injury',1736999,'tipranavir',1),
(500000301,'Acute liver injury',715727,'tolcapone',1),
(500000301,'Acute liver injury',1342439,'trandolapril',1),
(500000301,'Acute liver injury',1712549,'trovafloxacin',1),
(500000301,'Acute liver injury',1714277,'voriconazole',1),
(500000301,'Acute liver injury',1111706,'zafirlukast',1),
(500000301,'Acute liver injury',1309204,'Adenosine',0),
(500000301,'Acute liver injury',919204,'Amylases',0),
(500000301,'Acute liver injury',917006,'Benzocaine',0),
(500000301,'Acute liver injury',19008009,'Cosyntropin',0),
(500000301,'Acute liver injury',924724,'Dicyclomine',0),
(500000301,'Acute liver injury',739323,'Droperidol',0),
(500000301,'Acute liver injury',931973,'Endopeptidases',0),
(500000301,'Acute liver injury',1145379,'Ergotamine',0),
(500000301,'Acute liver injury',954853,'Flavoxate',0),
(500000301,'Acute liver injury',1763779,'Griseofulvin',0),
(500000301,'Acute liver injury',923672,'Hyoscyamine',0),
(500000301,'Acute liver injury',986117,'Ketotifen',0),
(500000301,'Acute liver injury',987245,'Lactulose',0),
(500000301,'Acute liver injury',990760,'Lipase',0),
(500000301,'Acute liver injury',904356,'Methenamine',0),
(500000301,'Acute liver injury',907879,'Miconazole',0),
(500000301,'Acute liver injury',717136,'Neostigmine',0),
(500000301,'Acute liver injury',1727443,'Paromomycin',0),
(500000301,'Acute liver injury',1729720,'Penicillin V',0),
(500000301,'Acute liver injury',735340,'Phentermine',0),
(500000301,'Acute liver injury',1335539,'Phentolamine',0),
(500000301,'Acute liver injury',751347,'Primidone',0),
(500000301,'Acute liver injury',953391,'Propantheline',0),
(500000301,'Acute liver injury',965748,'Scopolamine',0),
(500000301,'Acute liver injury',990499,'Sodium Phosphate, Monobasic',0),
(500000301,'Acute liver injury',1036228,'Sucralfate',0),
(500000301,'Acute liver injury',1037005,'Tetrahydrocannabinol',0),
(500000301,'Acute liver injury',1702559,'Tinidazole',0),
(500000301,'Acute liver injury',1103552,'almotriptan',0),
(500000301,'Acute liver injury',1136601,'benzonatate',0),
(500000301,'Acute liver injury',1396012,'ferrous gluconate',0),
(500000301,'Acute liver injury',1149380,'fluticasone',0),
(500000301,'Acute liver injury',1789276,'gatifloxacin',0),
(500000301,'Acute liver injury',767410,'lithium citrate',0),
(500000301,'Acute liver injury',918906,'oxybutynin',0),
(500000301,'Acute liver injury',1137529,'salmeterol',0),
(500000301,'Acute liver injury',1580747,'sitagliptin',0),
(500000801,'Acute myocardial infarction',1332418,'Amlodipine',1),
(500000801,'Acute myocardial infarction',713109,'Amoxapine',1),
(500000801,'Acute myocardial infarction',730548,'Bromocriptine',1),
(500000801,'Acute myocardial infarction',716968,'Desipramine',1),
(500000801,'Acute myocardial infarction',1126128,'Diflunisal',1),
(500000801,'Acute myocardial infarction',1331270,'Dipyridamole',1),
(500000801,'Acute myocardial infarction',1342001,'Enalaprilat',1),
(500000801,'Acute myocardial infarction',1301125,'Epoetin Alfa',1),
(500000801,'Acute myocardial infarction',1548195,'Estradiol',1),
(500000801,'Acute myocardial infarction',1549080,'Estrogens, Conjugated (USP)',1),
(500000801,'Acute myocardial infarction',1195492,'Etodolac',1),
(500000801,'Acute myocardial infarction',1352141,'Factor VIIa',1),
(500000801,'Acute myocardial infarction',1153928,'Fenoprofen',1),
(500000801,'Acute myocardial infarction',1156378,'Flurbiprofen',1),
(500000801,'Acute myocardial infarction',778268,'Imipramine',1),
(500000801,'Acute myocardial infarction',1178663,'Indomethacin',1),
(500000801,'Acute myocardial infarction',1185922,'Ketoprofen',1),
(500000801,'Acute myocardial infarction',1136980,'Ketorolac',1),
(500000801,'Acute myocardial infarction',1318853,'Nifedipine',1),
(500000801,'Acute myocardial infarction',721724,'Nortriptyline',1),
(500000801,'Acute myocardial infarction',1146810,'Piroxicam',1),
(500000801,'Acute myocardial infarction',1137460,'Salsalate',1),
(500000801,'Acute myocardial infarction',1236607,'Sulindac',1),
(500000801,'Acute myocardial infarction',1140643,'Sumatriptan',1),
(500000801,'Acute myocardial infarction',1102917,'Tolmetin',1),
(500000801,'Acute myocardial infarction',1103552,'almotriptan',1),
(500000801,'Acute myocardial infarction',1304643,'darbepoetin alfa',1),
(500000801,'Acute myocardial infarction',1189697,'eletriptan',1),
(500000801,'Acute myocardial infarction',1525278,'estropipate',1),
(500000801,'Acute myocardial infarction',1189458,'frovatriptan',1),
(500000801,'Acute myocardial infarction',1310756,'moexipril',1),
(500000801,'Acute myocardial infarction',1113648,'nabumetone',1),
(500000801,'Acute myocardial infarction',1118117,'naratriptan',1),
(500000801,'Acute myocardial infarction',1118045,'oxaprozin',1),
(500000801,'Acute myocardial infarction',1154077,'rizatriptan',1),
(500000801,'Acute myocardial infarction',1116031,'zolmitriptan',1),
(500000801,'Acute myocardial infarction',1529331,'Acarbose',0),
(500000801,'Acute myocardial infarction',929435,'Acetazolamide',0),
(500000801,'Acute myocardial infarction',919204,'Amylases',0),
(500000801,'Acute myocardial infarction',1390051,'Chlorambucil',0),
(500000801,'Acute myocardial infarction',790253,'Chlorazepate',0),
(500000801,'Acute myocardial infarction',992590,'Chlorothiazide',0),
(500000801,'Acute myocardial infarction',997881,'Clindamycin',0),
(500000801,'Acute myocardial infarction',19008009,'Cosyntropin',0),
(500000801,'Acute myocardial infarction',924724,'Dicyclomine',0),
(500000801,'Acute myocardial infarction',1724869,'Didanosine',0),
(500000801,'Acute myocardial infarction',739323,'Droperidol',0),
(500000801,'Acute myocardial infarction',931973,'Endopeptidases',0),
(500000801,'Acute myocardial infarction',954853,'Flavoxate',0),
(500000801,'Acute myocardial infarction',1356461,'Flutamide',0),
(500000801,'Acute myocardial infarction',923672,'Hyoscyamine',0),
(500000801,'Acute myocardial infarction',985708,'Ketoconazole',0),
(500000801,'Acute myocardial infarction',986117,'Ketotifen',0),
(500000801,'Acute myocardial infarction',987245,'Lactulose',0),
(500000801,'Acute myocardial infarction',990760,'Lipase',0),
(500000801,'Acute myocardial infarction',1107830,'Loratadine',0),
(500000801,'Acute myocardial infarction',1794280,'Mebendazole',0),
(500000801,'Acute myocardial infarction',904356,'Methenamine',0),
(500000801,'Acute myocardial infarction',1504620,'Methimazole',0),
(500000801,'Acute myocardial infarction',704943,'Methocarbamol',0),
(500000801,'Acute myocardial infarction',907879,'Miconazole',0),
(500000801,'Acute myocardial infarction',1715472,'Nelfinavir',0),
(500000801,'Acute myocardial infarction',1769389,'Nevirapine',0),
(500000801,'Acute myocardial infarction',1727443,'Paromomycin',0),
(500000801,'Acute myocardial infarction',727835,'Pemoline',0),
(500000801,'Acute myocardial infarction',19028050,'Penicillamine',0),
(500000801,'Acute myocardial infarction',1729720,'Penicillin V',0),
(500000801,'Acute myocardial infarction',951279,'Prilocaine',0),
(500000801,'Acute myocardial infarction',751347,'Primidone',0),
(500000801,'Acute myocardial infarction',752061,'Prochlorperazine',0),
(500000801,'Acute myocardial infarction',953391,'Propantheline',0),
(500000801,'Acute myocardial infarction',965748,'Scopolamine',0),
(500000801,'Acute myocardial infarction',966991,'Simethicone',0),
(500000801,'Acute myocardial infarction',990499,'Sodium Phosphate, Monobasic',0),
(500000801,'Acute myocardial infarction',1781406,'Stavudine',0),
(500000801,'Acute myocardial infarction',1036228,'Sucralfate',0),
(500000801,'Acute myocardial infarction',964339,'Sulfasalazine',0),
(500000801,'Acute myocardial infarction',1836503,'Sulfisoxazole',0),
(500000801,'Acute myocardial infarction',836715,'Temazepam',0),
(500000801,'Acute myocardial infarction',1037005,'Tetrahydrocannabinol',0),
(500000801,'Acute myocardial infarction',1837289,'Thiabendazole',0),
(500000801,'Acute myocardial infarction',700465,'Thiothixene',0),
(500000801,'Acute myocardial infarction',1702559,'Tinidazole',0),
(500000801,'Acute myocardial infarction',906914,'Urea',0),
(500000801,'Acute myocardial infarction',19008339,'Vitamin A',0),
(500000801,'Acute myocardial infarction',1136601,'benzonatate',0),
(500000801,'Acute myocardial infarction',1139179,'bromfenac',0),
(500000801,'Acute myocardial infarction',916230,'darifenacin',0),
(500000801,'Acute myocardial infarction',1711246,'entecavir',0),
(500000801,'Acute myocardial infarction',1396012,'ferrous gluconate',0),
(500000801,'Acute myocardial infarction',1149380,'fluticasone',0),
(500000801,'Acute myocardial infarction',1789276,'gatifloxacin',0),
(500000801,'Acute myocardial infarction',767410,'lithium citrate',0),
(500000801,'Acute myocardial infarction',780369,'metaxalone',0),
(500000801,'Acute myocardial infarction',918906,'oxybutynin',0),
(500000801,'Acute myocardial infarction',1704139,'posaconazole',0),
(500000801,'Acute myocardial infarction',781182,'ramelteon',0),
(500000801,'Acute myocardial infarction',1137529,'salmeterol',0),
(500000801,'Acute myocardial infarction',1580747,'sitagliptin',0),
(500000801,'Acute myocardial infarction',1741309,'terbinafine',0),
(500000801,'Acute myocardial infarction',1736999,'tipranavir',0),
(500000801,'Acute myocardial infarction',1111706,'zafirlukast',0),
(500001001,'GI bleed',797617,'Citalopram',1),
(500001001,'GI bleed',997881,'Clindamycin',1),
(500001001,'GI bleed',1126128,'Diflunisal',1),
(500001001,'GI bleed',715939,'Escitalopram',1),
(500001001,'GI bleed',1195492,'Etodolac',1),
(500001001,'GI bleed',1153928,'Fenoprofen',1),
(500001001,'GI bleed',755695,'Fluoxetine',1),
(500001001,'GI bleed',1156378,'Flurbiprofen',1),
(500001001,'GI bleed',1177480,'Ibuprofen',1),
(500001001,'GI bleed',1178663,'Indomethacin',1),
(500001001,'GI bleed',1185922,'Ketoprofen',1),
(500001001,'GI bleed',1136980,'Ketorolac',1),
(500001001,'GI bleed',1197736,'Mefenamate',1),
(500001001,'GI bleed',1115008,'Naproxen',1),
(500001001,'GI bleed',1146810,'Piroxicam',1),
(500001001,'GI bleed',19049105,'Potassium Chloride',1),
(500001001,'GI bleed',739138,'Sertraline',1),
(500001001,'GI bleed',1236607,'Sulindac',1),
(500001001,'GI bleed',1102917,'Tolmetin',1),
(500001001,'GI bleed',1322184,'clopidogrel',1),
(500001001,'GI bleed',1150345,'meloxicam',1),
(500001001,'GI bleed',1113648,'nabumetone',1),
(500001001,'GI bleed',1118045,'oxaprozin',1),
(500001001,'GI bleed',1103374,'valdecoxib',1),
(500001001,'GI bleed',1529331,'Acarbose',0),
(500001001,'GI bleed',1309204,'Adenosine',0),
(500001001,'GI bleed',919204,'Amylases',0),
(500001001,'GI bleed',917006,'Benzocaine',0),
(500001001,'GI bleed',1390051,'Chlorambucil',0),
(500001001,'GI bleed',790253,'Chlorazepate',0),
(500001001,'GI bleed',19008009,'Cosyntropin',0),
(500001001,'GI bleed',1311409,'Dacarbazine',0),
(500001001,'GI bleed',924724,'Dicyclomine',0),
(500001001,'GI bleed',735850,'Disulfiram',0),
(500001001,'GI bleed',739323,'Droperidol',0),
(500001001,'GI bleed',931973,'Endopeptidases',0),
(500001001,'GI bleed',1301125,'Epoetin Alfa',0),
(500001001,'GI bleed',1145379,'Ergotamine',0),
(500001001,'GI bleed',1763779,'Griseofulvin',0),
(500001001,'GI bleed',923672,'Hyoscyamine',0),
(500001001,'GI bleed',1703653,'Itraconazole',0),
(500001001,'GI bleed',985708,'Ketoconazole',0),
(500001001,'GI bleed',986117,'Ketotifen',0),
(500001001,'GI bleed',987245,'Lactulose',0),
(500001001,'GI bleed',1704183,'Lamivudine',0),
(500001001,'GI bleed',990760,'Lipase',0),
(500001001,'GI bleed',1107830,'Loratadine',0),
(500001001,'GI bleed',1794280,'Mebendazole',0),
(500001001,'GI bleed',704943,'Methocarbamol',0),
(500001001,'GI bleed',907879,'Miconazole',0),
(500001001,'GI bleed',717136,'Neostigmine',0),
(500001001,'GI bleed',1769389,'Nevirapine',0),
(500001001,'GI bleed',920293,'Nitrofurantoin',0),
(500001001,'GI bleed',1727443,'Paromomycin',0),
(500001001,'GI bleed',727835,'Pemoline',0),
(500001001,'GI bleed',1729720,'Penicillin V',0),
(500001001,'GI bleed',735340,'Phentermine',0),
(500001001,'GI bleed',1335539,'Phentolamine',0),
(500001001,'GI bleed',951279,'Prilocaine',0),
(500001001,'GI bleed',752061,'Prochlorperazine',0),
(500001001,'GI bleed',953391,'Propantheline',0),
(500001001,'GI bleed',965748,'Scopolamine',0),
(500001001,'GI bleed',966991,'Simethicone',0),
(500001001,'GI bleed',1781406,'Stavudine',0),
(500001001,'GI bleed',1036228,'Sucralfate',0),
(500001001,'GI bleed',836715,'Temazepam',0),
(500001001,'GI bleed',1037005,'Tetrahydrocannabinol',0),
(500001001,'GI bleed',1837289,'Thiabendazole',0),
(500001001,'GI bleed',700465,'Thiothixene',0),
(500001001,'GI bleed',1702559,'Tinidazole',0),
(500001001,'GI bleed',906914,'Urea',0),
(500001001,'GI bleed',19008339,'Vitamin A',0),
(500001001,'GI bleed',1710612,'Zidovudine',0),
(500001001,'GI bleed',1736971,'abacavir',0),
(500001001,'GI bleed',1136601,'benzonatate',0),
(500001001,'GI bleed',1139179,'bromfenac',0),
(500001001,'GI bleed',916230,'darifenacin',0),
(500001001,'GI bleed',1711246,'entecavir',0),
(500001001,'GI bleed',1396012,'ferrous gluconate',0),
(500001001,'GI bleed',1149380,'fluticasone',0),
(500001001,'GI bleed',767410,'lithium citrate',0),
(500001001,'GI bleed',780369,'metaxalone',0),
(500001001,'GI bleed',1310756,'moexipril',0),
(500001001,'GI bleed',741530,'orlistat',0),
(500001001,'GI bleed',918906,'oxybutynin',0),
(500001001,'GI bleed',1525215,'pioglitazone',0),
(500001001,'GI bleed',781182,'ramelteon',0),
(500001001,'GI bleed',1547504,'rosiglitazone',0),
(500001001,'GI bleed',1137529,'salmeterol',0),
(500001001,'GI bleed',1580747,'sitagliptin',0),
(500001001,'GI bleed',1741309,'terbinafine',0);

CREATE INDEX drug_concept_id ON #reference_set (drug_concept_id);
CREATE INDEX cohort_id ON #reference_set (cohort_id);

-- COHORT TO CONIDITON CONCEPT -- 
DROP TABLE IF EXISTS #cohort_ancestor
CREATE TABLE #cohort_ancestor (cohort_id INT
                            , ancestor_concept_id INT)

INSERT INTO #cohort_ancestor VALUES
(500000401,	197320),
(500000401,	432961),
(500000301,	201065),
(500000301,	200451),
(500000301,	194984),
(500000301,	197917),
(500000301,	434887),
(500000301,	436238),
(500000301,	4029488),
(500000301,	194417),
(500000301,	194087),
(500000301,	200449),
(500000301,	4159144),
(500000301,	196455),
(500000301,	194990),
(500000301,	137977),
(500000301,	438878),
(500000801,	312327),
(500000801,	434376),
(500000801,	438438),
(500000801,	438170),
(500000801,	438447),
(500000801,	441579),
(500000801,	436706),
(500000801,	444406),
(500000801,	321318),
(500000801,	315296),
(500000801,	439693),
(500001001,	28779),
(500001001,	4114486),
(500001001,	26441),
(500001001,	437326),
(500001001,	24076),
(500001001,	22665),
(500001001,	30770),
(500001001,	24397),
(500001001,	195309),
(500001001,	23245),
(500001001,	26727),
(500001001,	437027),
(500001001,	201059),
(500001001,	316457),
(500001001,	193809),
(500001001,	194158);

CREATE INDEX cohort_id ON #cohort_ancestor (cohort_id);
CREATE INDEX ancestor_concept_id ON #cohort_ancestor (ancestor_concept_id);

-- add event counts and age_at_start
CREATE INDEX start_date ON results.uog_sccs_psm_ccae (start_date);
CREATE INDEX end_date ON results.uog_sccs_psm_ccae (end_date);

DROP TABLE IF EXISTS #drug_condition_id
SELECT ccae.person_id as person_id
    , ccae.drug_concept_id as drug_concept_id
    , ca.cohort_id as cohort_id
    , start_date
    , end_date
    , count(distinct CONDITION_OCCURRENCE_ID) as events
INTO #drug_condition_id
FROM results.uog_sccs_psm_ccae ccae
INNER JOIN #reference_set rs on
    ccae.drug_concept_id = rs.drug_concept_id
INNER JOIN #cohort_ancestor ca on
    rs.cohort_id = ca.cohort_id
INNER JOIN dbo.concept_ancestor ca2 on
    ca2.ancestor_concept_id = ca.ancestor_concept_id
INNER JOIN dbo.CONDITION_OCCURRENCE co on
    co.PERSON_ID = ccae.person_id
    AND co.CONDITION_CONCEPT_ID = ca2.descendant_concept_id
WHERE CONDITION_START_DATE >= start_date
    AND CONDITION_START_DATE < end_date
GROUP BY ccae.person_id, ccae.drug_concept_id, ca.cohort_id, ccae.start_date, ccae.end_date;

DROP TABLE IF EXISTS #history
SELECT ccae.person_id as person_id
    , ccae.drug_concept_id as drug_concept_id
    , ca.cohort_id as cohort_id
    , start_date
    , end_date
    , count(distinct CONDITION_OCCURRENCE_ID) as events
INTO #history
FROM results.uog_sccs_psm_ccae ccae
INNER JOIN #reference_set rs on
    ccae.drug_concept_id = rs.drug_concept_id
INNER JOIN #cohort_ancestor ca on
    rs.cohort_id = ca.cohort_id
INNER JOIN dbo.concept_ancestor ca2 on
    ca2.ancestor_concept_id = ca.ancestor_concept_id
INNER JOIN dbo.CONDITION_OCCURRENCE co on
    ccae.person_id = co.PERSON_ID
    AND co.CONDITION_CONCEPT_ID = ca2.descendant_concept_id
WHERE CONDITION_START_DATE < start_date
GROUP BY ccae.person_id, ccae.drug_concept_id, ca.cohort_id, ccae.start_date, ccae.end_date;

CREATE INDEX person_id ON #drug_condition_id (person_id);
CREATE INDEX drug_concept_id ON #drug_condition_id (drug_concept_id);
CREATE INDEX cohort_id ON #drug_condition_id (cohort_id);
CREATE INDEX start_date ON #drug_condition_id (start_date);
CREATE INDEX end_date ON #drug_condition_id (end_date);
CREATE INDEX person_id ON #history (person_id);
CREATE INDEX drug_concept_id ON #history (drug_concept_id);
CREATE INDEX cohort_id ON #history (cohort_id);
CREATE INDEX start_date ON #history (start_date);
CREATE INDEX end_date ON #history (end_date);

DROP TABLE IF EXISTS results.uog_sccs_final
SELECT rs.cohort_id as cohort_id
     , ccae.drug_concept_id as drug_concept_id
     , ccae.person_id as person_id
     , ccae.start_date as start_date
     , ccae.end_date as end_date
     , duration
     , risk
     , psm_score
     , COALESCE(dci.events, 0) as events
     , COALESCE(hi.events, 0) as history
     , DATEDIFF(year, dbo.person.YEAR_OF_BIRTH, ccae.start_date) AS age_at_start
INTO results.uog_sccs_final
FROM
    results.uog_sccs_psm_ccae ccae
INNER JOIN #reference_set rs on
    rs.drug_concept_id = ccae.drug_concept_id
INNER JOIN dbo.PERSON
     on dbo.person.person_id = ccae.person_id
LEFT JOIN #drug_condition_id dci on
    ccae.person_id = dci.person_id
    AND ccae.drug_concept_id = dci.drug_concept_id
    AND ccae.start_date = dci.start_date
    AND ccae.end_date = dci.end_date
    AND rs.cohort_id = dci.cohort_id
LEFT JOIN #history hi on
    ccae.person_id = hi.person_id
    AND ccae.drug_concept_id = hi.drug_concept_id
    AND ccae.start_date = hi.start_date
    AND ccae.end_date = hi.end_date
    AND rs.cohort_id = hi.cohort_id
ORDER BY cohort_id, drug_concept_id, person_id, start_date, end_date;

DROP TABLE IF EXISTS #temp
SELECT cohort_id, drug_concept_id, person_id
INTO #temp
FROM results.uog_sccs_final
GROUP BY cohort_id, drug_concept_id, person_id
HAVING max(events) >= 0

CREATE INDEX person_id ON #temp (person_id);
CREATE INDEX drug_concept_id ON #temp (drug_concept_id);
CREATE INDEX cohort_id ON #temp (cohort_id);

DROP TABLE IF EXISTS #temp2
SELECT final.cohort_id as cohort_id
            , final.drug_concept_id as drug_concept_id
INTO #temp2
FROM results.uog_sccs_final final
INNER JOIN #temp tem on
    final.person_id = tem.person_id
    AND final.drug_concept_id = final.drug_concept_id
    AND final.cohort_id = final.cohort_id
GROUP BY final.cohort_id, final.drug_concept_id
HAVING count(distinct final.person_id) >= 10

CREATE INDEX drug_concept_id ON #temp2 (drug_concept_id);
CREATE INDEX cohort_id ON #temp2 (cohort_id);

DROP TABLE IF EXISTS results.uog_sccs_final2
SELECT final.cohort_id as cohort_id
     , final.drug_concept_id as drug_concept_id
     , final.person_id as person_id
     , start_date
     , end_date
     , duration
     , risk
     , psm_score
     , events
     , history
     , YEAR(start_date) - YEAR_OF_BIRTH as age_at_start
INTO results.uog_sccs_final2
FROM results.uog_sccs_final final
INNER JOIN #temp2 t2 on
    t2.cohort_id = final.cohort_id
    AND t2.drug_concept_id = final.drug_concept_id
INNER JOIN #temp t1 on
    t1.cohort_id = final.cohort_id
    AND t1.drug_concept_id = final.drug_concept_id
    AND t1.person_id = final.person_id
INNER JOIN dbo.PERSON
     on dbo.person.person_id = final.person_id
WHERE duration != 0

-- filter age_at_start > 17
-- get normalized age
-- filter out person+drug+event greater than 99%
-- duration > 0

CREATE INDEX events ON results.uog_sccs_final2 (events);

SELECT count(*) FROM results.uog_sccs_final2; -- 133459978

WITH topevents AS (
SELECT ROW_NUMBER() OVER (ORDER BY events DESC) AS RowNumber, events
FROM results.uog_sccs_final2)
SELECT *
FROM topevents
WHERE RowNumber = 133459978 -- events = 39

DROP TABLE IF EXISTS #temp
SELECT person_id
INTO #temp
FROM results.uog_sccs_final2 final
GROUP BY person_id
HAVING min(age_at_start) >= 17 -- adults
 AND max(events) <= 39

CREATE INDEX person_id ON #temp (person_id);

DROP TABLE IF EXISTS results.uog_sccs_final
SELECT final.cohort_id as cohort_id
     , final.drug_concept_id as drug_concept_id
     , final.person_id as person_id
     , start_date
     , end_date
     , duration
     , risk
     , psm_score
     , events
     , history
     , age_at_start
     ,  (age_at_start - 17.0)/(67.0-17.0) as norm_age
INTO results.uog_sccs_final
FROM results.uog_sccs_final2 final
INNER JOIN #temp t1 on t1.person_id = final.person_id
WHERE duration > 0