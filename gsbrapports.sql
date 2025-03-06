-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 25 Avril 2017 à 12:01
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsbrapports`
--
-- --------------------------------------------------------
--
-- Structure de la table `famille`
--
CREATE TABLE
  `famille` (
    `id` varchar(10) NOT NULL,
    `libelle` varchar(80) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `famille`
--
INSERT INTO
  `famille` (`id`, `libelle`)
VALUES
  ('AA', 'Antalgiques en association'),
  ('AAA', 'Antalgiques antipyréques en association'),
  ('AAC', 'Antidépresseur d action centrale'),
  ('AAH', 'Antivertigineux antihistaminique H1'),
  ('ABA', 'Antibiotique antituberculeux'),
  ('ABC', 'Antibiotique antiacnénique local'),
  (
    'ABP',
    'Antibiotique de la famille des béta-lactamines -pénicilline A-'
  ),
  ('AFC', 'Antibiotique de la famille des cyclines'),
  (
    'AFM',
    'Antibiotique de la famille des macrolides'
  ),
  ('AH', 'Antihistaminique H1 local'),
  (
    'AIM',
    'Antidépresseur imipraminique -tricyclique-'
  ),
  (
    'AIN',
    'Antidépresseur inhibiteur sélectif de la recapture de la sétonine'
  ),
  ('ALO', 'Antibiotique local -ORL-'),
  ('ANS', 'Antidépresseur IMAO non sélectif'),
  ('AO', 'Antibiotique ophtalmique'),
  ('AP', 'Antipsychotique normothymique'),
  ('AUM', 'Antibiotique urinaire minute'),
  (
    'CRT',
    'Corticoide, antibiotique et antifongique à usage local'
  ),
  ('HYP', 'Hypnotique antihistaminique'),
  ('PSA', 'Psychostimulant antiasthésique');

-- --------------------------------------------------------
--
-- Structure de la table `medecin`
--
CREATE TABLE
  `medecin` (
    `id` int (11) NOT NULL,
    `nom` varchar(30) NOT NULL,
    `prenom` varchar(30) NOT NULL,
    `adresse` varchar(80) NOT NULL,
    `tel` varchar(15) DEFAULT NULL,
    `specialitecomplementaire` varchar(50) DEFAULT NULL,
    `departement` int (11) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `medecin`
--
INSERT INTO
  `medecin` (
    `id`,
    `nom`,
    `prenom`,
    `adresse`,
    `tel`,
    `specialitecomplementaire`,
    `departement`
  )
VALUES
  (
    1,
    'MARTIN',
    'Prosper',
    '25 rue Anatole France BRIANCON 05100',
    '0485244174',
    NULL,
    5
  ),
  (
    2,
    'BLANC',
    'Anne-Lucie',
    '39 rue des gatinnes BILLIAT 01200',
    '0356895400',
    'Pédiatre',
    1
  ),
  (
    3,
    'GARCIA',
    'Camille',
    '58 rue du stade MESSINCOURT 08110',
    '0365489929',
    NULL,
    8
  ),
  (
    4,
    'MARTINEZ',
    'Alice',
    '12 rue des Pigeons JOIGNY-SUR-MEUSE 08700',
    '0319692016',
    NULL,
    8
  ),
  (
    5,
    'MICHEL',
    'Vénus',
    '55 rue du 14 juillet ORCIERES 05170',
    '0421670911',
    NULL,
    5
  ),
  (
    6,
    'ROUX',
    'Anne-Lucie',
    '49 rue des Ormes ATTILLY 02490',
    '0313817061',
    NULL,
    2
  ),
  (
    7,
    'FABRE',
    'Marie',
    '78 rue de Poligny YONCQ 08210',
    '0388716930',
    'HOMEOPATHIE',
    8
  ),
  (
    8,
    'ARNAUD',
    'Andrew',
    '29 rue des Pigeons SAVINES-LE-LAC 05160',
    '0477740994',
    NULL,
    5
  ),
  (
    9,
    'FERNANDEZ',
    'Julien',
    '45 rue de du général Scott THIN-LE-MOUTIER 08460',
    '0321760709',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    10,
    'LOPEZ',
    'Aurèle',
    '16 rue Alphonse Daudet ORCIERES 05170',
    '0485568083',
    NULL,
    5
  ),
  (
    11,
    'BERNARD',
    'Johnny',
    '74 rue de Paris SAVINES-LE-LAC 05160',
    '0417789322',
    NULL,
    5
  ),
  (
    12,
    'GIRAUD',
    'Andrée',
    'ville',
    '1234567891',
    'psy',
    5
  ),
  (
    13,
    'BOYER',
    'Gilles',
    '33 rue Commandant Hériot MONTIGNY-SUR-MEUSE 08170',
    '0334037052',
    NULL,
    8
  ),
  (
    14,
    'SANCHEZ',
    'Vénus',
    '14 rue de la poste BANCIGNY 02145',
    '0313832194',
    'Pédiatrie',
    2
  ),
  (
    15,
    'BRUN',
    'Cristophe',
    '81 rue Bonaparte AUBENTON 02500',
    '0366612144',
    NULL,
    2
  ),
  (
    16,
    'PEREZ',
    'Jules',
    '85 rue Hector Berlioz BRIANCON 05100',
    '0459073011',
    NULL,
    5
  ),
  (
    17,
    'SANTIAGO',
    'Julienne',
    '17 rue Lampion AUGIREIN 09800',
    '0524077425',
    NULL,
    9
  ),
  (
    18,
    'DURAND',
    'John',
    '92 rue du général de Gaulle SORBIERS 05150',
    '0484328394',
    'HOMEOPATHIE',
    5
  ),
  (
    19,
    'RODRIGUEZ',
    'Cristophe',
    '1 rue des Accacias BELLOC 09600',
    '0564847694',
    NULL,
    9
  ),
  (
    20,
    'REYNAUD',
    'Catherine',
    '8 rue des Accacias MONCEAU-SUR-OISE 02120',
    '0352679072',
    NULL,
    2
  ),
  (
    21,
    'AUBERT',
    'Julien',
    '51 rue Bonaparte CAMON 09500',
    '0552863581',
    NULL,
    9
  ),
  (
    22,
    'ROSSI',
    'Nohan',
    '69 rue Mallarmé AX-LES-THERMES 09110',
    '0596648531',
    NULL,
    9
  ),
  (
    23,
    'BERTRAND',
    'Julienne',
    '72 rue Pasteur SAVOURNON 05700',
    '0490527954',
    NULL,
    5
  ),
  (
    24,
    'GAUTIER',
    'Irénée',
    '28 rue Anatole France BELLEY 01300',
    '0486481045',
    NULL,
    1
  ),
  (
    25,
    'BONNET',
    'François',
    '78 rue des Epines AZY-SUR-MARNE 02400',
    '0318212781',
    NULL,
    2
  ),
  (
    26,
    'REY',
    'Charles-Edouard',
    '86 rue Louis Aragon BILLIAT 01200',
    '0446961025',
    NULL,
    1
  ),
  (
    27,
    'GOMEZ',
    'Jérémy',
    '89 rue de la pointe SAINT-FIRMIN 05800',
    '0438318333',
    NULL,
    5
  ),
  (
    28,
    'GIRARD',
    'Johnny',
    '19 rue de la Tour JOIGNY-SUR-MEUSE 08700',
    '0341883832',
    'pédiatrie',
    8
  ),
  (
    29,
    'JOURDAN',
    'Hector',
    '29 rue de la pointe BOURG-EN-BRESSE 01000',
    '0431450970',
    NULL,
    1
  ),
  (
    30,
    'ROCHE',
    'Mohammed',
    '30 rue Pasteur BEZAC 09100',
    '0591677334',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    31,
    'FAURE',
    'Annie',
    '82 rue Mallarmé SIGOYER 05130',
    '0487018886',
    NULL,
    5
  ),
  (
    32,
    'ESPOSITO',
    'Caline',
    '27 rue de Marigny BRIANCON 05100',
    '0444253472',
    NULL,
    5
  ),
  (
    33,
    'IMBERT',
    'Jordan',
    '53 rue Alphonse Daudet SAINT-LAURENT-SUR-SAONE 01750',
    '0463813731',
    NULL,
    1
  ),
  (
    34,
    'VIDAL',
    'Anne-Lucie',
    '94 rue de la pointe BOULIGNEUX 01330',
    '0462262613',
    NULL,
    1
  ),
  (
    35,
    'OLIVE',
    'Reissa',
    '63 rue Alphonse Daudet AX-LES-THERMES 09110',
    '0563092583',
    NULL,
    9
  ),
  (
    36,
    'ROBERT',
    'Anne-Jeanne',
    '26 rue des Armées AVANCON 05230',
    '0442237548',
    NULL,
    5
  ),
  (
    37,
    'BARTHELEMY',
    'Fatima',
    '24 rue Albert Camus PELVOUX 05340',
    '0411439067',
    'URGENTISTE',
    5
  ),
  (
    38,
    'LAURENT',
    'Alice',
    '33 rue de la Tour BOURG-EN-BRESSE 01000',
    '0479660588',
    NULL,
    1
  ),
  (
    39,
    'ANDRE',
    'Béatrice',
    '25 rue des Lilas LAUNOIS-SUR-VENCE 08430',
    '0389426738',
    NULL,
    8
  ),
  (
    40,
    'PONS',
    'Armelle',
    '48 rue de Paris REOTIER 05600',
    '0467247607',
    NULL,
    5
  ),
  (
    41,
    'PASCAL',
    'Anselme',
    '19 rue des pyramides ARANDAS 01230',
    '0434638475',
    NULL,
    1
  ),
  (
    42,
    'JULIEN',
    'John',
    '23 rue Alphonse Daudet SORBIERS 05150',
    '0473380415',
    NULL,
    5
  ),
  (
    43,
    'NICOLAS',
    'Firmin',
    '59 rue de la Pergolat FLEVILLE 08250',
    '0337420570',
    NULL,
    8
  ),
  (
    44,
    'MAURIN',
    'Anne',
    '59 rue de du général Scott MONTCY-NOTRE-DAME 08090',
    '0310431717',
    'ACUPONCTURE',
    8
  ),
  (
    45,
    'CORTES',
    'Gilles',
    '65 rue des oiseaux ARROUT 09800',
    '0578097401',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    46,
    'MATHIEU',
    'Anne-Jeanne',
    '29 rue Petit BEDEILLE 09230',
    '0523206238',
    NULL,
    9
  ),
  (
    47,
    'FERAUD',
    'Anne-Lucie',
    '14 rue Petit BEZAC 09100',
    '0512011679',
    NULL,
    9
  ),
  (
    48,
    'ROUBAUD',
    'Carole',
    '86 rue du capitaine Fraquasse BETTANT 01500',
    '0490382365',
    'HOMEOPATHIE',
    1
  ),
  (
    49,
    'LONG',
    'Amiel',
    '22 rue Lampion BELLEY 01300',
    '0463584743',
    NULL,
    1
  ),
  (
    50,
    'GIORDANO',
    'Martial',
    '75 rue du capitaine Crochet ATTILLY 02490',
    '0361985743',
    NULL,
    2
  ),
  (
    51,
    'COSTE',
    'Anne-Laure',
    '60 rue Pernod BETTANT 01500',
    '0437621473',
    NULL,
    1
  ),
  (
    52,
    'GARCIN',
    'Prosper',
    '46 rue de la Tour REOTIER 05600',
    '0450401007',
    'ACUPONCTURE',
    5
  ),
  (
    53,
    'LAUGIER',
    'Fatima',
    '95 rue de Poligny BOURG-EN-BRESSE 01000',
    '0481057435',
    NULL,
    1
  ),
  (
    54,
    'RICHARD',
    'Jérome',
    '39 rue Commandant Hériot BANCIGNY 02140',
    '0315759754',
    NULL,
    2
  ),
  (
    55,
    'JEAN',
    'Ines',
    '90 rue Pernod ROCHEBRUNE 05190',
    '0444572962',
    'ALLERGOLOGIE',
    5
  ),
  (
    56,
    'MAUREL',
    'Jérémie',
    '45 rue des Chantereines FLOING 08200',
    '0333621591',
    NULL,
    8
  ),
  (
    57,
    'RUIZ',
    'Anne-Marie',
    '48 rue du 14 juillet BRIANCON 05100',
    '0478777229',
    NULL,
    5
  ),
  (
    58,
    'NAVARRO',
    'Armelle',
    '88 rue des Argonautes DOMMARTIN 01380',
    '0482500579',
    NULL,
    1
  ),
  (
    59,
    'RICARD',
    'Anselme',
    '18 rue de du général Scott BOURG-EN-BRESSE 01000',
    '0428387190',
    'GERONTOLOGIE',
    1
  ),
  (
    60,
    'HERNANDEZ',
    'Aude',
    '98 rue Hector Berlioz BOULIGNEUX 01330',
    '0460116931',
    NULL,
    1
  ),
  (
    61,
    'ROMAN',
    'Camille',
    '43 rue de la poste ASTON 09310',
    '0554877193',
    NULL,
    9
  ),
  (
    62,
    'VINCENT',
    'Bernard',
    '69 rue Debussy AX-LES-THERMES 09110',
    '0592618819',
    NULL,
    9
  ),
  (
    63,
    'FOUQUE',
    'Johnny',
    '27 rue Victor Hugo MONTCEAUX 01090',
    '0410938634',
    NULL,
    1
  ),
  (
    64,
    'LAMBERT',
    'Aude',
    '40 rue Mallarmé SAINT-FIRMIN 05800',
    '0434328795',
    NULL,
    5
  ),
  (
    65,
    'DAVID',
    'Anne-Lucie',
    '80 rue Victor Hugo LAVAL-MORENCY 08150',
    '0354570788',
    NULL,
    8
  ),
  (
    66,
    'FOURNIER',
    'Alice',
    '48 rue des perles blanches QUATRE-CHAMPS 08400',
    '0351022549',
    NULL,
    8
  ),
  (
    67,
    'GONZALEZ',
    'Bénédicte',
    '44 rue des Pigeons SAINT-LAURENT-SUR-SAONE 01750',
    '0453817641',
    NULL,
    1
  ),
  (
    68,
    'COHEN',
    'Précilia',
    '65 rue St Denis ASTON 09310',
    '0574385413',
    NULL,
    9
  ),
  (
    69,
    'CAILLOL',
    'Andrée',
    '86 rue des Pigeons AX-LES-THERMES 09110',
    '0512919575',
    NULL,
    9
  ),
  (
    70,
    'GROS',
    'Bertrand',
    '87 rue du 14 juillet BARZY-SUR-MARNE 02850',
    '0389988201',
    'ALLERGOLOGIE',
    2
  ),
  (
    71,
    'AUDIBERT',
    'Jérome',
    '40 rue Bonaparte MAYOT 02800',
    '0380247692',
    NULL,
    2
  ),
  (
    72,
    'CLEMENT',
    'Victor',
    '91 rue Malraux MEZIERES-SUR-OISE 02240',
    '0396223586',
    NULL,
    2
  ),
  (
    73,
    'JULLIEN',
    'Victor',
    '86 rue du capitaine Fraquasse SAVINES-LE-LAC 05160',
    '0424098074',
    NULL,
    5
  ),
  (
    74,
    'GARNIER',
    'Bertrand',
    '44 rue du capitaine Fraquasse MONTIGNY-SUR-MEUSE 08170',
    '0365814281',
    NULL,
    8
  ),
  (
    75,
    'PAUL',
    'Adrien',
    '47 rue Commandant Hériot AUDRESSEIN 09800',
    '0561293920',
    NULL,
    9
  ),
  (
    76,
    'LOMBARD',
    'Irénée',
    '42 rue des Epines SAINT-LAURENT-SUR-SAONE 01750',
    '0432573377',
    NULL,
    1
  ),
  (
    77,
    'DUMAS',
    'Amélie',
    '95 rue Anatole France HERBEUVAL 08370',
    '0395342234',
    NULL,
    8
  ),
  (
    78,
    'MORENO',
    'Jordan',
    '18 rue Blainville AVANCON 05230',
    '0410805260',
    NULL,
    5
  ),
  (
    79,
    'BERENGER',
    'Anne-Laure',
    '49 rue des Princes OYONNAX 01100',
    '0495914341',
    NULL,
    1
  ),
  (
    80,
    'PETIT',
    'Ingrid',
    '90 rue des Lilas BELLOC 09600',
    '0550136460',
    NULL,
    9
  ),
  (
    81,
    'SIMON',
    'Yoan',
    '2 rue Beaudelaire FALAISE 08400',
    '0349609708',
    NULL,
    8
  ),
  (
    82,
    'MARTINI',
    'Jules',
    '61 rue Petit SORBIERS 05150',
    '0453597713',
    'ANGEIOLOGIE',
    5
  ),
  (
    83,
    'JOUVE',
    'Jérome',
    '12 rue Agniel ABBECOURT 02300',
    '0336592352',
    NULL,
    2
  ),
  (
    84,
    'BOURRELLY',
    'Bernard',
    '46 rue des Néfliers ARROUT 09800',
    '0593876907',
    NULL,
    9
  ),
  (
    85,
    'NEGREL',
    'Anne-Jeanne',
    '94 rue de la Tour AUBENTON 02500',
    '0315358087',
    NULL,
    2
  ),
  (
    86,
    'CHAIX',
    'John',
    '13 rue de la recette MONT-LAURENT 08130',
    '0324815927',
    NULL,
    8
  ),
  (
    87,
    'PERRIN',
    'Aurélien',
    '34 rue Alphonse Daudet MONTCY-NOTRE-DAME 08090',
    '0388838695',
    'ALLERGOLOGIE',
    8
  ),
  (
    88,
    'DAUMAS',
    'Anne-Marie',
    '50 rue Commandant Mouchotte BARENTON-SUR-SERRE 02270',
    '0380767789',
    NULL,
    2
  ),
  (
    89,
    'MATTEI',
    'Marie',
    '36 rue de la rose BOULIGNEUX 01330',
    '0459841705',
    NULL,
    1
  ),
  (
    90,
    'MARIN',
    'Bertrand',
    '80 rue Beaudelaire FLOING 08200',
    '0370254981',
    NULL,
    8
  ),
  (
    91,
    'GIMENEZ',
    'Austine',
    '37 rue Agniel BILLIAT 01200',
    '0498702952',
    NULL,
    1
  ),
  (
    92,
    'CAMOIN',
    'Aline',
    '85 rue des Cavaux AUBENTON 02500',
    '0320874526',
    'ACUPONCTURE',
    2
  ),
  (
    93,
    'GAY',
    'Béatrice',
    '98 rue Perdue AUDRESSEIN 09800',
    '0550107365',
    NULL,
    9
  ),
  (
    94,
    'PELLEGRIN',
    'Fernand',
    '21 rue Blainville ABBECOURT 02300',
    '0379546875',
    NULL,
    2
  ),
  (
    95,
    'CHAUVET',
    'Anne-Lucie',
    '47 rue des Anses bleues BARENTON-SUR-SERRE 02270',
    '0357798474',
    NULL,
    2
  ),
  (
    96,
    'BREMOND',
    'Julienne',
    '89 rue du stade VAUX-CHAMPAGNE 08130',
    '0321409034',
    NULL,
    8
  ),
  (
    97,
    'TORRES',
    'Alain',
    '21 rue des pyramides MONTCY-NOTRE-DAME 08090',
    '0355126171',
    NULL,
    8
  ),
  (
    98,
    'ISNARD',
    'André',
    '70 rue de la rose THIN-LE-MOUTIER 08460',
    '0383574338',
    NULL,
    8
  ),
  (
    99,
    'OLLIVIER',
    'Anne-Lucie',
    '28 rue du Mont AX-LES-THERMES 09110',
    '0525425981',
    NULL,
    9
  ),
  (
    100,
    'BRUNET',
    'Jérémie',
    '83 rue de la pointe MONTCY-NOTRE-DAME 08090',
    '0344175754',
    NULL,
    8
  ),
  (
    101,
    'OLIVIER',
    'Alizée',
    '23 rue des Néfliers BARZY-SUR-MARNE 02850',
    '0318063658',
    NULL,
    2
  ),
  (
    102,
    'GUERIN',
    'Béatrice',
    '75 rue de la poste SIGOYER 05130',
    '0499728475',
    NULL,
    5
  ),
  (
    103,
    'RUSSO',
    'Jimmy',
    '57 rue du 14 juillet BEDEILLE 09230',
    '0579403405',
    NULL,
    9
  ),
  (
    104,
    'PAOLI',
    'Martin',
    '77 rue Edouard Hériot PELVOUX 05340',
    '0465821962',
    NULL,
    5
  ),
  (
    105,
    'FERRERO',
    'Astine',
    '77 rue des Chantereines SIGOYER 05130',
    '0443207794',
    NULL,
    5
  ),
  (
    106,
    'COSTA',
    'Julien',
    '75 rue des Epines EVIGNY 08090',
    '0353124513',
    NULL,
    8
  ),
  (
    107,
    'LACROIX',
    'Anne-Lucie',
    '64 rue des Pigeons BEAUMONT-EN-BEINE 02300',
    '0357357391',
    NULL,
    2
  ),
  (
    108,
    'VIAL',
    'Fernand',
    '21 rue Commandant Hériot ARROUT 09800',
    '0533982064',
    'ALLERGOLOGIE',
    9
  ),
  (
    109,
    'BRUNO',
    'Aurélien',
    '13 rue Debussy AUGIREIN 09800',
    '0550671849',
    NULL,
    9
  ),
  (
    110,
    'GILLES',
    'Hector',
    '54 rue des Chantereines BEAUMONT-EN-BEINE 02300',
    '0397960460',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    111,
    'THOMAS',
    'Bénédicte',
    '7 rue de Paris BOURG-EN-BRESSE 01000',
    '0483574560',
    NULL,
    1
  ),
  (
    112,
    'BENOIT',
    'Aristote',
    '35 rue des Argonautes FEPIN 08170',
    '0321622783',
    'ACUPONCTURE',
    8
  ),
  (
    113,
    'CASANOVA',
    'Anémone',
    '66 rue Blainville ARROUT 09800',
    '0561274309',
    NULL,
    9
  ),
  (
    114,
    'RICHAUD',
    'Hamed',
    '96 rue de la Tour SAINT-CREPIN 05600',
    '0466381035',
    NULL,
    5
  ),
  (
    115,
    'BIANCHI',
    'Précilia',
    '45 rue des Chantereines MONTIGNY-SUR-MEUSE 08170',
    '0319515228',
    NULL,
    8
  ),
  (
    116,
    'GRANIER',
    'Ines',
    '54 rue de la Tour AUGIREIN 09800',
    '0522353355',
    NULL,
    9
  ),
  (
    117,
    'CHABERT',
    'Alizée',
    '32 rue des gatinnes SAINT-SAUVEUR 05200',
    '0479723538',
    NULL,
    5
  ),
  (
    118,
    'ROLLAND',
    'Reissa',
    '36 rue Malraux FLEVILLE 08250',
    '0389034128',
    NULL,
    8
  ),
  (
    119,
    'RIGAUD',
    'Anne-Sophie',
    '27 rue Anatole France LAUNOIS-SUR-VENCE 08430',
    '0319617909',
    'ANGEIOLOGIE',
    8
  ),
  (
    120,
    'DUBOIS',
    'Hamed',
    '44 rue de la Pergolat AGUILCOURT 02190',
    '0391017673',
    NULL,
    2
  ),
  (
    121,
    'HUGUES',
    'Alain',
    '97 rue des Anges SAINT-LAURENT-SUR-SAONE 01750',
    '0420673509',
    NULL,
    1
  ),
  (
    122,
    'BARBIER',
    'Rodolphe',
    '5 rue de la pointe AUGIREIN 09800',
    '0568080361',
    NULL,
    9
  ),
  (
    123,
    'MILLE',
    'Andrée',
    '26 rue des Argonautes BELLEY 01300',
    '0417979762',
    NULL,
    1
  ),
  (
    124,
    'MAGNAN',
    'Hamed',
    '52 rue des Argonautes BILLIAT 01200',
    '0434883323',
    NULL,
    1
  ),
  (
    125,
    'ARNOUX',
    'Mohammed',
    '33 rue Bonaparte VAUX-CHAMPAGNE 08130',
    '0388412366',
    NULL,
    8
  ),
  (
    126,
    'LEVY',
    'Patricia',
    '86 rue de la poste ASTON 09310',
    '0544573807',
    NULL,
    9
  ),
  (
    127,
    'GAUTHIER',
    'Aurélien',
    '51 rue Debussy SAINT-FIRMIN 05800',
    '0429493464',
    NULL,
    5
  ),
  (
    128,
    'CHABAUD',
    'Firmin',
    '69 rue de Paris MEZIERES-SUR-OISE 02240',
    '0327148898',
    NULL,
    2
  ),
  (
    129,
    'REBOUL',
    'Robert',
    '18 rue des Pigeons MAYOT 02800',
    '0350756815',
    NULL,
    2
  ),
  (
    130,
    'TEISSIER',
    'Patrick',
    '35 rue des Cyprés MEZIERES-SUR-OISE 02240',
    '0375111486',
    NULL,
    2
  ),
  (
    131,
    'FERRARI',
    'Catherine',
    '67 rue des Pigeons NEUVILLE-LES-DAMES 01400',
    '0445004508',
    NULL,
    1
  ),
  (
    132,
    'SICARD',
    'Aude',
    '68 rue des Epines BAGERT 09230',
    '0511378600',
    'ALLERGOLOGIE',
    9
  ),
  (
    133,
    'COULOMB',
    'François',
    '38 rue Agniel PELVOUX 05340',
    '0466704922',
    NULL,
    5
  ),
  (
    134,
    'ARMAND',
    'Habib',
    '96 rue de Marigny SAINTE-MARIE 05150',
    '0472203933',
    NULL,
    5
  ),
  (
    135,
    'MARCHETTI',
    'Annie',
    '98 rue des Argonautes FRESSANCOURT 02800',
    '0324461914',
    'HOMEOPATHIE',
    2
  ),
  (
    136,
    'GRAS',
    'Julienne',
    '59 rue des gatinnes BARZY-SUR-MARNE 02850',
    '0311581103',
    NULL,
    2
  ),
  (
    137,
    'REYNIER',
    'Alain',
    '48 rue des Epines VAUX-CHAMPAGNE 08130',
    '0353929274',
    NULL,
    8
  ),
  (
    138,
    'DIAZ',
    'Aristote',
    '42 rue Edouard Hériot BAGERT 09230',
    '0597457423',
    NULL,
    9
  ),
  (
    139,
    'SERRE',
    'Catherine',
    '53 rue des hirondelles SAINT-FIRMIN 05800',
    '0473864972',
    NULL,
    5
  ),
  (
    140,
    'MARIANI',
    'Fatima',
    '7 rue Alphonse Daudet ASTON 09310',
    '0573029393',
    NULL,
    9
  ),
  (
    141,
    'JAUFFRET',
    'Fernand',
    '64 rue des Artistes AX-LES-THERMES 09110',
    '0580503787',
    NULL,
    9
  ),
  (
    142,
    'SERRA',
    'Anne-Lucie',
    '17 rue Pernod DOMMARTIN 01380',
    '0454076144',
    NULL,
    1
  ),
  (
    143,
    'BONIFAY',
    'Anne-Ange',
    '39 rue des Anges SAVINES-LE-LAC 05160',
    '0460795137',
    NULL,
    5
  ),
  (
    144,
    'BERARD',
    'Alice',
    '32 rue des pyramides BEAUMONT-EN-BEINE 02300',
    '0315894255',
    NULL,
    2
  ),
  (
    145,
    'HENRY',
    'Armelle',
    '44 rue Perdue ABBECOURT 02300',
    '0346616676',
    NULL,
    2
  ),
  (
    146,
    'CANO',
    'Anne-Ange',
    '67 rue de la pointe SAINT-LAURENT-SUR-SAONE 01750',
    '0479957609',
    NULL,
    1
  ),
  (
    147,
    'AILLAUD',
    'André',
    '9 rue Mallarmé AUBENTON 02500',
    '0342830645',
    'ACUPONCTURE',
    2
  ),
  (
    148,
    'GRIMAUD',
    'Aurèle',
    '54 rue du stade NEUVILLE-LES-DAMES 01400',
    '0470983399',
    NULL,
    1
  ),
  (
    149,
    'SABATIER',
    'Jimmy',
    '8 rue Albert Camus MONTCY-NOTRE-DAME 08090',
    '0339328684',
    NULL,
    8
  ),
  (
    150,
    'LIEUTAUD',
    'Anaelle',
    '53 rue St Denis BELLOC 09600',
    '0575252091',
    NULL,
    9
  ),
  (
    151,
    'GUICHARD',
    'Armelle',
    '79 rue Beaudelaire BAGERT 09230',
    '0574702561',
    NULL,
    9
  ),
  (
    152,
    'ETIENNE',
    'Catherine',
    '81 rue des Cyprés SIGOYER 05130',
    '0431018220',
    'Pédiatrie',
    5
  ),
  (
    153,
    'GINOUX',
    'Julien',
    '33 rue des Cyprés BAGERT 09230',
    '0590592425',
    NULL,
    9
  ),
  (
    154,
    'FRANCESCHI',
    'Adelphe',
    '7 rue de la poste OYONNAX 01100',
    '0463473029',
    NULL,
    1
  ),
  (
    155,
    'BOUCHET',
    'Hypolite',
    '62 rue Malraux BOURG-EN-BRESSE 01000',
    '0459994942',
    NULL,
    1
  ),
  (
    156,
    'GALLO',
    'Martin',
    '4 rue des perles blanches FLOING 08200',
    '0377624408',
    NULL,
    8
  ),
  (
    157,
    'ROSSO',
    'Aristote',
    '13 rue des Argonautes ABBECOURT 02300',
    '0334073561',
    NULL,
    2
  ),
  (
    158,
    'MOREL',
    'Roby',
    '16 rue Hector Berlioz MACHAULT 08310',
    '0327990795',
    NULL,
    8
  ),
  (
    159,
    'BOREL',
    'Austine',
    '86 rue Pernod SAINT-ANDRE-DE-ROSANS 05150',
    '0475430562',
    NULL,
    5
  ),
  (
    160,
    'RIPERT',
    'François',
    '75 rue Anatole France AX-LES-THERMES 09110',
    '0527300069',
    NULL,
    9
  ),
  (
    161,
    'PAYAN',
    'Aurèle',
    '77 rue des perles blanches BANCIGNY 02140',
    '0336207616',
    NULL,
    2
  ),
  (
    162,
    'LUCIANI',
    'Carole',
    '62 rue de la pointe BRIANCON 05100',
    '0494704120',
    NULL,
    5
  ),
  (
    163,
    'BARRA',
    'Charles-Edouard',
    '96 rue des Pigeons MONTCY-NOTRE-DAME 08090',
    '0351941479',
    NULL,
    8
  ),
  (
    164,
    'GAILLARD',
    'Hamed',
    '88 rue des Armées BELLEY 01300',
    '0425303459',
    NULL,
    1
  ),
  (
    165,
    'AGOSTINI',
    'Amélie',
    '8 rue de la gare AX-LES-THERMES 09110',
    '0543024681',
    NULL,
    9
  ),
  (
    166,
    'GREGOIRE',
    'Yoan',
    '67 rue des Anges SAINT-SAUVEUR 05200',
    '0444643838',
    NULL,
    5
  ),
  (
    167,
    'ROUSSET',
    'Victor',
    '31 rue des Anges BUZAN 09800',
    '0531789114',
    NULL,
    9
  ),
  (
    168,
    'RAYNAUD',
    'Julien',
    '30 rue des Argonautes ATTILLY 02490',
    '0381097843',
    'ACUPONCTURE',
    2
  ),
  (
    169,
    'CAYOL',
    'Astine',
    '63 rue du stade AX-LES-THERMES 09110',
    '0589774185',
    NULL,
    9
  ),
  (
    170,
    'MARTEL',
    'Johnny',
    '63 rue du 14 juillet AX-LES-THERMES 09110',
    '0559787089',
    NULL,
    9
  ),
  (
    171,
    'PELISSIER',
    'Anaelle',
    '72 rue de Paris CHALLES 01450',
    '0436897781',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    172,
    'ALLEMAND',
    'Habib',
    '42 rue des Ormes BILLIAT 01200',
    '0461405456',
    'URGENTISTE',
    1
  ),
  (
    173,
    'FERRIER',
    'Johnny',
    '62 rue du général de Gaulle BOURG-EN-BRESSE 01000',
    '0479899509',
    'OSTEOPATHIE',
    1
  ),
  (
    174,
    'RAYMOND',
    'Anne-Jeanne',
    '9 rue Pasteur SAINT-FIRMIN 05800',
    '0412854347',
    NULL,
    5
  ),
  (
    175,
    'MISTRAL',
    'Françoise',
    '36 rue des Ormes SAINT-CREPIN 05600',
    '0470969763',
    NULL,
    5
  ),
  (
    176,
    'SOLER',
    'Annie',
    '6 rue des Armées ASTON 09310',
    '0561398750',
    NULL,
    9
  ),
  (
    177,
    'DURBEC',
    'Alizée',
    '60 rue Edouard Hériot ASTON 09310',
    '0529196402',
    NULL,
    9
  ),
  (
    178,
    'DOSSETTO',
    'Victor',
    '68 rue de la Pergolat BEDEILLE 09230',
    '0510798563',
    NULL,
    9
  ),
  (
    179,
    'FERRER',
    'Amiel',
    '48 rue Alphonse Daudet FLOING 08200',
    '0367188526',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    180,
    'FILIPPI',
    'Serge',
    '13 rue des Epines BETTANT 01500',
    '0415842763',
    NULL,
    1
  ),
  (
    181,
    'BASSO',
    'Anne-Lucie',
    '91 rue Lampion HOUDILCOURT 08190',
    '0360919149',
    NULL,
    8
  ),
  (
    182,
    'GIL',
    'Firmin',
    '79 rue Commandant Mouchotte SAVINES-LE-LAC 05160',
    '0454186158',
    'OSTEOPATHIE',
    5
  ),
  (
    183,
    'POLI',
    'Jules',
    '41 rue Louis Aragon SAINT-LAURENT-SUR-SAONE 01750',
    '0470580820',
    NULL,
    1
  ),
  (
    184,
    'CHAUVIN',
    'Irénée',
    '25 rue Lampion BLYES 01150',
    '0462212615',
    NULL,
    1
  ),
  (
    185,
    'MARTINO',
    'Anne-Marie',
    '21 rue de la Pergolat AX-LES-THERMES 09110',
    '0552002239',
    NULL,
    9
  ),
  (
    186,
    'ESTIENNE',
    'Ines',
    '81 rue du 14 juillet BELLOC 09600',
    '0579065527',
    NULL,
    9
  ),
  (
    187,
    'GOUIRAN',
    'Aurèle',
    '82 rue des Anges MEZIERES-SUR-OISE 02240',
    '0372146119',
    NULL,
    2
  ),
  (
    188,
    'VERNET',
    'Ingrid',
    '2 rue de la rose BARZY-SUR-MARNE 02850',
    '0374513763',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    189,
    'ROMANO',
    'Prosper',
    '34 rue Louis Aragon ARROUT 09800',
    '0570233041',
    NULL,
    9
  ),
  (
    190,
    'ROUSSEL',
    'Hamed',
    '54 rue Louis Aragon MACHAULT 08310',
    '0361841793',
    NULL,
    8
  ),
  (
    191,
    'BIANCO',
    'Yoan',
    '69 rue des Accacias BEAUMONT-EN-BEINE 02300',
    '0364444471',
    'ANGEIOLOGIE',
    2
  ),
  (
    192,
    'LOMBARDO',
    'Serge',
    '57 rue du capitaine Crochet MONTCY-NOTRE-DAME 08090',
    '0348000197',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    193,
    'CHEVALIER',
    'Patrice',
    '64 rue Albert Camus SAINT-LAURENT-SUR-SAONE 01750',
    '0427960246',
    NULL,
    1
  ),
  (
    194,
    'JAUBERT',
    'Aristote',
    '5 rue des Cyprés AZY-SUR-MARNE 02400',
    '0352734097',
    NULL,
    2
  ),
  (
    195,
    'FERRATO',
    'Astine',
    '40 rue Louis Aragon MONTCY-NOTRE-DAME 08090',
    '0335541135',
    NULL,
    8
  ),
  (
    196,
    'MOUREN',
    'Anémone',
    '85 rue Hector Berlioz BEZAC 09100',
    '0538796488',
    NULL,
    9
  ),
  (
    197,
    'PINATEL',
    'Anselme',
    '79 rue des Cavaux CHABESTAN 05400',
    '0478991381',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    198,
    'ALBERTINI',
    'Gilles',
    '88 rue Alphonse Daudet BELLOC 09600',
    '0591522693',
    NULL,
    9
  ),
  (
    199,
    'GERARD',
    'Austine',
    '72 rue des Ormes MESSINCOURT 08110',
    '0368355399',
    'GERONTOLOGIE',
    8
  ),
  (
    200,
    'OLIVIERI',
    'Aurèle',
    '53 rue Hector Berlioz FALAISE 08400',
    '0325150351',
    NULL,
    8
  ),
  (
    201,
    'BARTOLI',
    'Nohan',
    '58 rue du 14 juillet AUBENTON 02500',
    '0380869429',
    NULL,
    2
  ),
  (
    202,
    'MOURET',
    'Jimmy',
    '41 rue du Mont FRESSANCOURT 02800',
    '0333010728',
    'HOMEOPATHIE',
    2
  ),
  (
    203,
    'LOMBARDI',
    'Gilles',
    '26 rue du capitaine Fraquasse YONCQ 08210',
    '0355888480',
    NULL,
    8
  ),
  (
    204,
    'ORSINI',
    'Jules',
    '95 rue des gatinnes EVIGNY 08090',
    '0321047751',
    'URGENTISTE',
    8
  ),
  (
    205,
    'MERCIER',
    'Adrien',
    '37 rue de la rose BARENTON-SUR-SERRE 02270',
    '0333061059',
    NULL,
    2
  ),
  (
    206,
    'ASTIER',
    'Astine',
    '29 rue Louis Aragon FLEVILLE 08250',
    '0337878739',
    NULL,
    8
  ),
  (
    207,
    'LECA',
    'Ingrid',
    '95 rue Mallarmé AX-LES-THERMES 09110',
    '0538253531',
    'ALLERGOLOGIE',
    9
  ),
  (
    208,
    'BESSON',
    'Julie',
    '70 rue du Mont BILLIAT 01200',
    '0434858369',
    NULL,
    1
  ),
  (
    209,
    'FONTAINE',
    'Jules',
    '87 rue des hirondelles FLOING 08200',
    '0366452640',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    210,
    'MALLET',
    'sabine',
    '70 rue des Ormes LAVAL-MORENCY 08150',
    '0313786191',
    NULL,
    8
  ),
  (
    211,
    'DALMASSO',
    'Anne-Sophie',
    '72 rue de Paris AMBRIEF 02200',
    '0396888350',
    NULL,
    2
  ),
  (
    212,
    'COLOMBANI',
    'Julienne',
    '95 rue de du général Scott SAINT-FIRMIN 05800',
    '0499781511',
    NULL,
    5
  ),
  (
    213,
    'SANNA',
    'Prosper',
    '40 rue du stade CHEZY-SUR-MARNE 02570',
    '0370552277',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    214,
    'GERMAIN',
    'François',
    '21 rue des oiseaux AUBENTON 02500',
    '0347608567',
    NULL,
    2
  ),
  (
    215,
    'BERGER',
    'Béatrice',
    '91 rue de Paris BARENTON-SUR-SERRE 02270',
    '0332630528',
    NULL,
    2
  ),
  (
    216,
    'MULLER',
    'Alice',
    '14 rue de la Tour PELVOUX 05340',
    '0497349269',
    NULL,
    5
  ),
  (
    217,
    'DANIEL',
    'Hypolite',
    '4 rue Petit AX-LES-THERMES 09110',
    '0592259965',
    NULL,
    9
  ),
  (
    218,
    'ACHARD',
    'Dominique',
    '17 rue Victor Hugo NEUVILLE-LES-DAMES 01400',
    '0436894892',
    NULL,
    1
  ),
  (
    219,
    'BENEDETTI',
    'Précilia',
    '46 rue Perdue MONT-LAURENT 08130',
    '0357123782',
    NULL,
    8
  ),
  (
    220,
    'RAVEL',
    'Patrice',
    '37 rue des perles blanches AUGIREIN 09800',
    '0514467307',
    NULL,
    9
  ),
  (
    221,
    'BERNARDI',
    'Catherine',
    '18 rue de la Pergolat CHABESTAN 05400',
    '0433787136',
    'Pédiatrie',
    5
  ),
  (
    222,
    'LATIL',
    'Anne-Jeanne',
    '61 rue Malraux SAVINES-LE-LAC 05160',
    '0425403948',
    NULL,
    5
  ),
  (
    223,
    'MAUNIER',
    'Martial',
    '39 rue des Pigeons FRESSANCOURT 02800',
    '0376405689',
    NULL,
    2
  ),
  (
    224,
    'DUPUY',
    'Ines',
    '36 rue du général de Gaulle AX-LES-THERMES 09110',
    '0571237673',
    NULL,
    9
  ),
  (
    225,
    'MOULIN',
    'Fatima',
    '27 rue des Ormes BARENTON-SUR-SERRE 02270',
    '0369886219',
    NULL,
    2
  ),
  (
    226,
    'DUPONT',
    'Cristophe',
    '35 rue Commandant Mouchotte CHEZY-SUR-MARNE 02570',
    '0399128847',
    NULL,
    2
  ),
  (
    227,
    'MARINO',
    'Charles-Edouard',
    '69 rue de Paris BRIANCON 05100',
    '0486522042',
    'ACUPONCTURE',
    5
  ),
  (
    228,
    'FAVIER',
    'Alice',
    '64 rue de Paris SORBIERS 05150',
    '0498218342',
    'ANGEIOLOGIE',
    5
  ),
  (
    229,
    'PELLEGRINO',
    'Johnny',
    '4 rue des Lilas BELLOC 09600',
    '0583708661',
    NULL,
    9
  ),
  (
    230,
    'PERROT',
    'Marie',
    '27 rue du stade NEUVILLE-LES-DAMES 01400',
    '0440602180',
    NULL,
    1
  ),
  (
    231,
    'LUCCHESI',
    'Patrice',
    '25 rue des Néfliers AGUILCOURT 02190',
    '0313705112',
    NULL,
    2
  ),
  (
    232,
    'RICCI',
    'Roby',
    '74 rue de Marigny JUNIVILLE 08310',
    '0370618394',
    NULL,
    8
  ),
  (
    233,
    'AUGIER',
    'François',
    '40 rue Commandant Mouchotte BOURG-EN-BRESSE 01000',
    '0466232870',
    'ANGEIOLOGIE',
    1
  ),
  (
    234,
    'MANCINI',
    'Anne-Lucie',
    '28 rue de la poste MONCEAU-SUR-OISE 02120',
    '0337880516',
    NULL,
    2
  ),
  (
    235,
    'BRUNEL',
    'Marie',
    '65 rue des Accacias MEZIERES-SUR-OISE 02240',
    '0347429128',
    NULL,
    2
  ),
  (
    236,
    'MUNOZ',
    'Irénée',
    '66 rue Victor Hugo ASTON 09310',
    '0545396012',
    'HOMEOPATHIE',
    9
  ),
  (
    237,
    'MUSSO',
    'Aurèle',
    '78 rue du 14 juillet NEUVILLE-LES-DAMES 01400',
    '0436441368',
    NULL,
    1
  ),
  (
    238,
    'CONTE',
    'Jimmy',
    '31 rue des Cavaux BOURG-EN-BRESSE 01000',
    '0489010528',
    NULL,
    1
  ),
  (
    239,
    'MORETTI',
    'Jordan',
    '56 rue du Mont BRIANCON 05100',
    '0497686569',
    NULL,
    5
  ),
  (
    240,
    'COMBE',
    'Andrew',
    '5 rue des Pigeons ATTILLY 02490',
    '0317928011',
    NULL,
    2
  ),
  (
    241,
    'PASTOR',
    'Andrée',
    '9 rue de Paris CAMON 09500',
    '0575615612',
    NULL,
    9
  ),
  (
    242,
    'PHILIP',
    'Aurélien',
    '34 rue des perles blanches HERBEUVAL 08370',
    '0354324365',
    NULL,
    8
  ),
  (
    243,
    'NOEL',
    'Caline',
    '90 rue des Pigeons BETTANT 01500',
    '0441422871',
    NULL,
    1
  ),
  (
    244,
    'PAULEAU',
    'Bertrand',
    '88 rue Mallarmé CAMON 09500',
    '0519717031',
    NULL,
    9
  ),
  (
    245,
    'MOREAU',
    'Anne-Lucie',
    '31 rue St Denis AVANCON 05230',
    '0476620839',
    NULL,
    5
  ),
  (
    246,
    'DIDIER',
    'Anne-Marie',
    '32 rue Petit BOULIGNEUX 01330',
    '0429892782',
    NULL,
    1
  ),
  (
    247,
    'MASSON',
    'Anne',
    '96 rue des pyramides SAINT-FIRMIN 05800',
    '0430056957',
    NULL,
    5
  ),
  (
    248,
    'GRIMALDI',
    'Jordan',
    '71 rue Lampion ROCHEBRUNE 05190',
    '0422193913',
    NULL,
    5
  ),
  (
    249,
    'MAS',
    'Hector',
    '39 rue des Chantereines SAINT-CREPIN 05600',
    '0427945468',
    NULL,
    5
  ),
  (
    250,
    'ALLEGRE',
    'Patrice',
    '35 rue de la gare DOMMARTIN 01380',
    '0412349269',
    NULL,
    1
  ),
  (
    251,
    'MARCHAND',
    'Austine',
    '1 rue Perdue BANCIGNY 02140',
    '0362784487',
    NULL,
    2
  ),
  (
    252,
    'DAVIN',
    'Nohan',
    '87 rue de la poste ORCIERES 05170',
    '0492790588',
    NULL,
    5
  ),
  (
    253,
    'CANOVAS',
    'Adrien',
    '6 rue St Denis NEUVILLE-LES-DAMES 01400',
    '0463805846',
    'URGENTISTE',
    1
  ),
  (
    254,
    'RIVIERE',
    'Aurélien',
    '24 rue Anatole France FALAISE 08400',
    '0394184441',
    NULL,
    8
  ),
  (
    255,
    'MEYER',
    'Anne-Sophie',
    '78 rue Mallarmé BELLOC 09600',
    '0565131061',
    NULL,
    9
  ),
  (
    256,
    'BOUSQUET',
    'Précilia',
    '17 rue de Paris BARZY-SUR-MARNE 02850',
    '0373800189',
    NULL,
    2
  ),
  (
    257,
    'RAMPAL',
    'Béatrice',
    '65 rue des Cyprés ASTON 09310',
    '0556222808',
    NULL,
    9
  ),
  (
    258,
    'FRANCOIS',
    'Alain',
    '12 rue des oiseaux BEAUMONT-EN-BEINE 02300',
    '0336437836',
    NULL,
    2
  ),
  (
    259,
    'BELLON',
    'Jérémy',
    '13 rue Louis Aragon ARROUT 09800',
    '0579019785',
    'GERONTOLOGIE',
    9
  ),
  (
    260,
    'PINNA',
    'Alice',
    '42 rue des hirondelles SAINT-LAURENT-SUR-SAONE 01750',
    '0418404333',
    NULL,
    1
  ),
  (
    261,
    'MASSE',
    'Serge',
    '54 rue Debussy AUDRESSEIN 09800',
    '0589986579',
    NULL,
    9
  ),
  (
    262,
    'PELLEGRINI',
    'Bertrand',
    '16 rue de la Tour MONTIGNY-SUR-MEUSE 08170',
    '0362958231',
    NULL,
    8
  ),
  (
    263,
    'JACQUET',
    'Alizée',
    '85 rue Alphonse Daudet SAINT-SAUVEUR 05200',
    '0469350553',
    NULL,
    5
  ),
  (
    264,
    'SEGURA',
    'Irénée',
    '54 rue de Marigny PELVOUX 05340',
    '0413512651',
    NULL,
    5
  ),
  (
    265,
    'ALLARD',
    'Bertrand',
    '66 rue du capitaine Crochet BILLIAT 01200',
    '0430273395',
    'ALLERGOLOGIE',
    1
  ),
  (
    266,
    'PEYRE',
    'Reissa',
    '92 rue des Epines BOURG-EN-BRESSE 01000',
    '0462567494',
    NULL,
    1
  ),
  (
    267,
    'BARRAL',
    'Anne-Lucie',
    '58 rue des Anges FRESSANCOURT 02800',
    '0397948858',
    'GERONTOLOGIE',
    2
  ),
  (
    268,
    'GABRIEL',
    'Alain',
    '13 rue Albert Camus BAGERT 09230',
    '0561056383',
    NULL,
    9
  ),
  (
    269,
    'ORTEGA',
    'Rodolphe',
    '4 rue Bonaparte NEUVILLE-LES-DAMES 01400',
    '0499930510',
    'ALLERGOLOGIE',
    1
  ),
  (
    270,
    'DELEUIL',
    'Dominique',
    '31 rue Pernod MESSINCOURT 08110',
    '0354437353',
    'HOMEOPATHIE',
    8
  ),
  (
    271,
    'CHAVE',
    'Amélie',
    '73 rue des Epines AGUILCOURT 02190',
    '0393504917',
    NULL,
    2
  ),
  (
    272,
    'BARBAROUX',
    'Aude',
    '43 rue des Pigeons FALAISE 08400',
    '0395808887',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    273,
    'NICOLAI',
    'Julie',
    '76 rue des Armées CAMON 09500',
    '0558376134',
    'ALLERGOLOGIE',
    9
  ),
  (
    274,
    'FERRAND',
    'Jérémie',
    '71 rue de Poligny SAVINES-LE-LAC 05160',
    '0490614401',
    NULL,
    5
  ),
  (
    275,
    'ICARD',
    'Annie',
    '95 rue des hirondelles AGUILCOURT 02190',
    '0334620315',
    'ALLERGOLOGIE',
    2
  ),
  (
    276,
    'CHARLES',
    'Hypolite',
    '96 rue Commandant Mouchotte BOULIGNEUX 01330',
    '0445325841',
    NULL,
    1
  ),
  (
    277,
    'BLANCHARD',
    'Aline',
    '9 rue des Epines OYONNAX 01100',
    '0463729220',
    NULL,
    1
  ),
  (
    278,
    'GRAZIANI',
    'Martin',
    '93 rue de la Tour BELLEY 01300',
    '0459132484',
    NULL,
    1
  ),
  (
    279,
    'LEROY',
    'Hamed',
    '8 rue Louis Aragon FRESSANCOURT 02800',
    '0311170881',
    NULL,
    2
  ),
  (
    280,
    'VIALE',
    'François',
    '90 rue de la poste AX-LES-THERMES 09110',
    '0553374090',
    NULL,
    9
  ),
  (
    281,
    'REYMOND',
    'Aurèle',
    '92 rue St Denis SORBIERS 05150',
    '0481537923',
    NULL,
    5
  ),
  (
    282,
    'ISOARD',
    'Bernard',
    '71 rue Mallarmé MESSINCOURT 08110',
    '0366706848',
    NULL,
    8
  ),
  (
    283,
    'CAUVIN',
    'Julien',
    '58 rue de Paris CEYZERIAT 01250',
    '0411229599',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    284,
    'CONSTANT',
    'Gilles',
    '66 rue de du général Scott ARROUT 09800',
    '0590561289',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    285,
    'GASTALDI',
    'Astine',
    '18 rue des gatinnes SAINT-LAURENT-SUR-SAONE 01750',
    '0426146482',
    NULL,
    1
  ),
  (
    286,
    'LAGIER',
    'Patrice',
    '12 rue Victor Hugo EVIGNY 08090',
    '0311209603',
    NULL,
    8
  ),
  (
    287,
    'PAGES',
    'Ingrid',
    '74 rue des hirondelles AX-LES-THERMES 09110',
    '0542828199',
    NULL,
    9
  ),
  (
    288,
    'OLIVA',
    'Aurélien',
    '38 rue Debussy BILLIAT 01200',
    '0439490126',
    NULL,
    1
  ),
  (
    289,
    'RE',
    'Yoan',
    '40 rue de la recette MONCEAU-SUR-OISE 02120',
    '0333274282',
    'OSTEOPATHIE',
    2
  ),
  (
    290,
    'PARIS',
    'Adelphe',
    '93 rue Alphonse Daudet OYONNAX 01100',
    '0457686776',
    NULL,
    1
  ),
  (
    291,
    'PORTE',
    'Adrien',
    '82 rue Agniel JUNIVILLE 08310',
    '0352053332',
    'ALLERGOLOGIE',
    8
  ),
  (
    292,
    'FRANCHI',
    'Caline',
    '82 rue St Denis ASTON 09310',
    '0593546818',
    NULL,
    9
  ),
  (
    293,
    'MORELLI',
    'Rodolphe',
    '68 rue des Argonautes MONCEAU-SUR-OISE 02120',
    '0381648585',
    NULL,
    2
  ),
  (
    294,
    'BONNEFOY',
    'Patricia',
    '6 rue de la gare BILLIAT 01200',
    '0474405770',
    'GERONTOLOGIE',
    1
  ),
  (
    295,
    'TASSY',
    'Robert',
    '40 rue des pyramides SAINT-FIRMIN 05800',
    '0482621556',
    NULL,
    5
  ),
  (
    296,
    'ROCCHIA',
    'Fatima',
    '7 rue du renard BUZAN 09800',
    '0560148975',
    NULL,
    9
  ),
  (
    297,
    'NGUYEN',
    'Carole',
    '77 rue Anatole France MESSINCOURT 08110',
    '0361849887',
    NULL,
    8
  ),
  (
    298,
    'PADOVANI',
    'Jordan',
    '20 rue de la recette SAINT-ANDRE-DE-ROSANS 05150',
    '0432143599',
    'ANGEIOLOGIE',
    5
  ),
  (
    299,
    'GUILLAUME',
    'Patrice',
    '10 rue du capitaine Crochet CHALLES 01450',
    '0479473742',
    'ALLERGOLOGIE',
    1
  ),
  (
    300,
    'MOUTON',
    'Astine',
    '98 rue du renard BLYES 01150',
    '0447475896',
    NULL,
    1
  ),
  (
    301,
    'ADAM',
    'Anselme',
    '78 rue de la poste OYONNAX 01100',
    '0465535519',
    NULL,
    1
  ),
  (
    302,
    'POGGI',
    'Aurèle',
    '63 rue de la gare CHABESTAN 05400',
    '0434955199',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    303,
    'CHAMBON',
    'Jérome',
    '27 rue des Chantereines BARZY-SUR-MARNE 02850',
    '0328609452',
    NULL,
    2
  ),
  (
    304,
    'FLORES',
    'Victor',
    '70 rue de la Pergolat ABBECOURT 02300',
    '0397808656',
    NULL,
    2
  ),
  (
    305,
    'MERLIN',
    'Anne-Laure',
    '58 rue du général de Gaulle FALAISE 08400',
    '0381506423',
    NULL,
    8
  ),
  (
    306,
    'MAURY',
    'Hector',
    '41 rue Malraux SIGOYER 05130',
    '0447077417',
    NULL,
    5
  ),
  (
    307,
    'MOHAMED',
    'Anne-Jeanne',
    '12 rue Louis Aragon THIN-LE-MOUTIER 08460',
    '0351239489',
    NULL,
    8
  ),
  (
    308,
    'MERLE',
    'Anne-Lucie',
    '16 rue Blainville SAVINES-LE-LAC 05160',
    '0474386707',
    NULL,
    5
  ),
  (
    309,
    'MARTY',
    'Jérémy',
    '53 rue de la pointe AUGIREIN 09800',
    '0517209857',
    NULL,
    9
  ),
  (
    310,
    'SANTINI',
    'Anne',
    '70 rue de la rose ABBECOURT 02300',
    '0315174364',
    NULL,
    2
  ),
  (
    311,
    'ALBERT',
    'Armelle',
    '27 rue Blainville SIGOYER 05130',
    '0487157453',
    NULL,
    5
  ),
  (
    312,
    'BRUNA',
    'Camille',
    '90 rue Mallarmé PELVOUX 05340',
    '0462682764',
    NULL,
    5
  ),
  (
    313,
    'MORIN',
    'Anaelle',
    '73 rue des Cavaux FEPIN 08170',
    '0347605928',
    NULL,
    8
  ),
  (
    314,
    'MARIE',
    'Carole',
    '82 rue Blainville BILLIAT 01200',
    '0489580183',
    NULL,
    1
  ),
  (
    315,
    'DUFOUR',
    'Rosalie',
    '66 rue des Princes SORBIERS 05150',
    '0447973887',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    316,
    'PIERRE',
    'Fatima',
    '38 rue Hector Berlioz SORBIERS 05150',
    '0489828043',
    NULL,
    5
  ),
  (
    317,
    'LAFONT',
    'Anne-Jeanne',
    '60 rue Victor Hugo NEUVILLE-LES-DAMES 01400',
    '0466135862',
    NULL,
    1
  ),
  (
    318,
    'PIGNOL',
    'Hypolite',
    '26 rue Alphonse Daudet BETTANT 01500',
    '0496740768',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    319,
    'ESTEVE',
    'Sophie',
    '37 rue Alphonse Daudet AX-LES-THERMES 09110',
    '0550507761',
    NULL,
    9
  ),
  (
    320,
    'PICCA',
    'Anne-Laure',
    '96 rue du capitaine Fraquasse AUBENTON 02500',
    '0332042330',
    'URGENTISTE',
    2
  ),
  (
    321,
    'JOLY',
    'Caline',
    '84 rue des Néfliers SAINT-ANDRE-DE-ROSANS 05150',
    '0441770926',
    NULL,
    5
  ),
  (
    322,
    'ROBIN',
    'Amiel',
    '11 rue Commandant Hériot ARROUT 09800',
    '0530054025',
    'GERONTOLOGIE',
    9
  ),
  (
    323,
    'MONTI',
    'Adelphe',
    '1 rue des Princes SIGOYER 05130',
    '0446366196',
    NULL,
    5
  ),
  (
    324,
    'NEGRE',
    'Alain',
    '76 rue Commandant Mouchotte AX-LES-THERMES 09110',
    '0510808813',
    NULL,
    9
  ),
  (
    325,
    'GIORGI',
    'Gilles',
    '64 rue Commandant Hériot ARANDAS 01230',
    '0466707367',
    NULL,
    1
  ),
  (
    326,
    'ESCOFFIER',
    'Fernand',
    '66 rue du 14 juillet OYONNAX 01100',
    '0446432036',
    NULL,
    1
  ),
  (
    327,
    'VALENTIN',
    'Andrée',
    '76 rue des Cavaux SORBIERS 05150',
    '0433833354',
    NULL,
    5
  ),
  (
    328,
    'MOLINA',
    'Robert',
    '67 rue du capitaine Crochet FRESSANCOURT 02800',
    '0396745829',
    NULL,
    2
  ),
  (
    329,
    'TRON',
    'Charles',
    '81 rue Mallarmé BEAUMONT-EN-BEINE 02300',
    '0318112146',
    NULL,
    2
  ),
  (
    330,
    'JULLIAN',
    'Jérémie',
    '49 rue de la Pergolat REOTIER 05600',
    '0452299934',
    'ACUPONCTURE',
    5
  ),
  (
    331,
    'VIGNE',
    'sabine',
    '73 rue Agniel FEPIN 08170',
    '0340871558',
    NULL,
    8
  ),
  (
    332,
    'JOUBERT',
    'Patrice',
    '26 rue du renard OYONNAX 01100',
    '0499920026',
    NULL,
    1
  ),
  (
    333,
    'BAYLE',
    'Jules',
    '21 rue Pasteur SORBIERS 05150',
    '0497153129',
    NULL,
    5
  ),
  (
    334,
    'BOEUF',
    'Alizée',
    '69 rue de la Pergolat BELLEY 01300',
    '0485963418',
    NULL,
    1
  ),
  (
    335,
    'CAIRE',
    'Armelle',
    '16 rue des Anses bleues VAUX-CHAMPAGNE 08130',
    '0334124353',
    NULL,
    8
  ),
  (
    336,
    'GOUIRAND',
    'Hector',
    '73 rue du général de Gaulle AUDRESSEIN 09800',
    '0593896893',
    NULL,
    9
  ),
  (
    337,
    'ROUSTAN',
    'Aristote',
    '78 rue des Argonautes AUGIREIN 09800',
    '0560183642',
    NULL,
    9
  ),
  (
    338,
    'ROURE',
    'Anne-Jeanne',
    '20 rue Commandant Hériot BEAUMONT-EN-BEINE 02300',
    '0335062492',
    NULL,
    2
  ),
  (
    339,
    'PEYRON',
    'Anne-Jeanne',
    '38 rue Louis Aragon SAINTE-MARIE 05150',
    '0413931222',
    NULL,
    5
  ),
  (
    340,
    'LAGET',
    'Jordan',
    '96 rue Bonaparte SAINTE-MARIE 05150',
    '0419574602',
    NULL,
    5
  ),
  (
    341,
    'CARMONA',
    'Cristophe',
    '65 rue de la recette HERBEUVAL 08370',
    '0353219537',
    NULL,
    8
  ),
  (
    342,
    'ROUSSEAU',
    'Bénédicte',
    '2 rue des Armées FALAISE 08400',
    '0392106994',
    NULL,
    8
  ),
  (
    343,
    'ROMERO',
    'sabine',
    '66 rue des Epines HOUDILCOURT 08190',
    '0396081849',
    'HOMEOPATHIE',
    8
  ),
  (
    344,
    'BON',
    'Serge',
    '6 rue du stade NEUVILLE-LES-DAMES 01400',
    '0441736702',
    NULL,
    1
  ),
  (
    345,
    'GAUDIN',
    'Adelphe',
    '26 rue des Pigeons FEPIN 08170',
    '0383040737',
    'ACUPONCTURE',
    8
  ),
  (
    346,
    'DELMAS',
    'Julienne',
    '89 rue Pasteur ASTON 09310',
    '0558895500',
    NULL,
    9
  ),
  (
    347,
    'PUJOL',
    'Austine',
    '96 rue St Denis BRIANCON 05100',
    '0442356662',
    NULL,
    5
  ),
  (
    348,
    'BOUVIER',
    'Anne-Marie',
    '88 rue du capitaine Fraquasse FLOING 08200',
    '0337248343',
    'Pédiatre',
    8
  ),
  (
    349,
    'AMIEL',
    'Austine',
    '86 rue des Lilas BAGERT 09230',
    '0564227642',
    NULL,
    9
  ),
  (
    350,
    'CONTRERAS',
    'Aristote',
    '13 rue des Néfliers ARROUT 09800',
    '0578693214',
    NULL,
    9
  ),
  (
    351,
    'FIORI',
    'Reissa',
    '56 rue du Mont THIN-LE-MOUTIER 08460',
    '0379320791',
    NULL,
    8
  ),
  (
    352,
    'TARDIEU',
    'sabine',
    '96 rue du général de Gaulle BELLOC 09600',
    '0517690862',
    NULL,
    9
  ),
  (
    353,
    'LOUIS',
    'Marie',
    '62 rue Hector Berlioz SAVOURNON 05700',
    '0443661423',
    'ACUPONCTURE',
    5
  ),
  (
    354,
    'CASTELLI',
    'Irénée',
    '68 rue de la pointe BARENTON-SUR-SERRE 02270',
    '0313123217',
    NULL,
    2
  ),
  (
    355,
    'ESPANET',
    'Adrien',
    '2 rue des hirondelles HAUTEVILLE 02120',
    '0385350100',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    356,
    'GONZALES',
    'Caline',
    '13 rue du Mont SAINT-FIRMIN 05800',
    '0439120333',
    NULL,
    5
  ),
  (
    357,
    'ANTOINE',
    'Camille',
    '38 rue des Chantereines MAYOT 02800',
    '0390403626',
    'GERONTOLOGIE',
    2
  ),
  (
    358,
    'PIETRI',
    'Ingrid',
    '73 rue des gatinnes SAINT-ANDRE-DE-ROSANS 05150',
    '0455695337',
    NULL,
    5
  ),
  (
    359,
    'VELLA',
    'Jordan',
    '47 rue de Paris ROCHEBRUNE 05190',
    '0488575731',
    'URGENTISTE',
    5
  ),
  (
    360,
    'SAMAT',
    'Andrew',
    '40 rue Anatole France LAUNOIS-SUR-VENCE 08430',
    '0395797173',
    'OSTEOPATHIE',
    8
  ),
  (
    361,
    'BAUDIN',
    'Aline',
    '27 rue des Anges SAINT-FIRMIN 05800',
    '0454426212',
    NULL,
    5
  ),
  (
    362,
    'GILLY',
    'Aurèle',
    '87 rue de Poligny SAINT-ANDRE-DE-ROSANS 05150',
    '0437604768',
    NULL,
    5
  ),
  (
    363,
    'SILVESTRE',
    'Carole',
    '17 rue Debussy AVANCON 05230',
    '0435416748',
    NULL,
    5
  ),
  (
    364,
    'LAN',
    'Adelphe',
    '74 rue des Néfliers AUBENTON 02500',
    '0369486130',
    NULL,
    2
  ),
  (
    365,
    'GONTIER',
    'Irénée',
    '85 rue du capitaine Crochet JOIGNY-SUR-MEUSE 08700',
    '0397935550',
    'OSTEOPATHIE',
    8
  ),
  (
    366,
    'MATHERON',
    'Aurélien',
    '92 rue des oiseaux SAVOURNON 05700',
    '0452076802',
    NULL,
    5
  ),
  (
    367,
    'CARVIN',
    'John',
    '74 rue des oiseaux BILLIAT 01200',
    '0463193696',
    NULL,
    1
  ),
  (
    368,
    'DAHAN',
    'Jules',
    '84 rue du stade OYONNAX 01100',
    '0430814652',
    'GERONTOLOGIE',
    1
  ),
  (
    369,
    'VERAN',
    'Robert',
    '46 rue des Accacias OYONNAX 01100',
    '0456783280',
    NULL,
    1
  ),
  (
    370,
    'GOUIN',
    'Carole',
    '18 rue de la Tour NEUVILLE-LES-DAMES 01400',
    '0411713298',
    NULL,
    1
  ),
  (
    371,
    'GIUDICELLI',
    'Firmin',
    '73 rue du Mont ARROUT 09800',
    '0532011995',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    372,
    'PIERI',
    'Amélie',
    '79 rue Lampion SAINT-LAURENT-SUR-SAONE 01750',
    '0499820900',
    NULL,
    1
  ),
  (
    373,
    'LERDA',
    'Patrice',
    '14 rue des Lilas CHEZY-SUR-MARNE 02570',
    '0310790961',
    NULL,
    2
  ),
  (
    374,
    'BERNARDINI',
    'Martial',
    '32 rue de la poste JOIGNY-SUR-MEUSE 08700',
    '0351863890',
    NULL,
    8
  ),
  (
    375,
    'FONTANA',
    'John',
    '81 rue Edouard Hériot MAYOT 02800',
    '0361434057',
    NULL,
    2
  ),
  (
    376,
    'VENTRE',
    'Prosper',
    '99 rue des Pigeons SIGOYER 05130',
    '0420048322',
    'URGENTISTE',
    5
  ),
  (
    377,
    'REVEST',
    'Camille',
    '88 rue des oiseaux JUNIVILLE 08310',
    '0370063871',
    'null',
    8
  ),
  (
    378,
    'MONIER',
    'Adrien',
    '21 rue de la rose AX-LES-THERMES 09110',
    '0513336137',
    NULL,
    9
  ),
  (
    379,
    'FARINA',
    'Victor',
    '86 rue des Armées DOMMARTIN 01380',
    '0447458241',
    NULL,
    1
  ),
  (
    380,
    'PERETTI',
    'Bertrand',
    '91 rue de la rose FEPIN 08170',
    '0398107919',
    NULL,
    8
  ),
  (
    381,
    'PELLISSIER',
    'Serge',
    '58 rue Pernod MONCEAU-SUR-OISE 02120',
    '0322992429',
    NULL,
    2
  ),
  (
    382,
    'SORRENTINO',
    'Julienne',
    '93 rue des Néfliers MONCEAU-SUR-OISE 02120',
    '0348940958',
    'URGENTISTE',
    2
  ),
  (
    383,
    'MARINI',
    'Caline',
    '8 rue des Anges FEPIN 08170',
    '0364882312',
    NULL,
    8
  ),
  (
    384,
    'BONNAUD',
    'Françoise',
    '76 rue de Marigny CAMON 09500',
    '0522112610',
    'OSTEOPATHIE',
    9
  ),
  (
    385,
    'BERAUD',
    'Françoise',
    '3 rue des Anges AUBENTON 02500',
    '0397776971',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    386,
    'CADENEL',
    'Serge',
    '92 rue de Paris THIN-LE-MOUTIER 08460',
    '0365834913',
    'ACUPONCTURE',
    8
  ),
  (
    387,
    'SUZANNE',
    'Prosper',
    '24 rue de du général Scott BRIANCON 05100',
    '0493163850',
    NULL,
    5
  ),
  (
    388,
    'GIBERT',
    'Dominique',
    '4 rue Hector Berlioz AX-LES-THERMES 09110',
    '0585018637',
    NULL,
    9
  ),
  (
    389,
    'CAMPANA',
    'Adrien',
    '30 rue Agniel SAINT-FIRMIN 05800',
    '0483927775',
    NULL,
    5
  ),
  (
    390,
    'PIRAS',
    'Adelphe',
    '4 rue des Pigeons BARZY-SUR-MARNE 02850',
    '0391947902',
    NULL,
    2
  ),
  (
    391,
    'GORLIER',
    'sabine',
    '9 rue du Mont BRIANCON 05100',
    '0423613710',
    NULL,
    5
  ),
  (
    392,
    'FERRETTI',
    'Anne-Lucie',
    '81 rue des Lilas ABBECOURT 02300',
    '0357752522',
    'HOMEOPATHIE',
    2
  ),
  (
    393,
    'ROUGIER',
    'Aurèle',
    '78 rue du renard SAINT-LAURENT-SUR-SAONE 01750',
    '0499152521',
    'URGENTISTE',
    1
  ),
  (
    394,
    'BONETTO',
    'Julienne',
    '16 rue de la gare BELLOC 09600',
    '0567014080',
    NULL,
    9
  ),
  (
    395,
    'MARIOTTI',
    'Aurélien',
    '41 rue des Anses bleues ASTON 09310',
    '0528108863',
    'OSTEOPATHIE',
    9
  ),
  (
    396,
    'LORENZI',
    'François',
    '52 rue des Epines ATTILLY 02490',
    '0395338199',
    NULL,
    2
  ),
  (
    397,
    'BARET',
    'Bénédicte',
    '88 rue du renard ORCIERES 05170',
    '0452809250',
    NULL,
    5
  ),
  (
    398,
    'SARDOU',
    'Vénus',
    '84 rue des Armées MONTIGNY-SUR-MEUSE 08170',
    '0332562475',
    NULL,
    8
  ),
  (
    399,
    'SERRANO',
    'Camille',
    '20 rue Anatole France MACHAULT 08310',
    '0394066862',
    NULL,
    8
  ),
  (
    400,
    'BORGHINO',
    'Carole',
    '90 rue Bonaparte OYONNAX 01100',
    '0446953066',
    NULL,
    1
  ),
  (
    401,
    'PONTIER',
    'Cristophe',
    '22 rue Perdue AX-LES-THERMES 09110',
    '0533152140',
    NULL,
    9
  ),
  (
    402,
    'TOCHE',
    'Anne-Laure',
    '73 rue Agniel BOURG-EN-BRESSE 01000',
    '0434367086',
    NULL,
    1
  ),
  (
    403,
    'VALETTE',
    'Martial',
    '61 rue des Cavaux SAINT-LAURENT-SUR-SAONE 01750',
    '0460367150',
    NULL,
    1
  ),
  (
    404,
    'DONADIO',
    'Aurélien',
    '44 rue des Epines OYONNAX 01100',
    '0439758191',
    NULL,
    1
  ),
  (
    405,
    'BAILLE',
    'Aude',
    '98 rue des Accacias SIGOYER 05130',
    '0497650512',
    'OSTEOPATHIE',
    5
  ),
  (
    406,
    'SIGNORET',
    'sabine',
    '61 rue de la Pergolat AUDRESSEIN 09800',
    '0566668732',
    'ACUPONCTURE',
    9
  ),
  (
    407,
    'CONTI',
    'Jules',
    '45 rue du capitaine Crochet EVIGNY 08090',
    '0351073860',
    NULL,
    8
  ),
  (
    408,
    'VILLARD',
    'Rodolphe',
    '89 rue des oiseaux BOURG-EN-BRESSE 01000',
    '0436599230',
    NULL,
    1
  ),
  (
    409,
    'GUILLOT',
    'Habib',
    '97 rue Pernod AZY-SUR-MARNE 02400',
    '0380003737',
    'ACUPONCTURE',
    2
  ),
  (
    410,
    'TEISSEIRE',
    'Bernard',
    '81 rue des Epines SAINT-CREPIN 05600',
    '0477707175',
    NULL,
    5
  ),
  (
    411,
    'GIUSTI',
    'Habib',
    '83 rue Malraux ABBECOURT 02300',
    '0310290366',
    NULL,
    2
  ),
  (
    412,
    'ROUVIERE',
    'Mohammed',
    '70 rue du 14 juillet MONT-LAURENT 08130',
    '0398765209',
    NULL,
    8
  ),
  (
    413,
    'CLAVEL',
    'François',
    '71 rue du 14 juillet SAINT-SAUVEUR 05200',
    '0418376454',
    'ACUPONCTURE',
    5
  ),
  (
    414,
    'TRICON',
    'Rodolphe',
    '99 rue Alphonse Daudet YONCQ 08210',
    '0367093394',
    NULL,
    8
  ),
  (
    415,
    'PIGNATEL',
    'Catherine',
    '4 rue des Armées AUBENTON 02500',
    '0368054817',
    NULL,
    2
  ),
  (
    416,
    'CECCALDI',
    'Bernard',
    '64 rue Commandant Hériot TRAVECY 02800',
    '0315061114',
    NULL,
    2
  ),
  (
    417,
    'RAOUX',
    'Armelle',
    '79 rue des Epines EVIGNY 08090',
    '0334511766',
    NULL,
    8
  ),
  (
    418,
    'FORTE',
    'Julie',
    '13 rue de la pointe ASTON 09310',
    '0518564010',
    NULL,
    9
  ),
  (
    419,
    'CHARRIER',
    'Dominique',
    '62 rue Malraux AUGIREIN 09800',
    '0585303807',
    NULL,
    9
  ),
  (
    420,
    'PERRIER',
    'Charles',
    '71 rue Anatole France CAMON 09500',
    '0569559189',
    NULL,
    9
  ),
  (
    421,
    'MOUSTIER',
    'Cristophe',
    '85 rue des Argonautes AZY-SUR-MARNE 02400',
    '0316188975',
    'HOMEOPATHIE',
    2
  ),
  (
    422,
    'BELTRANDO',
    'Dominique',
    '21 rue des Artistes BELLEY 01300',
    '0428818011',
    'OSTEOPATHIE',
    1
  ),
  (
    423,
    'BORG',
    'Précilia',
    '82 rue Victor Hugo LAVAL-MORENCY 08150',
    '0391802125',
    NULL,
    8
  ),
  (
    424,
    'DANGELO',
    'André',
    '87 rue Anatole France YONCQ 08210',
    '0311956610',
    NULL,
    8
  ),
  (
    425,
    'RICHIER',
    'Fernand',
    '37 rue du général de Gaulle AUGIREIN 09800',
    '0517286774',
    NULL,
    9
  ),
  (
    426,
    'AMAR',
    'Hamed',
    '72 rue des hirondelles AGUILCOURT 02190',
    '0334618532',
    NULL,
    2
  ),
  (
    427,
    'PERRET',
    'Hector',
    '20 rue du capitaine Fraquasse BELLEY 01300',
    '0447089672',
    'ANGEIOLOGIE',
    1
  ),
  (
    428,
    'ARRIGHI',
    'Patricia',
    '9 rue des gatinnes CHALLES 01450',
    '0489226737',
    NULL,
    1
  ),
  (
    429,
    'GUIEU',
    'Aline',
    '12 rue des Anges BRIANCON 05100',
    '0498699637',
    NULL,
    5
  ),
  (
    430,
    'ARTAUD',
    'Austine',
    '37 rue des Armées SIGOYER 05130',
    '0485539010',
    NULL,
    5
  ),
  (
    431,
    'GUIDI',
    'Hypolite',
    '33 rue de Paris TRAVECY 02800',
    '0319460470',
    NULL,
    2
  ),
  (
    432,
    'GARABEDIAN',
    'Fernand',
    '80 rue du Mont BAGERT 09230',
    '0570483785',
    NULL,
    9
  ),
  (
    433,
    'SEGUIN',
    'Anne-Sophie',
    '18 rue de la recette FLOING 08200',
    '0335293346',
    'ALLERGOLOGIE',
    8
  ),
  (
    434,
    'ANDREANI',
    'Bénédicte',
    '71 rue des pyramides MONT-LAURENT 08130',
    '0364431472',
    NULL,
    8
  ),
  (
    435,
    'COLONNA',
    'John',
    '35 rue Mallarmé ATTILLY 02490',
    '0384830087',
    NULL,
    2
  ),
  (
    436,
    'FUENTES',
    'Patrick',
    '97 rue du général de Gaulle AUBENTON 02500',
    '0378805449',
    NULL,
    2
  ),
  (
    437,
    'RIZZO',
    'Alice',
    '3 rue des Lilas ABBECOURT 02300',
    '0338216554',
    NULL,
    2
  ),
  (
    438,
    'DONATI',
    'Jérome',
    '67 rue Perdue BEDEILLE 09230',
    '0527487962',
    NULL,
    9
  ),
  (
    439,
    'DAUPHIN',
    'Anne-Jeanne',
    '91 rue Albert Camus SAINT-CREPIN 05600',
    '0464885309',
    NULL,
    5
  ),
  (
    440,
    'SOULIER',
    'Robert',
    '73 rue Pasteur BOURG-EN-BRESSE 01000',
    '0451252312',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    441,
    'VALERO',
    'Marie',
    '51 rue Victor Hugo JOIGNY-SUR-MEUSE 08700',
    '0328058400',
    NULL,
    8
  ),
  (
    442,
    'ROSA',
    'Bénédicte',
    '37 rue Mallarmé SAINT-CREPIN 05600',
    '0472480246',
    NULL,
    5
  ),
  (
    443,
    'MILLET',
    'Hypolite',
    '97 rue Malraux SAINTE-MARIE 05150',
    '0471019122',
    'URGENTISTE',
    5
  ),
  (
    444,
    'MARCELLIN',
    'Anne-Marie',
    '21 rue Blainville MESSINCOURT 08110',
    '0315472355',
    NULL,
    8
  ),
  (
    445,
    'MARCHI',
    'Fatima',
    '32 rue des Armées MEZIERES-SUR-OISE 02240',
    '0335733742',
    NULL,
    2
  ),
  (
    446,
    'PRAT',
    'sabine',
    '52 rue des Pigeons PELVOUX 05340',
    '0424219942',
    'GERONTOLOGIE',
    5
  ),
  (
    447,
    'RINAUDO',
    'Vénus',
    '96 rue des Chantereines FRESSANCOURT 02800',
    '0359036944',
    NULL,
    2
  ),
  (
    448,
    'MOUTTE',
    'Victor',
    '96 rue de Paris BETTANT 01500',
    '0478464491',
    NULL,
    1
  ),
  (
    449,
    'CASTEL',
    'Aurèle',
    '34 rue des oiseaux NEUVILLE-LES-DAMES 01400',
    '0437142230',
    NULL,
    1
  ),
  (
    450,
    'GRAND',
    'Reissa',
    '89 rue des Pigeons PELVOUX 05340',
    '0414138297',
    NULL,
    5
  ),
  (
    451,
    'CROUZET',
    'Camille',
    '5 rue des Anges BUZAN 09800',
    '0550828415',
    NULL,
    9
  ),
  (
    452,
    'FILOSA',
    'Marie',
    '58 rue Victor Hugo BOULIGNEUX 01330',
    '0432323455',
    NULL,
    1
  ),
  (
    453,
    'BIANCOTTO',
    'Camille',
    '89 rue Beaudelaire AUBENTON 02500',
    '0341803965',
    NULL,
    2
  ),
  (
    454,
    'SUSINI',
    'Fatima',
    '59 rue Bonaparte EVIGNY 08090',
    '0326409640',
    NULL,
    8
  ),
  (
    455,
    'LAURENS',
    'Anne-Jeanne',
    '10 rue du capitaine Fraquasse MESSINCOURT 08110',
    '0315685825',
    NULL,
    8
  ),
  (
    456,
    'ALVAREZ',
    'Alice',
    '94 rue des Cyprés SAINT-FIRMIN 05800',
    '0492845898',
    NULL,
    5
  ),
  (
    457,
    'BALLESTER',
    'Aline',
    '83 rue des Cavaux CHALLES 01450',
    '0477868457',
    NULL,
    1
  ),
  (
    458,
    'DOMINICI',
    'Françoise',
    '3 rue des gatinnes FRESSANCOURT 02800',
    '0310422807',
    NULL,
    2
  ),
  (
    459,
    'COLOMBO',
    'Béatrice',
    '86 rue des Accacias MONTIGNY-SUR-MEUSE 08170',
    '0351114264',
    NULL,
    8
  ),
  (
    460,
    'SAHRAOUI',
    'Anne-Ange',
    '17 rue des Accacias JOIGNY-SUR-MEUSE 08700',
    '0354449959',
    NULL,
    8
  ),
  (
    461,
    'IVALDI',
    'Alain',
    '61 rue de du général Scott QUATRE-CHAMPS 08400',
    '0395171820',
    NULL,
    8
  ),
  (
    462,
    'GAUBERT',
    'Alain',
    '10 rue Alphonse Daudet AGUILCOURT 02190',
    '0378125914',
    NULL,
    2
  ),
  (
    463,
    'RENAUD',
    'Aude',
    '73 rue Mallarmé SORBIERS 05150',
    '0415973212',
    'Pédiatrie',
    5
  ),
  (
    464,
    'GUIGUE',
    'Aurélien',
    '5 rue des pyramides SAVINES-LE-LAC 05160',
    '0417672103',
    NULL,
    5
  ),
  (
    465,
    'FELIX',
    'Amiel',
    '44 rue Victor Hugo SIGOYER 05130',
    '0470456938',
    NULL,
    5
  ),
  (
    466,
    'SCOTTO',
    'Aude',
    '45 rue des Lilas FLOING 08200',
    '0347310971',
    NULL,
    8
  ),
  (
    467,
    'ORTIZ',
    'Catherine',
    '88 rue Alphonse Daudet ARROUT 09800',
    '0578689528',
    NULL,
    9
  ),
  (
    468,
    'LEBRE',
    'Alain',
    '57 rue Petit SAINT-LAURENT-SUR-SAONE 01750',
    '0448765649',
    NULL,
    1
  ),
  (
    469,
    'CARTIER',
    'Fatima',
    '47 rue Lampion OYONNAX 01100',
    '0460692244',
    'OSTEOPATHIE',
    1
  ),
  (
    470,
    'MANZON',
    'Anaelle',
    '12 rue Albert Camus AX-LES-THERMES 09110',
    '0569661155',
    NULL,
    9
  ),
  (
    471,
    'CASTELLANI',
    'Julie',
    '3 rue de la pointe SAINT-CREPIN 05600',
    '0435145304',
    NULL,
    5
  ),
  (
    472,
    'FALCO',
    'Alizée',
    '91 rue Blainville OYONNAX 01100',
    '0424443942',
    NULL,
    1
  ),
  (
    473,
    'CLERC',
    'Anselme',
    '58 rue Victor Hugo LAVAL-MORENCY 08150',
    '0387649400',
    NULL,
    8
  ),
  (
    474,
    'REYRE',
    'Rodolphe',
    '57 rue des Epines AZY-SUR-MARNE 02400',
    '0397983251',
    NULL,
    2
  ),
  (
    475,
    'BOSSY',
    'Aristote',
    '2 rue de Poligny FALAISE 08400',
    '0379304135',
    'ANGEIOLOGIE',
    8
  ),
  (
    476,
    'JIMENEZ',
    'Anne-Marie',
    '73 rue du capitaine Crochet CHALLES 01450',
    '0459580046',
    NULL,
    1
  ),
  (
    477,
    'LEFEVRE',
    'Rosalie',
    '88 rue Hector Berlioz SAINT-LAURENT-SUR-SAONE 01750',
    '0460756612',
    NULL,
    1
  ),
  (
    478,
    'PICARD',
    'Julienne',
    '54 rue du 14 juillet BEAUMONT-EN-BEINE 02300',
    '0357974621',
    NULL,
    2
  ),
  (
    479,
    'LEFEBVRE',
    'Bernard',
    '28 rue des perles blanches MONT-LAURENT 08130',
    '0350608229',
    NULL,
    8
  ),
  (
    480,
    'DOL',
    'Ingrid',
    '14 rue de Paris MONTCEAUX 01090',
    '0490462674',
    NULL,
    1
  ),
  (
    481,
    'ALFONSI',
    'Alice',
    '84 rue Albert Camus BLYES 01150',
    '0486949300',
    NULL,
    1
  ),
  (
    482,
    'ROUVIER',
    'Reissa',
    '71 rue des Cavaux FLOING 08200',
    '0371858489',
    NULL,
    8
  ),
  (
    483,
    'GRASSI',
    'Anselme',
    '67 rue Bonaparte MESSINCOURT 08110',
    '0353311714',
    NULL,
    8
  ),
  (
    484,
    'PAULET',
    'Aristote',
    '67 rue du renard BUZAN 09800',
    '0550911167',
    NULL,
    9
  ),
  (
    485,
    'FRANCO',
    'Jules',
    '50 rue des Cyprés BARENTON-SUR-SERRE 02270',
    '0377237270',
    NULL,
    2
  ),
  (
    486,
    'BARONE',
    'François',
    '98 rue du stade MACHAULT 08310',
    '0371879519',
    'OSTEOPATHIE',
    8
  ),
  (
    487,
    'ALLIO',
    'Patricia',
    '8 rue des Pigeons CHEZY-SUR-MARNE 02570',
    '0360797082',
    'OSTEOPATHIE',
    2
  ),
  (
    488,
    'GONNET',
    'Reissa',
    '33 rue Beaudelaire BAGERT 09230',
    '0551753977',
    NULL,
    9
  ),
  (
    489,
    'SANTUCCI',
    'Rosalie',
    '3 rue des Cavaux AMBRIEF 02200',
    '0325834365',
    'GERONTOLOGIE',
    2
  ),
  (
    490,
    'BLANCHET',
    'Irénée',
    '16 rue Bonaparte AVANCON 05230',
    '0429279003',
    'HOMEOPATHIE',
    5
  ),
  (
    491,
    'MATTIO',
    'Armelle',
    '24 rue des Néfliers QUATRE-CHAMPS 08400',
    '0371872007',
    'OSTEOPATHIE',
    8
  ),
  (
    492,
    'ROCCA',
    'Serge',
    '30 rue Albert Camus ARROUT 09800',
    '0563717429',
    NULL,
    9
  ),
  (
    493,
    'RAMBAUD',
    'Bénédicte',
    '29 rue Victor Hugo AUDRESSEIN 09800',
    '0525469712',
    'null',
    9
  ),
  (
    494,
    'DEMARIA',
    'Marie',
    '15 rue de Paris AUBENTON 02500',
    '0396696281',
    NULL,
    2
  ),
  (
    495,
    'DALMAS',
    'Charles-Edouard',
    '12 rue St Denis MONTCEAUX 01090',
    '0492465629',
    NULL,
    1
  ),
  (
    496,
    'BERTIN',
    'Victor',
    '12 rue des Anses bleues SAVINES-LE-LAC 05160',
    '0417736200',
    NULL,
    5
  ),
  (
    497,
    'GILLET',
    'Johnny',
    '35 rue du stade ASTON 09310',
    '0575380150',
    NULL,
    9
  ),
  (
    498,
    'TOMASI',
    'Cristophe',
    '86 rue Mallarmé ORCIERES 05170',
    '0488800978',
    NULL,
    5
  ),
  (
    499,
    'GUIBERT',
    'Julien',
    '38 rue Anatole France AUBENTON 02500',
    '0318610565',
    NULL,
    2
  ),
  (
    500,
    'ALBERTO',
    'François',
    '32 rue du Mont REOTIER 05600',
    '0425989993',
    NULL,
    5
  ),
  (
    501,
    'PONCET',
    'Anaelle',
    '74 rue de la gare FLEVILLE 08250',
    '0325218232',
    NULL,
    8
  ),
  (
    502,
    'DECANIS',
    'Anselme',
    '86 rue Victor Hugo MESSINCOURT 08110',
    '0381133645',
    'null',
    8
  ),
  (
    503,
    'VERA',
    'Cristophe',
    '86 rue Pasteur NEUVILLE-LES-DAMES 01400',
    '0432667697',
    NULL,
    1
  ),
  (
    504,
    'PECOUT',
    'sabine',
    '75 rue des Pigeons BEAUMONT-EN-BEINE 02300',
    '0376547227',
    NULL,
    2
  ),
  (
    505,
    'MORALES',
    'Précilia',
    '66 rue Malraux BUZAN 09800',
    '0513300693',
    NULL,
    9
  ),
  (
    506,
    'CHABOT',
    'Catherine',
    '27 rue de la Pergolat MONTCEAUX 01090',
    '0421383743',
    'ALLERGOLOGIE',
    1
  ),
  (
    507,
    'ANGELINI',
    'Alice',
    '37 rue de Paris CHEZY-SUR-MARNE 02570',
    '0356410090',
    'ANGEIOLOGIE',
    2
  ),
  (
    508,
    'GUTIERREZ',
    'Habib',
    '71 rue Bonaparte AGUILCOURT 02190',
    '0350823331',
    NULL,
    2
  ),
  (
    509,
    'JACQUES',
    'Alain',
    '77 rue des Accacias BRIANCON 05100',
    '0498867503',
    'GERONTOLOGIE',
    5
  ),
  (
    510,
    'BRONDINO',
    'Patricia',
    '3 rue de la Tour BILLIAT 01200',
    '0428025797',
    NULL,
    1
  ),
  (
    511,
    'TOMASINI',
    'Austine',
    '44 rue des Néfliers CHEZY-SUR-MARNE 02570',
    '0363569859',
    NULL,
    2
  ),
  (
    512,
    'FARRUGIA',
    'André',
    '30 rue Hector Berlioz SAINT-FIRMIN 05800',
    '0444332279',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    513,
    'DUMONT',
    'Johnny',
    '36 rue Blainville AUBENTON 02500',
    '0395155855',
    NULL,
    2
  ),
  (
    514,
    'AVON',
    'Aurèle',
    '10 rue du général de Gaulle ARROUT 09800',
    '0554301843',
    NULL,
    9
  ),
  (
    515,
    'FERRARA',
    'Alizée',
    '35 rue des Pigeons MONT-LAURENT 08130',
    '0340963504',
    NULL,
    8
  ),
  (
    516,
    'COQUILLAT',
    'Fatima',
    '16 rue Commandant Hériot BANCIGNY 02140',
    '0334753913',
    NULL,
    2
  ),
  (
    517,
    'SARKISSIAN',
    'Adrien',
    '2 rue Commandant Hériot MONCEAU-SUR-OISE 02120',
    '0352372278',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    518,
    'ALARCON',
    'Andrew',
    '26 rue des pyramides BOULIGNEUX 01330',
    '0469707196',
    NULL,
    1
  ),
  (
    519,
    'GRECO',
    'Anémone',
    '9 rue des Epines BLYES 01150',
    '0440301616',
    NULL,
    1
  ),
  (
    520,
    'PALMIERI',
    'Cristophe',
    '69 rue de la recette DOMMARTIN 01380',
    '0495802726',
    NULL,
    1
  ),
  (
    521,
    'GOMIS',
    'Jules',
    '24 rue Perdue THIN-LE-MOUTIER 08460',
    '0328900829',
    NULL,
    8
  ),
  (
    522,
    'BASTIDE',
    'Aurélien',
    '66 rue des Anges BOULIGNEUX 01330',
    '0417563891',
    NULL,
    1
  ),
  (
    523,
    'TOURREL',
    'François',
    '1 rue Blainville HAUTEVILLE 02120',
    '0317885243',
    NULL,
    2
  ),
  (
    524,
    'REBUFFAT',
    'Irénée',
    '64 rue des perles blanches QUATRE-CHAMPS 08400',
    '0316251329',
    'ALLERGOLOGIE',
    8
  ),
  (
    525,
    'MONNIER',
    'Camille',
    '20 rue du stade AZY-SUR-MARNE 02400',
    '0339478573',
    NULL,
    2
  ),
  (
    526,
    'MEUNIER',
    'Adelphe',
    '51 rue des gatinnes BRIANCON 05100',
    '0412521015',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    527,
    'ALCARAZ',
    'Andrew',
    '14 rue Hector Berlioz BRIANCON 05100',
    '0448191946',
    'GERONTOLOGIE',
    5
  ),
  (
    528,
    'SANTONI',
    'Mohammed',
    '47 rue Pernod YONCQ 08210',
    '0371193497',
    NULL,
    8
  ),
  (
    529,
    'CROS',
    'Aurèle',
    '68 rue des Chantereines BUZAN 09800',
    '0563311027',
    'OSTEOPATHIE',
    9
  ),
  (
    530,
    'CORNILLE',
    'Patricia',
    '72 rue des pyramides ARROUT 09800',
    '0551116863',
    NULL,
    9
  ),
  (
    531,
    'COMTE',
    'Aude',
    '35 rue de Poligny CHABESTAN 05400',
    '0454617092',
    NULL,
    5
  ),
  (
    532,
    'EMERIC',
    'Jérémy',
    '10 rue Malraux FALAISE 08400',
    '0355875878',
    NULL,
    8
  ),
  (
    533,
    'FOSSATI',
    'Jérémy',
    '12 rue des Anges SAINT-LAURENT-SUR-SAONE 01750',
    '0476010116',
    NULL,
    1
  ),
  (
    534,
    'BAGNIS',
    'Alain',
    '86 rue de Marigny AUDRESSEIN 09800',
    '0584761714',
    NULL,
    9
  ),
  (
    535,
    'DELUY',
    'Sophie',
    '54 rue des Epines SAINTE-MARIE 05150',
    '0447268257',
    NULL,
    5
  ),
  (
    536,
    'BAUDINO',
    'Anne-Ange',
    '44 rue Malraux DOMMARTIN 01380',
    '0420664795',
    NULL,
    1
  ),
  (
    537,
    'DERDERIAN',
    'Anaelle',
    '65 rue des Accacias BILLIAT 01200',
    '0463159777',
    NULL,
    1
  ),
  (
    538,
    'RAMOS',
    'Julien',
    '26 rue Pernod AUDRESSEIN 09800',
    '0564023565',
    NULL,
    9
  ),
  (
    539,
    'PAPAZIAN',
    'Jules',
    '5 rue Albert Camus BAGERT 09230',
    '0553330696',
    NULL,
    9
  ),
  (
    540,
    'ATTARD',
    'Aristote',
    '71 rue Petit OYONNAX 01100',
    '0459707313',
    'URGENTISTE',
    1
  ),
  (
    541,
    'MASSA',
    'Fernand',
    '59 rue des Cavaux YONCQ 08210',
    '0370679861',
    NULL,
    8
  ),
  (
    542,
    'CARBONE',
    'Anselme',
    '89 rue de la rose THIN-LE-MOUTIER 08460',
    '0329785730',
    NULL,
    8
  ),
  (
    543,
    'BONO',
    'Firmin',
    '36 rue Blainville MAYOT 02800',
    '0335413346',
    NULL,
    2
  ),
  (
    544,
    'ALLIONE',
    'Hypolite',
    '77 rue de Paris OYONNAX 01100',
    '0445547469',
    NULL,
    1
  ),
  (
    545,
    'POURCHIER',
    'Cristophe',
    '24 rue de la Pergolat THIN-LE-MOUTIER 08460',
    '0394637980',
    NULL,
    8
  );

INSERT INTO
  `medecin` (
    `id`,
    `nom`,
    `prenom`,
    `adresse`,
    `tel`,
    `specialitecomplementaire`,
    `departement`
  )
VALUES
  (
    546,
    'PAGANO',
    'Habib',
    '28 rue des Chantereines FEPIN 08170',
    '0370382521',
    NULL,
    8
  ),
  (
    547,
    'ROGER',
    'Amiel',
    '14 rue Petit AUBENTON 02500',
    '0324206273',
    NULL,
    2
  ),
  (
    548,
    'SAVELLI',
    'Béatrice',
    '34 rue de la rose AVANCON 05230',
    '0441382007',
    NULL,
    5
  ),
  (
    549,
    'ANGELI',
    'Béatrice',
    '98 rue du capitaine Crochet AX-LES-THERMES 09110',
    '0583031525',
    NULL,
    9
  ),
  (
    550,
    'AGNEL',
    'Béatrice',
    '7 rue Hector Berlioz FRESSANCOURT 02800',
    '0368437171',
    NULL,
    2
  ),
  (
    551,
    'GUIRAUD',
    'Fernand',
    '91 rue Pernod DOMMARTIN 01380',
    '0417334765',
    'ACUPONCTURE',
    1
  ),
  (
    552,
    'CARLOTTI',
    'Anselme',
    '82 rue St Denis BOURG-EN-BRESSE 01000',
    '0467462959',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    553,
    'MAILLET',
    'Jérémie',
    '80 rue Beaudelaire HOUDILCOURT 08190',
    '0391017675',
    NULL,
    8
  ),
  (
    554,
    'COMBES',
    'Fatima',
    '88 rue du général de Gaulle DOMMARTIN 01380',
    '0436582548',
    'URGENTISTE',
    1
  ),
  (
    555,
    'BOTTERO',
    'Marie',
    '65 rue Edouard Hériot ABBECOURT 02300',
    '0316457802',
    'HOMEOPATHIE',
    2
  ),
  (
    556,
    'GIRAUDO',
    'Amiel',
    '75 rue des Accacias MAYOT 02800',
    '0348266841',
    NULL,
    2
  ),
  (
    557,
    'DALLEST',
    'Anne-Lucie',
    '89 rue de la Pergolat SIGOYER 05130',
    '0423854231',
    NULL,
    5
  ),
  (
    558,
    'EYMARD',
    'Patrice',
    '38 rue Pasteur AVANCON 05230',
    '0433495288',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    559,
    'GRANGIER',
    'Victor',
    '3 rue des Chantereines AMBRIEF 02200',
    '0313285058',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    560,
    'ISNARDON',
    'John',
    '99 rue du capitaine Fraquasse MAYOT 02800',
    '0325788039',
    'URGENTISTE',
    2
  ),
  (
    561,
    'HONNORAT',
    'Anne',
    '59 rue des Pigeons CEYZERIAT 01250',
    '0414968284',
    NULL,
    1
  ),
  (
    562,
    'GARZINO',
    'Aurèle',
    '48 rue Anatole France SIGOYER 05130',
    '0498986897',
    NULL,
    5
  ),
  (
    563,
    'QUENIN',
    'Firmin',
    '2 rue de la Tour AZY-SUR-MARNE 02400',
    '0334984702',
    NULL,
    2
  ),
  (
    564,
    'GERVAIS',
    'Ingrid',
    '74 rue des Pigeons BELLOC 09600',
    '0575501098',
    'Pédiatrie',
    9
  ),
  (
    565,
    'CARLE',
    'Prosper',
    '53 rue de Paris BARENTON-SUR-SERRE 02270',
    '0390633950',
    NULL,
    2
  ),
  (
    566,
    'BERTON',
    'Anne-Lucie',
    '19 rue du renard FRESSANCOURT 02800',
    '0380522884',
    NULL,
    2
  ),
  (
    567,
    'TORRE',
    'Aline',
    '76 rue Louis Aragon BOULIGNEUX 01330',
    '0458483440',
    'URGENTISTE',
    1
  ),
  (
    568,
    'VITIELLO',
    'Serge',
    '79 rue Petit BUZAN 09800',
    '0597720760',
    'ANGEIOLOGIE',
    9
  ),
  (
    569,
    'GALLI',
    'Carole',
    '87 rue de Paris YONCQ 08210',
    '0386136458',
    NULL,
    8
  ),
  (
    570,
    'SCHMITT',
    'Aristote',
    '89 rue du stade BOURG-EN-BRESSE 01000',
    '0495804047',
    NULL,
    1
  ),
  (
    571,
    'PAGNI',
    'Annie',
    '81 rue de Poligny ORCIERES 05170',
    '0484719957',
    NULL,
    5
  ),
  (
    572,
    'BESSONE',
    'Anne-Ange',
    '89 rue Debussy VAUX-CHAMPAGNE 08130',
    '0398454558',
    'ACUPONCTURE',
    8
  ),
  (
    573,
    'SAIDI',
    'Vénus',
    '19 rue Bonaparte AUDRESSEIN 09800',
    '0576161788',
    'ACUPONCTURE',
    9
  ),
  (
    574,
    'MANCA',
    'Irénée',
    '16 rue de Paris OYONNAX 01100',
    '0438645340',
    NULL,
    1
  ),
  (
    575,
    'AYME',
    'Jérémie',
    '61 rue Hector Berlioz CHABESTAN 05400',
    '0488168776',
    'OSTEOPATHIE',
    5
  ),
  (
    576,
    'DELAYE',
    'Aurèle',
    '64 rue des Epines NEUVILLE-LES-DAMES 01400',
    '0498004744',
    NULL,
    1
  ),
  (
    577,
    'LION',
    'Fatima',
    '21 rue des Chantereines LAVAL-MORENCY 08150',
    '0397521640',
    'Pédiatre',
    8
  ),
  (
    578,
    'DUVAL',
    'André',
    '35 rue Lampion BOURG-EN-BRESSE 01000',
    '0473219689',
    NULL,
    1
  ),
  (
    579,
    'COLIN',
    'Marie',
    '17 rue des Accacias LAUNOIS-SUR-VENCE 08430',
    '0369193051',
    NULL,
    8
  ),
  (
    580,
    'MENDY',
    'Astine',
    '94 rue Malraux HAUTEVILLE 02120',
    '0335672541',
    NULL,
    2
  ),
  (
    581,
    'RIMBAUD',
    'Patricia',
    '75 rue du général de Gaulle FALAISE 08400',
    '0359521971',
    NULL,
    8
  ),
  (
    582,
    'BELMONTE',
    'Charles',
    '40 rue de la poste JOIGNY-SUR-MEUSE 08700',
    '0395476454',
    NULL,
    8
  ),
  (
    583,
    'COLL',
    'Anne-Laure',
    '75 rue Victor Hugo MONTCY-NOTRE-DAME 08090',
    '0333999479',
    NULL,
    8
  ),
  (
    584,
    'OLLIVE',
    'Alizée',
    '51 rue Agniel YONCQ 08210',
    '0352293505',
    NULL,
    8
  ),
  (
    585,
    'RAHOU',
    'Françoise',
    '9 rue Malraux SAINT-ANDRE-DE-ROSANS 05150',
    '0433874591',
    NULL,
    5
  ),
  (
    586,
    'NERI',
    'Anne-Marie',
    '90 rue Mallarmé MAYOT 02800',
    '0363076320',
    NULL,
    2
  ),
  (
    587,
    'ANTONINI',
    'Jimmy',
    '10 rue Hector Berlioz CHABESTAN 05400',
    '0479570050',
    NULL,
    5
  ),
  (
    588,
    'BARRET',
    'Aurélien',
    '67 rue des Princes AMBRIEF 02200',
    '0326868610',
    NULL,
    2
  ),
  (
    589,
    'FIGUIERE',
    'Anaelle',
    '86 rue du Mont MONTCEAUX 01090',
    '0432538873',
    'URGENTISTE',
    1
  ),
  (
    590,
    'ANDRIEU',
    'François',
    '23 rue de Paris BARZY-SUR-MARNE 02850',
    '0338114774',
    NULL,
    2
  ),
  (
    591,
    'GENRE',
    'François',
    '33 rue Victor Hugo BELLOC 09600',
    '0587084727',
    NULL,
    9
  ),
  (
    592,
    'TURC',
    'Catherine',
    '70 rue Malraux BRIANCON 05100',
    '0446591175',
    NULL,
    5
  ),
  (
    593,
    'LEONETTI',
    'Amélie',
    '26 rue des Accacias MONT-LAURENT 08130',
    '0347054500',
    NULL,
    8
  ),
  (
    594,
    'VIGUIER',
    'Charles',
    '77 rue des perles blanches BETTANT 01500',
    '0413532750',
    NULL,
    1
  ),
  (
    595,
    'PARODI',
    'Adelphe',
    '96 rue des Argonautes REOTIER 05600',
    '0488831908',
    NULL,
    5
  ),
  (
    596,
    'LANFRANCHI',
    'Carole',
    '83 rue du renard AX-LES-THERMES 09110',
    '0540901782',
    NULL,
    9
  ),
  (
    597,
    'BERTHON',
    'Rodolphe',
    '33 rue Commandant Mouchotte THIN-LE-MOUTIER 08460',
    '0324607170',
    NULL,
    8
  ),
  (
    598,
    'GASTAUD',
    'Yoan',
    '42 rue Anatole France BEZAC 09100',
    '0597093071',
    'ALLERGOLOGIE',
    9
  ),
  (
    599,
    'PESCE',
    'Firmin',
    '66 rue Commandant Hériot AX-LES-THERMES 09110',
    '0560293085',
    NULL,
    9
  ),
  (
    600,
    'LEONE',
    'Caline',
    '54 rue de la pointe SAINT-SAUVEUR 05200',
    '0476324085',
    NULL,
    5
  ),
  (
    601,
    'ROLANDO',
    'Amélie',
    '12 rue du capitaine Fraquasse BARZY-SUR-MARNE 02850',
    '0347886278',
    NULL,
    2
  ),
  (
    602,
    'BOSC',
    'Nohan',
    '87 rue du 14 juillet HERBEUVAL 08370',
    '0350146870',
    NULL,
    8
  ),
  (
    603,
    'ROS',
    'Yoan',
    '8 rue de Paris MONCEAU-SUR-OISE 02120',
    '0358800447',
    NULL,
    2
  ),
  (
    604,
    'LIAUTAUD',
    'Victor',
    '26 rue Hector Berlioz ARANDAS 01230',
    '0426016480',
    NULL,
    1
  ),
  (
    605,
    'INNOCENTI',
    'Bertrand',
    '94 rue des gatinnes MONTCEAUX 01090',
    '0480493919',
    NULL,
    1
  ),
  (
    606,
    'DESCHAMPS',
    'Précilia',
    '56 rue du capitaine Crochet AUDRESSEIN 09800',
    '0537599041',
    NULL,
    9
  ),
  (
    607,
    'DEGIOANNI',
    'Astine',
    '58 rue des perles blanches YONCQ 08210',
    '0380622197',
    NULL,
    8
  ),
  (
    608,
    'DI MEO',
    'Anne-Sophie',
    '52 rue des Artistes FALAISE 08400',
    '0352041231',
    NULL,
    8
  ),
  (
    609,
    'SPINELLI',
    'Anselme',
    '85 rue des Pigeons AGUILCOURT 02190',
    '0387135673',
    NULL,
    2
  ),
  (
    610,
    'MARTELLI',
    'Julie',
    '97 rue des Lilas OYONNAX 01100',
    '0493949488',
    NULL,
    1
  ),
  (
    611,
    'IBANEZ',
    'Andrée',
    '76 rue Alphonse Daudet LAUNOIS-SUR-VENCE 08430',
    '0355911277',
    NULL,
    8
  ),
  (
    612,
    'FERRY',
    'Rosalie',
    '28 rue des Argonautes SAINTE-MARIE 05150',
    '0470907768',
    'HOMEOPATHIE',
    5
  ),
  (
    613,
    'VINCENTI',
    'Alizée',
    '78 rue de Marigny HERBEUVAL 08370',
    '0347904226',
    NULL,
    8
  ),
  (
    614,
    'GUEDJ',
    'Adelphe',
    '72 rue Albert Camus SAINT-FIRMIN 05800',
    '0474088419',
    NULL,
    5
  ),
  (
    615,
    'MARTINELLI',
    'Rodolphe',
    '59 rue Pasteur ORCIERES 05170',
    '0464480776',
    NULL,
    5
  ),
  (
    616,
    'BONNARD',
    'Martin',
    '14 rue Perdue AUBENTON 02500',
    '0377909038',
    'OSTEOPATHIE',
    2
  ),
  (
    617,
    'BARON',
    'Anne-Ange',
    '89 rue Pasteur SIGOYER 05130',
    '0461827483',
    'HOMEOPATHIE',
    5
  ),
  (
    618,
    'ARNAUDO',
    'Marie',
    '51 rue des Epines ABBECOURT 02300',
    '0326934571',
    NULL,
    2
  ),
  (
    619,
    'VANNI',
    'Julienne',
    '3 rue des Artistes BLYES 01150',
    '0413911989',
    NULL,
    1
  ),
  (
    620,
    'CARBONNEL',
    'Amélie',
    '45 rue des Cavaux ABBECOURT 02300',
    '0372174885',
    NULL,
    2
  ),
  (
    621,
    'BOYADJIAN',
    'Jules',
    '18 rue Agniel AUBENTON 02500',
    '0368418443',
    NULL,
    2
  ),
  (
    622,
    'SANTI',
    'Aurèle',
    '64 rue de Poligny BRIANCON 05100',
    '0484091392',
    'OSTEOPATHIE',
    5
  ),
  (
    623,
    'RENUCCI',
    'Bertrand',
    '68 rue de la gare BOURG-EN-BRESSE 01000',
    '0416521067',
    NULL,
    1
  ),
  (
    624,
    'GEORGES',
    'Jimmy',
    '66 rue de Paris OYONNAX 01100',
    '0419790693',
    NULL,
    1
  ),
  (
    625,
    'CALVO',
    'Nohan',
    '55 rue Victor Hugo BANCIGNY 02140',
    '0350319392',
    'HOMEOPATHIE',
    2
  ),
  (
    626,
    'FINA',
    'Caline',
    '96 rue Perdue CAMON 09500',
    '0540178028',
    NULL,
    9
  ),
  (
    627,
    'AMPHOUX',
    'André',
    '34 rue des Princes ROCHEBRUNE 05190',
    '0444668151',
    NULL,
    5
  ),
  (
    628,
    'CESARI',
    'Hector',
    '75 rue des Anses bleues SAINT-LAURENT-SUR-SAONE 01750',
    '0478936977',
    NULL,
    1
  ),
  (
    629,
    'MORI',
    'Précilia',
    '39 rue Petit SAINT-LAURENT-SUR-SAONE 01750',
    '0456796681',
    NULL,
    1
  ),
  (
    630,
    'BARRIELLE',
    'Gilles',
    '11 rue des Pigeons NEUVILLE-LES-DAMES 01400',
    '0418340885',
    NULL,
    1
  ),
  (
    631,
    'BOUISSON',
    'Jordan',
    '53 rue des Anses bleues PELVOUX 05340',
    '0474792387',
    NULL,
    5
  ),
  (
    632,
    'TESTA',
    'Julien',
    '76 rue Pasteur PELVOUX 05340',
    '0439307843',
    NULL,
    5
  ),
  (
    633,
    'RUBIO',
    'François',
    '83 rue Petit BRIANCON 05100',
    '0481669712',
    NULL,
    5
  ),
  (
    634,
    'VALERY',
    'Firmin',
    '69 rue de la Tour AUGIREIN 09800',
    '0561526750',
    NULL,
    9
  ),
  (
    635,
    'DE LUCA',
    'Bernard',
    '50 rue Malraux MONCEAU-SUR-OISE 02120',
    '0330404637',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    636,
    'OLIVERO',
    'Aline',
    '63 rue du général de Gaulle MONTCY-NOTRE-DAME 08090',
    '0330296222',
    NULL,
    8
  ),
  (
    637,
    'BONELLI',
    'Anne-Sophie',
    '28 rue du général de Gaulle BRIANCON 05100',
    '0466993498',
    'GERONTOLOGIE',
    5
  ),
  (
    638,
    'DOMERGUE',
    'Bernard',
    '47 rue du général de Gaulle CAMON 09500',
    '0534440216',
    NULL,
    9
  ),
  (
    639,
    'MONTOYA',
    'Anne-Marie',
    '15 rue des Princes ASTON 09310',
    '0584747640',
    NULL,
    9
  ),
  (
    640,
    'MARCEL',
    'Aristote',
    '27 rue des Cavaux FEPIN 08170',
    '0333376588',
    NULL,
    8
  ),
  (
    641,
    'BUISSON',
    'John',
    '41 rue Commandant Mouchotte HAUTEVILLE 02120',
    '0328740889',
    'URGENTISTE',
    2
  ),
  (
    642,
    'TEMPIER',
    'Irénée',
    '42 rue Agniel OYONNAX 01100',
    '0447938676',
    NULL,
    1
  ),
  (
    643,
    'HONORAT',
    'Martin',
    '67 rue Agniel NEUVILLE-LES-DAMES 01400',
    '0412803539',
    'URGENTISTE',
    1
  ),
  (
    644,
    'OLLIER',
    'Rosalie',
    '15 rue Edouard Hériot ARROUT 09800',
    '0553692792',
    NULL,
    9
  ),
  (
    645,
    'MARTINET',
    'Gilles',
    '64 rue du Mont HAUTEVILLE 02120',
    '0310558221',
    'GERONTOLOGIE',
    2
  ),
  (
    646,
    'MARQUES',
    'Aude',
    '25 rue des hirondelles BLYES 01150',
    '0415240773',
    NULL,
    1
  ),
  (
    647,
    'GUIEN',
    'Reissa',
    '65 rue du général de Gaulle AZY-SUR-MARNE 02400',
    '0374955418',
    NULL,
    2
  ),
  (
    648,
    'SILVY',
    'Andrée',
    '30 rue du 14 juillet AVANCON 05230',
    '0463468177',
    NULL,
    5
  ),
  (
    649,
    'CASTINEL',
    'Julien',
    '47 rue Agniel JOIGNY-SUR-MEUSE 08700',
    '0334063627',
    NULL,
    8
  ),
  (
    650,
    'RAMIREZ',
    'Reissa',
    '62 rue de la Tour ROCHEBRUNE 05190',
    '0480473643',
    NULL,
    5
  ),
  (
    651,
    'LAPEYRE',
    'Sophie',
    '91 rue Petit AUBENTON 02500',
    '0348745022',
    NULL,
    2
  ),
  (
    652,
    'LAMBERTI',
    'Patricia',
    '95 rue Pasteur HERBEUVAL 08370',
    '0354297793',
    NULL,
    8
  ),
  (
    653,
    'CARRIERE',
    'Reissa',
    '25 rue Perdue AX-LES-THERMES 09110',
    '0540152929',
    'OSTEOPATHIE',
    9
  ),
  (
    654,
    'PICHON',
    'Armelle',
    '57 rue des Pigeons SAINT-FIRMIN 05800',
    '0479849596',
    NULL,
    5
  ),
  (
    655,
    'BERT',
    'Irénée',
    '83 rue des pyramides FLEVILLE 08250',
    '0312351408',
    NULL,
    8
  ),
  (
    656,
    'ANTON',
    'Anne-Laure',
    '58 rue des Argonautes ATTILLY 02490',
    '0344455589',
    NULL,
    2
  ),
  (
    657,
    'CAPARROS',
    'Patrick',
    '28 rue des Cyprés OYONNAX 01100',
    '0456081235',
    NULL,
    1
  ),
  (
    658,
    'CHAINE',
    'Ines',
    '65 rue Mallarmé TRAVECY 02800',
    '0344024000',
    NULL,
    2
  ),
  (
    659,
    'MACCARIO',
    'Julie',
    '30 rue de du général Scott SAINT-FIRMIN 05800',
    '0440937400',
    NULL,
    5
  ),
  (
    660,
    'DENIS',
    'Aurélien',
    '92 rue des Cyprés BEZAC 09100',
    '0521006225',
    NULL,
    9
  ),
  (
    661,
    'CAMPO',
    'Martial',
    '41 rue du général de Gaulle AUGIREIN 09800',
    '0569674646',
    NULL,
    9
  ),
  (
    662,
    'PIAZZA',
    'Amiel',
    '6 rue Malraux HAUTEVILLE 02120',
    '0336447283',
    NULL,
    2
  ),
  (
    663,
    'BATTINI',
    'Jérémy',
    '62 rue Lampion BEZAC 09100',
    '0526185264',
    NULL,
    9
  ),
  (
    664,
    'BARRIOL',
    'Cristophe',
    '88 rue du général de Gaulle BOULIGNEUX 01330',
    '0435544779',
    NULL,
    1
  ),
  (
    665,
    'COURT',
    'Ingrid',
    '6 rue du 14 juillet DOMMARTIN 01380',
    '0442048091',
    NULL,
    1
  ),
  (
    666,
    'GIOVANNETTI',
    'Jimmy',
    '50 rue Anatole France MACHAULT 08310',
    '0332316186',
    NULL,
    8
  ),
  (
    667,
    'SIMIAN',
    'Aline',
    '68 rue des Artistes NEUVILLE-LES-DAMES 01400',
    '0431882334',
    NULL,
    1
  ),
  (
    668,
    'PUGET',
    'Irénée',
    '34 rue des Chantereines BEAUMONT-EN-BEINE 02300',
    '0337016124',
    NULL,
    2
  ),
  (
    669,
    'BLACHE',
    'Gilles',
    '28 rue du Mont JOIGNY-SUR-MEUSE 08700',
    '0356982229',
    'OSTEOPATHIE',
    8
  ),
  (
    670,
    'ORSONI',
    'Irénée',
    '33 rue des perles blanches HOUDILCOURT 08190',
    '0399670344',
    NULL,
    8
  ),
  (
    671,
    'VIAN',
    'Habib',
    '9 rue des gatinnes BEZAC 09100',
    '0521113468',
    NULL,
    9
  ),
  (
    672,
    'GUERRINI',
    'Cristophe',
    '18 rue Edouard Hériot CHALLES 01450',
    '0428126087',
    NULL,
    1
  ),
  (
    673,
    'BARBE',
    'Aline',
    '87 rue de la Tour ORCIERES 05170',
    '0474417618',
    NULL,
    5
  ),
  (
    674,
    'PARRA',
    'Julien',
    '20 rue des Chantereines SAINT-SAUVEUR 05200',
    '0430434976',
    NULL,
    5
  ),
  (
    675,
    'MOUNIER',
    'Anselme',
    '14 rue des Anges REOTIER 05600',
    '0441999912',
    NULL,
    5
  ),
  (
    676,
    'MARION',
    'Anne-Lucie',
    '47 rue Bonaparte AUGIREIN 09800',
    '0533497900',
    NULL,
    9
  ),
  (
    677,
    'LUCCHINI',
    'Alizée',
    '96 rue Albert Camus BAGERT 09230',
    '0519203974',
    NULL,
    9
  ),
  (
    678,
    'LEYDET',
    'Béatrice',
    '97 rue Lampion TRAVECY 02800',
    '0350641861',
    NULL,
    2
  ),
  (
    679,
    'ROYERE',
    'Serge',
    '61 rue Mallarmé SAVINES-LE-LAC 05160',
    '0489512105',
    NULL,
    5
  ),
  (
    680,
    'GIACALONE',
    'Rodolphe',
    '43 rue des Princes ASTON 09310',
    '0513212527',
    NULL,
    9
  ),
  (
    681,
    'MESSINA',
    'Adelphe',
    '80 rue des Princes AVANCON 05230',
    '0446646697',
    NULL,
    5
  ),
  (
    682,
    'MENDEZ',
    'Austine',
    '47 rue Pasteur BEZAC 09100',
    '0530872724',
    NULL,
    9
  ),
  (
    683,
    'LAUTIER',
    'Yoan',
    '55 rue des Cavaux AGUILCOURT 02190',
    '0324607617',
    NULL,
    2
  ),
  (
    684,
    'COULET',
    'Gilles',
    '46 rue du stade MONT-LAURENT 08130',
    '0387328329',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    685,
    'BELTRAN',
    'Aude',
    '98 rue des Cyprés SAINT-CREPIN 05600',
    '0458369404',
    NULL,
    5
  ),
  (
    686,
    'HUBERT',
    'Cristophe',
    '82 rue Hector Berlioz ARANDAS 01230',
    '0425003261',
    NULL,
    1
  ),
  (
    687,
    'POUSSEL',
    'Jérémy',
    '21 rue des Princes MONT-LAURENT 08130',
    '0322135363',
    NULL,
    8
  ),
  (
    688,
    'CHEYLAN',
    'Mohammed',
    '53 rue Pasteur THIN-LE-MOUTIER 08460',
    '0389514499',
    NULL,
    8
  ),
  (
    689,
    'COPPOLA',
    'Précilia',
    '38 rue Louis Aragon SAVINES-LE-LAC 05160',
    '0441180757',
    NULL,
    5
  ),
  (
    690,
    'CAVALIER',
    'Françoise',
    '63 rue des Anges AX-LES-THERMES 09110',
    '0553742065',
    'URGENTISTE',
    9
  ),
  (
    691,
    'DUTTO',
    'sabine',
    '18 rue Lampion MONTCEAUX 01090',
    '0474843880',
    NULL,
    1
  ),
  (
    692,
    'MOUTET',
    'Julien',
    '50 rue des Chantereines REOTIER 05600',
    '0433213809',
    NULL,
    5
  ),
  (
    693,
    'EYRAUD',
    'Julie',
    '29 rue de du général Scott SAINT-ANDRE-DE-ROSANS 05150',
    '0450980762',
    NULL,
    5
  ),
  (
    694,
    'BARRE',
    'Roby',
    '14 rue Mallarmé LAVAL-MORENCY 08150',
    '0350310027',
    'ANGEIOLOGIE',
    8
  ),
  (
    695,
    'ALONSO',
    'Jérémy',
    '42 rue du capitaine Fraquasse JUNIVILLE 08310',
    '0361117640',
    NULL,
    8
  ),
  (
    696,
    'BOUQUET',
    'Anne-Laure',
    '63 rue Commandant Mouchotte BOURG-EN-BRESSE 01000',
    '0442277236',
    NULL,
    1
  ),
  (
    697,
    'PHILIPPE',
    'Anaelle',
    '21 rue des Cavaux CHEZY-SUR-MARNE 02570',
    '0388675304',
    NULL,
    2
  ),
  (
    698,
    'LUCAS',
    'Hamed',
    '74 rue Victor Hugo ARROUT 09800',
    '0541004550',
    NULL,
    9
  ),
  (
    699,
    'LEONARDI',
    'Béatrice',
    '54 rue Victor Hugo FRESSANCOURT 02800',
    '0312941986',
    'ALLERGOLOGIE',
    2
  ),
  (
    700,
    'MARTI',
    'Françoise',
    '98 rue de la Tour MESSINCOURT 08110',
    '0317883763',
    'GERONTOLOGIE',
    8
  ),
  (
    701,
    'PELLET',
    'Aristote',
    '73 rue des Anges BARENTON-SUR-SERRE 02270',
    '0369353331',
    NULL,
    2
  ),
  (
    702,
    'LANDI',
    'Johnny',
    '41 rue Victor Hugo FALAISE 08400',
    '0393642374',
    NULL,
    8
  ),
  (
    703,
    'RUGGIERI',
    'André',
    '59 rue de la Pergolat BAGERT 09230',
    '0570809688',
    NULL,
    9
  ),
  (
    704,
    'PIANA',
    'Carole',
    '49 rue de du général Scott HOUDILCOURT 08190',
    '0318196859',
    NULL,
    8
  ),
  (
    705,
    'VILLEVIEILLE',
    'Armelle',
    '70 rue Mallarmé LAVAL-MORENCY 08150',
    '0330805895',
    NULL,
    8
  ),
  (
    706,
    'GERIN',
    'François',
    '51 rue des Lilas SAINT-FIRMIN 05800',
    '0410879788',
    NULL,
    5
  ),
  (
    707,
    'FAVRE',
    'Anémone',
    '66 rue Commandant Mouchotte BRIANCON 05100',
    '0421542405',
    NULL,
    5
  ),
  (
    708,
    'QUILICHINI',
    'Reissa',
    '73 rue de la Pergolat BRIANCON 05100',
    '0444698187',
    NULL,
    5
  ),
  (
    709,
    'GUIS',
    'John',
    '2 rue des Princes SAVINES-LE-LAC 05160',
    '0431249814',
    NULL,
    5
  ),
  (
    710,
    'FERRARO',
    'Catherine',
    '53 rue de Poligny BARZY-SUR-MARNE 02850',
    '0373513553',
    NULL,
    2
  ),
  (
    711,
    'JAUME',
    'Jules',
    '30 rue Malraux EVIGNY 08090',
    '0317625916',
    'GERONTOLOGIE',
    8
  ),
  (
    712,
    'PARISI',
    'Martin',
    '35 rue des perles blanches OYONNAX 01100',
    '0484949416',
    NULL,
    1
  ),
  (
    713,
    'BENHAMOU',
    'Rodolphe',
    '22 rue du stade AX-LES-THERMES 09110',
    '0597525447',
    NULL,
    9
  ),
  (
    714,
    'HERMITTE',
    'Patrick',
    '18 rue Perdue NEUVILLE-LES-DAMES 01400',
    '0454304156',
    NULL,
    1
  ),
  (
    715,
    'SORIANO',
    'Bertrand',
    '65 rue des Anses bleues BELLOC 09600',
    '0522232477',
    NULL,
    9
  ),
  (
    716,
    'ALI',
    'Bernard',
    '70 rue des pyramides AX-LES-THERMES 09110',
    '0548800884',
    NULL,
    9
  ),
  (
    717,
    'ALBANO',
    'Rosalie',
    '9 rue Mallarmé SAINT-CREPIN 05600',
    '0470298666',
    NULL,
    5
  ),
  (
    718,
    'BARALE',
    'Jordan',
    '36 rue Mallarmé MONCEAU-SUR-OISE 02120',
    '0337902134',
    NULL,
    2
  ),
  (
    719,
    'RICAUD',
    'Jérémie',
    '27 rue de Paris TRAVECY 02800',
    '0321240986',
    'ANGEIOLOGIE',
    2
  ),
  (
    720,
    'PUECH',
    'Catherine',
    '25 rue du stade THIN-LE-MOUTIER 08460',
    '0373019942',
    NULL,
    8
  ),
  (
    721,
    'DARMON',
    'Précilia',
    '58 rue des Chantereines SORBIERS 05150',
    '0456138900',
    NULL,
    5
  ),
  (
    722,
    'PASQUALINI',
    'Roby',
    '14 rue des Princes REOTIER 05600',
    '0418201233',
    NULL,
    5
  ),
  (
    723,
    'FLEURY',
    'Roby',
    '7 rue du 14 juillet SAINT-FIRMIN 05800',
    '0435737841',
    NULL,
    5
  ),
  (
    724,
    'LAMY',
    'Alice',
    '21 rue du 14 juillet AUDRESSEIN 09800',
    '0549577626',
    'ALLERGOLOGIE',
    9
  ),
  (
    725,
    'GATTO',
    'Sophie',
    '12 rue Blainville BOULIGNEUX 01330',
    '0485824681',
    NULL,
    1
  ),
  (
    726,
    'MARKARIAN',
    'Armelle',
    '87 rue des pyramides BANCIGNY 02140',
    '0380163229',
    NULL,
    2
  ),
  (
    727,
    'VITALI',
    'Cristophe',
    '44 rue St Denis ROCHEBRUNE 05190',
    '0421833954',
    NULL,
    5
  ),
  (
    728,
    'PONCE',
    'Reissa',
    '27 rue de la gare AUDRESSEIN 09800',
    '0525862994',
    NULL,
    9
  ),
  (
    729,
    'GROSSO',
    'Amélie',
    '41 rue des pyramides VAUX-CHAMPAGNE 08130',
    '0343900888',
    NULL,
    8
  ),
  (
    730,
    'GROSSI',
    'Andrew',
    '31 rue de la poste FLOING 08200',
    '0311338451',
    NULL,
    8
  ),
  (
    731,
    'ABEILLE',
    'Marie',
    '35 rue des gatinnes PELVOUX 05340',
    '0427092084',
    NULL,
    5
  ),
  (
    732,
    'MIRETTI',
    'Alice',
    '35 rue du renard AX-LES-THERMES 09110',
    '0579017565',
    NULL,
    9
  ),
  (
    733,
    'BOURGUE',
    'Jules',
    '90 rue de Paris VAUX-CHAMPAGNE 08130',
    '0386647121',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    734,
    'FERRIGNO',
    'Rosalie',
    '3 rue de Marigny AX-LES-THERMES 09110',
    '0552021678',
    NULL,
    9
  ),
  (
    735,
    'MOURGUES',
    'Astine',
    '7 rue de la Pergolat BAGERT 09230',
    '0521392547',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    736,
    'GUIGOU',
    'Prosper',
    '90 rue Bonaparte YONCQ 08210',
    '0392674994',
    NULL,
    8
  ),
  (
    737,
    'GALLIANO',
    'Fernand',
    '42 rue Edouard Hériot ARROUT 09800',
    '0515601750',
    NULL,
    9
  ),
  (
    738,
    'VENTURA',
    'Anne-Laure',
    '70 rue du Mont AZY-SUR-MARNE 02400',
    '0347195732',
    NULL,
    2
  ),
  (
    739,
    'NEGRO',
    'Julien',
    '13 rue des Lilas BANCIGNY 02140',
    '0339249742',
    NULL,
    2
  ),
  (
    740,
    'BONHOMME',
    'Hypolite',
    '45 rue des Néfliers ORCIERES 05170',
    '0435503130',
    NULL,
    5
  ),
  (
    741,
    'ZUNINO',
    'Irénée',
    '57 rue Hector Berlioz FEPIN 08170',
    '0399685398',
    NULL,
    8
  ),
  (
    742,
    'CERUTTI',
    'Reissa',
    '24 rue Hector Berlioz ARROUT 09800',
    '0564256388',
    'GERONTOLOGIE',
    9
  ),
  (
    743,
    'SAUNIER',
    'Jimmy',
    '25 rue Albert Camus SAINT-LAURENT-SUR-SAONE 01750',
    '0442319187',
    NULL,
    1
  ),
  (
    744,
    'PARDIGON',
    'Jérémie',
    '96 rue Anatole France MONT-LAURENT 08130',
    '0379511159',
    NULL,
    8
  ),
  (
    745,
    'GOIRAND',
    'Victor',
    '37 rue de Marigny SAINTE-MARIE 05150',
    '0497549880',
    NULL,
    5
  ),
  (
    746,
    'LEGIER',
    'Bertrand',
    '20 rue Pasteur BEDEILLE 09230',
    '0522586224',
    NULL,
    9
  ),
  (
    747,
    'SAVINO',
    'Julien',
    '44 rue Bonaparte BANCIGNY 02140',
    '0390688254',
    NULL,
    2
  ),
  (
    748,
    'MENARD',
    'Habib',
    '5 rue du stade AMBRIEF 02200',
    '0327960352',
    NULL,
    2
  ),
  (
    749,
    'SARRAZIN',
    'André',
    '69 rue Debussy MONCEAU-SUR-OISE 02120',
    '0363762717',
    NULL,
    2
  ),
  (
    750,
    'ROYER',
    'Hypolite',
    '20 rue Victor Hugo THIN-LE-MOUTIER 08460',
    '0387692474',
    NULL,
    8
  ),
  (
    751,
    'PORTAL',
    'André',
    '27 rue des Accacias LAUNOIS-SUR-VENCE 08430',
    '0314089620',
    NULL,
    8
  ),
  (
    752,
    'MANFREDI',
    'Mohammed',
    '48 rue du 14 juillet AX-LES-THERMES 09110',
    '0557230819',
    NULL,
    9
  ),
  (
    753,
    'COLLET',
    'Patrick',
    '38 rue du renard BILLIAT 01200',
    '0438986289',
    NULL,
    1
  ),
  (
    754,
    'MINASSIAN',
    'Précilia',
    '3 rue des Epines AUGIREIN 09800',
    '0555523105',
    NULL,
    9
  ),
  (
    755,
    'GLEIZE',
    'Hamed',
    '43 rue des Epines HERBEUVAL 08370',
    '0332471585',
    NULL,
    8
  ),
  (
    756,
    'SAUVAIRE',
    'Anne-Marie',
    '26 rue de Paris SORBIERS 05150',
    '0480449197',
    NULL,
    5
  ),
  (
    757,
    'PARDO',
    'Amélie',
    '33 rue de Marigny BRIANCON 05100',
    '0429531221',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    758,
    'CHAFFARD',
    'Précilia',
    '17 rue des pyramides MESSINCOURT 08110',
    '0383254238',
    NULL,
    8
  ),
  (
    759,
    'LEGRAND',
    'Précilia',
    '24 rue Debussy BOURG-EN-BRESSE 01000',
    '0431348186',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    760,
    'CASTRO',
    'Béatrice',
    '21 rue des perles blanches MONTCY-NOTRE-DAME 08090',
    '0314453519',
    NULL,
    8
  ),
  (
    761,
    'COSSU',
    'Caline',
    '46 rue Mallarmé MONTCEAUX 01090',
    '0420799374',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    762,
    'MUSCAT',
    'Bénédicte',
    '90 rue Agniel YONCQ 08210',
    '0373069363',
    NULL,
    8
  ),
  (
    763,
    'LAI',
    'Alain',
    '17 rue St Denis AGUILCOURT 02190',
    '0333695801',
    NULL,
    2
  ),
  (
    764,
    'ROMERA',
    'Précilia',
    '34 rue Anatole France BETTANT 01500',
    '0412141785',
    NULL,
    1
  ),
  (
    765,
    'MAURO',
    'Anne-Laure',
    '24 rue Commandant Mouchotte REOTIER 05600',
    '0420893209',
    NULL,
    5
  ),
  (
    766,
    'AZZOPARDI',
    'Françoise',
    '80 rue Albert Camus AMBRIEF 02200',
    '0373756074',
    NULL,
    2
  ),
  (
    767,
    'MOSSE',
    'Caline',
    '30 rue des perles blanches SAINT-LAURENT-SUR-SAONE 01750',
    '0439831324',
    NULL,
    1
  ),
  (
    768,
    'HADDAD',
    'Victor',
    '14 rue des Lilas CHEZY-SUR-MARNE 02570',
    '0313300681',
    NULL,
    2
  ),
  (
    769,
    'GASQUET',
    'Aristote',
    '79 rue des Anses bleues ARANDAS 01230',
    '0420332660',
    NULL,
    1
  ),
  (
    770,
    'FERRANDO',
    'Johnny',
    '34 rue du renard FALAISE 08400',
    '0370553291',
    NULL,
    8
  ),
  (
    771,
    'TAGUELMINT',
    'Jérome',
    '28 rue Hector Berlioz ORCIERES 05170',
    '0443297062',
    NULL,
    5
  ),
  (
    772,
    'RIPOLL',
    'Françoise',
    '88 rue du Mont FRESSANCOURT 02800',
    '0313654986',
    'ANGEIOLOGIE',
    2
  ),
  (
    773,
    'POUJOL',
    'Anaelle',
    '48 rue des Argonautes ARROUT 09800',
    '0518603040',
    NULL,
    9
  ),
  (
    774,
    'BARBERIS',
    'Jérémie',
    '67 rue des gatinnes ARANDAS 01230',
    '0410422676',
    NULL,
    1
  ),
  (
    775,
    'DUPUIS',
    'Julie',
    '4 rue Anatole France DOMMARTIN 01380',
    '0496807830',
    NULL,
    1
  ),
  (
    776,
    'LUBRANO',
    'Jules',
    '62 rue de la Pergolat BOURG-EN-BRESSE 01000',
    '0487728945',
    NULL,
    1
  ),
  (
    777,
    'CARTA',
    'Amélie',
    '59 rue Louis Aragon CAMON 09500',
    '0591653123',
    NULL,
    9
  ),
  (
    778,
    'GARIBALDI',
    'Johnny',
    '80 rue de du général Scott JOIGNY-SUR-MEUSE 08700',
    '0386814494',
    NULL,
    8
  ),
  (
    779,
    'RENARD',
    'Dominique',
    '35 rue des Epines MONTCEAUX 01090',
    '0463823233',
    'null',
    1
  ),
  (
    780,
    'BERTORELLO',
    'Amélie',
    '60 rue des gatinnes BILLIAT 01200',
    '0487102339',
    NULL,
    1
  ),
  (
    781,
    'AZOULAY',
    'Andrée',
    '20 rue de la Pergolat MONTCEAUX 01090',
    '0487833849',
    NULL,
    1
  ),
  (
    782,
    'MIRALLES',
    'Aristote',
    '74 rue des Néfliers SAINT-LAURENT-SUR-SAONE 01750',
    '0417675151',
    NULL,
    1
  ),
  (
    783,
    'STEFANI',
    'Anémone',
    '78 rue Victor Hugo BRIANCON 05100',
    '0430859878',
    NULL,
    5
  ),
  (
    784,
    'PACE',
    'Amiel',
    '2 rue Perdue AUBENTON 02500',
    '0334550712',
    NULL,
    2
  ),
  (
    785,
    'JUAN',
    'Aline',
    '88 rue de Poligny FRESSANCOURT 02800',
    '0399301475',
    NULL,
    2
  ),
  (
    786,
    'BRESSON',
    'Prosper',
    '18 rue des hirondelles BOURG-EN-BRESSE 01000',
    '0463936581',
    NULL,
    1
  ),
  (
    787,
    'BARD',
    'Marie',
    '47 rue Perdue BRIANCON 05100',
    '0464689414',
    NULL,
    5
  ),
  (
    788,
    'ALBRAND',
    'Hector',
    '91 rue des hirondelles AX-LES-THERMES 09110',
    '0583375798',
    NULL,
    9
  ),
  (
    789,
    'FIORE',
    'Jérémie',
    '19 rue Commandant Hériot CEYZERIAT 01250',
    '0426848534',
    'URGENTISTE',
    1
  ),
  (
    790,
    'MICHELI',
    'Aristote',
    '96 rue du Mont ROCHEBRUNE 05190',
    '0486526998',
    NULL,
    5
  ),
  (
    791,
    'BLACHERE',
    'Hypolite',
    '92 rue Beaudelaire JOIGNY-SUR-MEUSE 08700',
    '0364925968',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    792,
    'BRES',
    'Jules',
    '56 rue du Mont BILLIAT 01200',
    '0459159687',
    NULL,
    1
  ),
  (
    793,
    'BALESTRA',
    'Anne-Lucie',
    '94 rue Agniel BILLIAT 01200',
    '0497364094',
    NULL,
    1
  ),
  (
    794,
    'OLIVER',
    'Reissa',
    '37 rue de la pointe HAUTEVILLE 02120',
    '0398806683',
    'ALLERGOLOGIE',
    2
  ),
  (
    795,
    'GUIDICELLI',
    'Patricia',
    '5 rue St Denis ABBECOURT 02300',
    '0355040100',
    NULL,
    2
  ),
  (
    796,
    'BARONI',
    'Anne-Lucie',
    '90 rue Lampion YONCQ 08210',
    '0399778947',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    797,
    'MAZET',
    'Jérémy',
    '75 rue des Cavaux SAINT-LAURENT-SUR-SAONE 01750',
    '0466069822',
    NULL,
    1
  ),
  (
    798,
    'MARCO',
    'Nohan',
    '9 rue des Epines SAVOURNON 05700',
    '0411774310',
    NULL,
    5
  ),
  (
    799,
    'COULON',
    'Hector',
    '87 rue Malraux LAUNOIS-SUR-VENCE 08430',
    '0359717547',
    NULL,
    8
  ),
  (
    800,
    'CONSTANTIN',
    'Aline',
    '14 rue de la rose BARZY-SUR-MARNE 02850',
    '0356584101',
    NULL,
    2
  ),
  (
    801,
    'BAUDE',
    'Sophie',
    '66 rue du 14 juillet AVANCON 05230',
    '0413861599',
    NULL,
    5
  ),
  (
    802,
    'BURLE',
    'Dominique',
    '72 rue des Argonautes BRIANCON 05100',
    '0465512769',
    NULL,
    5
  ),
  (
    803,
    'AMBROSINO',
    'Anne',
    '78 rue des hirondelles PELVOUX 05340',
    '0495946694',
    NULL,
    5
  ),
  (
    804,
    'MASSONI',
    'Ines',
    '15 rue des Anses bleues MESSINCOURT 08110',
    '0312418493',
    NULL,
    8
  ),
  (
    805,
    'CROCE',
    'Anémone',
    '21 rue Commandant Hériot BELLEY 01300',
    '0465513099',
    NULL,
    1
  ),
  (
    806,
    'CHABAS',
    'Sophie',
    '54 rue du 14 juillet AX-LES-THERMES 09110',
    '0548859466',
    NULL,
    9
  ),
  (
    807,
    'BARBERO',
    'Irénée',
    '48 rue des perles blanches BRIANCON 05100',
    '0424065321',
    NULL,
    5
  ),
  (
    808,
    'BRETON',
    'John',
    '34 rue du Mont BETTANT 01500',
    '0441330897',
    'HOMEOPATHIE',
    1
  ),
  (
    809,
    'MASSOT',
    'Aurélien',
    '61 rue Pasteur MAYOT 02800',
    '0356229245',
    NULL,
    2
  ),
  (
    810,
    'MOLINARI',
    'sabine',
    '14 rue des Anges OYONNAX 01100',
    '0456485843',
    NULL,
    1
  ),
  (
    811,
    'GUY',
    'Camille',
    '67 rue Alphonse Daudet BUZAN 09800',
    '0531797312',
    NULL,
    9
  ),
  (
    812,
    'DUPRE',
    'Mohammed',
    '6 rue des Pigeons BARENTON-SUR-SERRE 02270',
    '0370234499',
    'MEDECINE APPLIQUEE AUX SPORTS',
    2
  ),
  (
    813,
    'COLLOMB',
    'Amiel',
    '23 rue Hector Berlioz BETTANT 01500',
    '0487520515',
    NULL,
    1
  ),
  (
    814,
    'CANU',
    'Vénus',
    '90 rue des Lilas HAUTEVILLE 02120',
    '0394086731',
    NULL,
    2
  ),
  (
    815,
    'ANTONELLI',
    'Hypolite',
    '80 rue de la gare ARANDAS 01230',
    '0440645072',
    NULL,
    1
  ),
  (
    816,
    'DURET',
    'Anémone',
    '22 rue des Cyprés BLYES 01150',
    '0470785500',
    NULL,
    1
  ),
  (
    817,
    'FLORENS',
    'Rodolphe',
    '24 rue des Anges BELLEY 01300',
    '0459668577',
    NULL,
    1
  ),
  (
    818,
    'FERRI',
    'Julie',
    '88 rue des Pigeons JUNIVILLE 08310',
    '0391920541',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    819,
    'SANTELLI',
    'Alice',
    '6 rue des hirondelles SAINT-CREPIN 05600',
    '0478485015',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    820,
    'SAID',
    'Carole',
    '78 rue des Pigeons SAINTE-MARIE 05150',
    '0433025835',
    NULL,
    5
  ),
  (
    821,
    'DIAZ',
    'Anne-Ange',
    '19 rue de la pointe PELVOUX 05340',
    '0411070122',
    NULL,
    5
  ),
  (
    822,
    'VICENTE',
    'Ingrid',
    '35 rue Malraux QUATRE-CHAMPS 08400',
    '0370478563',
    'ALLERGOLOGIE',
    8
  ),
  (
    823,
    'VACHIER',
    'Alain',
    '27 rue du stade SAINT-LAURENT-SUR-SAONE 01750',
    '0492470117',
    NULL,
    1
  ),
  (
    824,
    'SAEZ',
    'Vénus',
    '29 rue de Paris AVANCON 05230',
    '0424123589',
    NULL,
    5
  ),
  (
    825,
    'LA ROCCA',
    'Bernard',
    '53 rue de la poste BAGERT 09230',
    '0550830599',
    'OSTEOPATHIE',
    9
  ),
  (
    826,
    'RAYBAUD',
    'Serge',
    '52 rue de Paris SAINT-FIRMIN 05800',
    '0472679599',
    NULL,
    5
  ),
  (
    827,
    'PASQUINI',
    'Anaelle',
    '92 rue Blainville SAINT-ANDRE-DE-ROSANS 05150',
    '0474041924',
    'GERONTOLOGIE',
    5
  ),
  (
    828,
    'JACOB',
    'Charles',
    '47 rue Beaudelaire AMBRIEF 02200',
    '0356493035',
    NULL,
    2
  ),
  (
    829,
    'ROSSIGNOL',
    'Fatima',
    '73 rue des Anges FRESSANCOURT 02800',
    '0390943061',
    NULL,
    2
  ),
  (
    830,
    'POURCEL',
    'André',
    '95 rue Edouard Hériot SAINT-FIRMIN 05800',
    '0483174531',
    'HOMEOPATHIE',
    5
  ),
  (
    831,
    'GUIGUES',
    'André',
    '24 rue Louis Aragon REOTIER 05600',
    '0476877380',
    NULL,
    5
  ),
  (
    832,
    'GRECH',
    'Ines',
    '71 rue Edouard Hériot ASTON 09310',
    '0543065471',
    'HOMEOPATHIE',
    9
  ),
  (
    833,
    'CLARY',
    'Irénée',
    '72 rue du capitaine Crochet SAVOURNON 05700',
    '0415947068',
    'ANGEIOLOGIE',
    5
  ),
  (
    834,
    'PAPPALARDO',
    'Armelle',
    '32 rue de Paris SAINT-LAURENT-SUR-SAONE 01750',
    '0480648434',
    NULL,
    1
  ),
  (
    835,
    'GUEYDON',
    'Serge',
    '96 rue des oiseaux YONCQ 08210',
    '0397358254',
    NULL,
    8
  ),
  (
    836,
    'BOURELLY',
    'Patrick',
    '66 rue Blainville FRESSANCOURT 02800',
    '0330907062',
    'OSTEOPATHIE',
    2
  ),
  (
    837,
    'SILVESTRI',
    'Caline',
    '84 rue des Epines BRIANCON 05100',
    '0411957355',
    NULL,
    5
  ),
  (
    838,
    'RIEU',
    'Patrice',
    '93 rue Perdue DOMMARTIN 01380',
    '0430289650',
    NULL,
    1
  ),
  (
    839,
    'PEROTTI',
    'Martin',
    '96 rue des Pigeons ORCIERES 05170',
    '0492319447',
    NULL,
    5
  ),
  (
    840,
    'CHAPUS',
    'Rosalie',
    '34 rue des Ormes AX-LES-THERMES 09110',
    '0577827344',
    NULL,
    9
  ),
  (
    841,
    'REGIS',
    'Robert',
    '97 rue des perles blanches VAUX-CHAMPAGNE 08130',
    '0315818160',
    'null',
    8
  ),
  (
    842,
    'DUCROS',
    'Patricia',
    '59 rue Pernod SORBIERS 05150',
    '0452990036',
    'GERONTOLOGIE',
    5
  ),
  (
    843,
    'DELERIA',
    'Patrice',
    '30 rue de du général Scott SAINT-SAUVEUR 05200',
    '0412740574',
    NULL,
    5
  ),
  (
    844,
    'JAYNE',
    'Alizée',
    '24 rue Commandant Hériot HERBEUVAL 08370',
    '0372811016',
    NULL,
    8
  ),
  (
    845,
    'GANDOLFO',
    'Amiel',
    '30 rue des Epines ARROUT 09800',
    '0554912883',
    NULL,
    9
  ),
  (
    846,
    'PAOLETTI',
    'Anne-Laure',
    '72 rue des Accacias CEYZERIAT 01250',
    '0495757649',
    NULL,
    1
  ),
  (
    847,
    'MEFFRE',
    'Alain',
    '89 rue de la Pergolat NEUVILLE-LES-DAMES 01400',
    '0443139412',
    NULL,
    1
  ),
  (
    848,
    'GUIOT',
    'Julien',
    '52 rue Malraux MAYOT 02800',
    '0313537125',
    NULL,
    2
  ),
  (
    849,
    'PELLETIER',
    'Dominique',
    '26 rue des Pigeons CHEZY-SUR-MARNE 02570',
    '0376713314',
    NULL,
    2
  ),
  (
    850,
    'CARMIGNANI',
    'Prosper',
    '34 rue des pyramides DOMMARTIN 01380',
    '0437007893',
    NULL,
    1
  ),
  (
    851,
    'MESTRE',
    'Amélie',
    '84 rue de Marigny AMBRIEF 02200',
    '0362342189',
    'GERONTOLOGIE',
    2
  ),
  (
    852,
    'CAPUTO',
    'Carole',
    '14 rue des Lilas SAVOURNON 05700',
    '0440474468',
    'ALLERGOLOGIE',
    5
  ),
  (
    853,
    'CATANIA',
    'Adelphe',
    '32 rue de Marigny CHABESTAN 05400',
    '0479332407',
    'ANGEIOLOGIE',
    5
  ),
  (
    854,
    'SOTO',
    'Anne-Lucie',
    '31 rue des pyramides MAYOT 02800',
    '0352060592',
    'URGENTISTE',
    2
  ),
  (
    855,
    'SALA',
    'Amélie',
    '90 rue des Néfliers HOUDILCOURT 08190',
    '0360017048',
    NULL,
    8
  ),
  (
    856,
    'GUERINI',
    'Adelphe',
    '35 rue des Argonautes BOULIGNEUX 01330',
    '0470938471',
    NULL,
    1
  ),
  (
    857,
    'BOUCHARD',
    'Rosalie',
    '14 rue Blainville FLEVILLE 08250',
    '0320670229',
    NULL,
    8
  ),
  (
    858,
    'CARLI',
    'Caline',
    '27 rue Pasteur AX-LES-THERMES 09110',
    '0512150549',
    NULL,
    9
  ),
  (
    859,
    'MURA',
    'Astine',
    '94 rue Debussy MONTIGNY-SUR-MEUSE 08170',
    '0358772408',
    NULL,
    8
  ),
  (
    860,
    'CARLES',
    'Victor',
    '23 rue St Denis TRAVECY 02800',
    '0330373632',
    NULL,
    2
  ),
  (
    861,
    'ANDREU',
    'Aristote',
    '55 rue Agniel BEDEILLE 09230',
    '0597171275',
    'MEDECINE APPLIQUEE AUX SPORTS',
    9
  ),
  (
    862,
    'PINTO',
    'Charles-Edouard',
    '78 rue de la recette MACHAULT 08310',
    '0325349638',
    NULL,
    8
  ),
  (
    863,
    'GARGUILO',
    'Caline',
    '19 rue Pernod AX-LES-THERMES 09110',
    '0568016782',
    NULL,
    9
  ),
  (
    864,
    'VITALIS',
    'Aurèle',
    '9 rue de la gare MONTCY-NOTRE-DAME 08090',
    '0346893168',
    NULL,
    8
  ),
  (
    865,
    'ROQUE',
    'Serge',
    '99 rue de Paris MONTCY-NOTRE-DAME 08090',
    '0391243175',
    NULL,
    8
  ),
  (
    866,
    'MANOUKIAN',
    'Aline',
    '66 rue des Cyprés ROCHEBRUNE 05190',
    '0474044568',
    'HOMEOPATHIE',
    5
  ),
  (
    867,
    'CARUSO',
    'Gilles',
    '13 rue des Ormes BLYES 01150',
    '0424315941',
    'OSTEOPATHIE',
    1
  ),
  (
    868,
    'RIBES',
    'Johnny',
    '99 rue des Epines LAUNOIS-SUR-VENCE 08430',
    '0313668088',
    'ALLERGOLOGIE',
    8
  ),
  (
    869,
    'VOLPE',
    'Jérome',
    '24 rue des Anses bleues FLOING 08200',
    '0351576826',
    NULL,
    8
  ),
  (
    870,
    'POULET',
    'Amiel',
    '16 rue des oiseaux OYONNAX 01100',
    '0480872838',
    NULL,
    1
  ),
  (
    871,
    'AGRESTI',
    'Irénée',
    '24 rue Agniel BOURG-EN-BRESSE 01000',
    '0457782183',
    NULL,
    1
  ),
  (
    872,
    'GIUSIANO',
    'Andrew',
    '63 rue de du général Scott SAINTE-MARIE 05150',
    '0496424640',
    NULL,
    5
  ),
  (
    873,
    'CANAVESE',
    'Fatima',
    '9 rue des Cyprés FRESSANCOURT 02800',
    '0399807861',
    NULL,
    2
  ),
  (
    874,
    'FRANCESCHINI',
    'Andrew',
    '53 rue de la Pergolat CHABESTAN 05400',
    '0448286750',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    875,
    'TOUATI',
    'Gilles',
    '47 rue du capitaine Fraquasse BANCIGNY 02140',
    '0397976949',
    'HOMEOPATHIE',
    2
  ),
  (
    876,
    'BOSQ',
    'Marie',
    '89 rue Albert Camus MONTCY-NOTRE-DAME 08090',
    '0378321982',
    NULL,
    8
  ),
  (
    877,
    'ROCCHI',
    'Anne-Jeanne',
    '81 rue des Cavaux SAINT-LAURENT-SUR-SAONE 01750',
    '0463951383',
    NULL,
    1
  ),
  (
    878,
    'SALVADOR',
    'Armelle',
    '76 rue du Mont MONTCEAUX 01090',
    '0415598111',
    NULL,
    1
  ),
  (
    879,
    'BERGE',
    'Anémone',
    '19 rue Albert Camus CAMON 09500',
    '0573404038',
    NULL,
    9
  ),
  (
    880,
    'TISSOT',
    'Prosper',
    '67 rue de la gare FLOING 08200',
    '0324668686',
    NULL,
    8
  ),
  (
    881,
    'ROQUES',
    'Anselme',
    '53 rue des hirondelles FLOING 08200',
    '0327408227',
    NULL,
    8
  ),
  (
    882,
    'AGUENI',
    'Roby',
    '13 rue du stade OYONNAX 01100',
    '0474204428',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    883,
    'CHAPPE',
    'Vénus',
    '50 rue des Argonautes HERBEUVAL 08370',
    '0373456319',
    NULL,
    8
  ),
  (
    884,
    'LEANDRI',
    'Aline',
    '54 rue de la Tour ARROUT 09800',
    '0573442616',
    NULL,
    9
  ),
  (
    885,
    'SUZAN',
    'Alain',
    '50 rue Anatole France TRAVECY 02800',
    '0323311091',
    NULL,
    2
  ),
  (
    886,
    'GRAZIANO',
    'Mohammed',
    '78 rue des Epines BLYES 01150',
    '0431013911',
    NULL,
    1
  ),
  (
    887,
    'MORA',
    'sabine',
    '80 rue de la Tour AX-LES-THERMES 09110',
    '0516185496',
    'ACUPONCTURE',
    9
  ),
  (
    888,
    'MOULINAS',
    'Adelphe',
    '43 rue de la pointe AZY-SUR-MARNE 02400',
    '0325660790',
    NULL,
    2
  ),
  (
    889,
    'PASTORE',
    'Annie',
    '96 rue du général de Gaulle AX-LES-THERMES 09110',
    '0599243446',
    NULL,
    9
  ),
  (
    890,
    'GUGLIELMI',
    'John',
    '82 rue de la recette AGUILCOURT 02190',
    '0366228551',
    NULL,
    2
  ),
  (
    891,
    'AMATO',
    'Aurélien',
    '66 rue Louis Aragon BETTANT 01500',
    '0473878093',
    'MEDECINE APPLIQUEE AUX SPORTS',
    1
  ),
  (
    892,
    'MEYNIER',
    'Hypolite',
    '70 rue des Néfliers CHALLES 01450',
    '0476171240',
    NULL,
    1
  ),
  (
    893,
    'CORDIER',
    'Sophie',
    '43 rue des Armées BRIANCON 05100',
    '0415807023',
    NULL,
    5
  ),
  (
    894,
    'BERNE',
    'Anselme',
    '59 rue Petit FRESSANCOURT 02800',
    '0383782513',
    'GERONTOLOGIE',
    2
  ),
  (
    895,
    'TIRAN',
    'Ines',
    '43 rue du général de Gaulle AUGIREIN 09800',
    '0598718886',
    NULL,
    9
  ),
  (
    896,
    'ZIANI',
    'Aurélien',
    '79 rue de la gare BELLEY 01300',
    '0479776039',
    NULL,
    1
  ),
  (
    897,
    'MOURADIAN',
    'Andrew',
    '18 rue du Mont CHALLES 01450',
    '0433547437',
    NULL,
    1
  ),
  (
    898,
    'PINELLI',
    'Jérome',
    '89 rue des pyramides MONCEAU-SUR-OISE 02120',
    '0345551167',
    NULL,
    2
  ),
  (
    899,
    'KLEIN',
    'Serge',
    '97 rue du capitaine Crochet FLOING 08200',
    '0316196835',
    NULL,
    8
  ),
  (
    900,
    'PHILIBERT',
    'Patrice',
    '25 rue des gatinnes FLEVILLE 08250',
    '0334902877',
    NULL,
    8
  ),
  (
    901,
    'TRANI',
    'Bénédicte',
    '13 rue Agniel BEZAC 09100',
    '0566740268',
    NULL,
    9
  ),
  (
    902,
    'ROMANI',
    'Jérome',
    '40 rue des perles blanches SAINT-ANDRE-DE-ROSANS 05150',
    '0446944245',
    NULL,
    5
  ),
  (
    903,
    'BELAID',
    'Jérémie',
    '78 rue des Epines VAUX-CHAMPAGNE 08130',
    '0358416091',
    NULL,
    8
  ),
  (
    904,
    'CALABRESE',
    'Catherine',
    '34 rue Malraux MACHAULT 08310',
    '0384057669',
    NULL,
    8
  ),
  (
    905,
    'BELLONE',
    'Prosper',
    '76 rue des Epines FLOING 08200',
    '0393379729',
    NULL,
    8
  ),
  (
    906,
    'DEVAUX',
    'Patrick',
    '26 rue Agniel BOURG-EN-BRESSE 01000',
    '0479180299',
    NULL,
    1
  ),
  (
    907,
    'ARQUIER',
    'Julie',
    '40 rue des Armées AMBRIEF 02200',
    '0361450183',
    NULL,
    2
  ),
  (
    908,
    'CHIOUSSE',
    'Jordan',
    '27 rue de la rose BANCIGNY 02140',
    '0352416188',
    'HOMEOPATHIE',
    2
  ),
  (
    909,
    'MOURIES',
    'Julienne',
    '69 rue des gatinnes AX-LES-THERMES 09110',
    '0580069967',
    NULL,
    9
  ),
  (
    910,
    'MAYAN',
    'Annie',
    '58 rue du capitaine Fraquasse CHABESTAN 05400',
    '0467360442',
    'HOMEOPATHIE',
    5
  ),
  (
    911,
    'BENVENUTI',
    'Patrick',
    '19 rue Pernod SIGOYER 05130',
    '0457375943',
    NULL,
    5
  ),
  (
    912,
    'MALET',
    'Andrew',
    '83 rue de Paris AMBRIEF 02200',
    '0395359341',
    NULL,
    2
  ),
  (
    913,
    'LENZI',
    'Adelphe',
    '27 rue Bonaparte CHEZY-SUR-MARNE 02570',
    '0355084339',
    NULL,
    2
  ),
  (
    914,
    'BIANCIOTTO',
    'sabine',
    '65 rue des Pigeons HERBEUVAL 08370',
    '0360394232',
    NULL,
    8
  ),
  (
    915,
    'VILLA',
    'Irénée',
    '69 rue de la recette MACHAULT 08310',
    '0383128193',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    916,
    'SEGOND',
    'Martial',
    '86 rue du général de Gaulle BARZY-SUR-MARNE 02850',
    '0317141855',
    NULL,
    2
  ),
  (
    917,
    'BOURGEOIS',
    'Roby',
    '9 rue du général de Gaulle SAINT-ANDRE-DE-ROSANS 05150',
    '0487582509',
    NULL,
    5
  ),
  (
    918,
    'ALEXIS',
    'Aurèle',
    '87 rue des Armées BARZY-SUR-MARNE 02850',
    '0338003620',
    NULL,
    2
  ),
  (
    919,
    'GHIBAUDO',
    'Sophie',
    '94 rue de Poligny ARROUT 09800',
    '0557640538',
    NULL,
    9
  ),
  (
    920,
    'HEBRARD',
    'Aurèle',
    '63 rue des Epines ASTON 09310',
    '0522392505',
    NULL,
    9
  ),
  (
    921,
    'DIJON',
    'Bertrand',
    '46 rue des Néfliers AUBENTON 02500',
    '0347004937',
    NULL,
    2
  ),
  (
    922,
    'SIMONI',
    'Catherine',
    '75 rue des Pigeons MEZIERES-SUR-OISE 02240',
    '0361266958',
    NULL,
    2
  ),
  (
    923,
    'BERMOND',
    'Anne-Jeanne',
    '45 rue de la poste MONTCEAUX 01090',
    '0483591358',
    NULL,
    1
  ),
  (
    924,
    'BAYOL',
    'Précilia',
    '97 rue de Marigny OYONNAX 01100',
    '0492249302',
    NULL,
    1
  ),
  (
    925,
    'SIMONETTI',
    'Julien',
    '86 rue Pasteur AMBRIEF 02200',
    '0351207619',
    'ACUPONCTURE',
    2
  ),
  (
    926,
    'DA SILVA',
    'Yoan',
    '16 rue des Cyprés ROCHEBRUNE 05190',
    '0447561911',
    NULL,
    5
  ),
  (
    927,
    'RUGGIERO',
    'Martin',
    '12 rue de Marigny SAVOURNON 05700',
    '0427247399',
    'MEDECINE APPLIQUEE AUX SPORTS',
    5
  ),
  (
    928,
    'BOVERO',
    'Alizée',
    '88 rue Blainville ROCHEBRUNE 05190',
    '0426259531',
    NULL,
    5
  ),
  (
    929,
    'TREGLIA',
    'Anne-Jeanne',
    '25 rue des Cavaux SAINT-ANDRE-DE-ROSANS 05150',
    '0453552598',
    NULL,
    5
  ),
  (
    930,
    'ARLAUD',
    'Anémone',
    '52 rue des Argonautes BRIANCON 05100',
    '0490437250',
    NULL,
    5
  ),
  (
    931,
    'LANTELME',
    'Rosalie',
    '1 rue Albert Camus BOURG-EN-BRESSE 01000',
    '0436516378',
    NULL,
    1
  ),
  (
    932,
    'MAESTRACCI',
    'Julien',
    '16 rue Mallarmé JUNIVILLE 08310',
    '0387772024',
    NULL,
    8
  ),
  (
    933,
    'BOURGES',
    'Béatrice',
    '56 rue de du général Scott BLYES 01150',
    '0497830362',
    NULL,
    1
  ),
  (
    934,
    'VERDIER',
    'Irénée',
    '28 rue Hector Berlioz YONCQ 08210',
    '0391607943',
    NULL,
    8
  ),
  (
    935,
    'RIBOULET',
    'Bernard',
    '67 rue des Pigeons AZY-SUR-MARNE 02400',
    '0363260638',
    'ACUPONCTURE',
    2
  ),
  (
    936,
    'BARTOLINI',
    'Nohan',
    '56 rue de la poste BILLIAT 01200',
    '0489588610',
    NULL,
    1
  ),
  (
    937,
    'LEMAIRE',
    'Hector',
    '56 rue du Mont AUBENTON 02500',
    '0317965994',
    NULL,
    2
  ),
  (
    938,
    'LACOMBE',
    'Vénus',
    '42 rue Mallarmé SAINT-FIRMIN 05800',
    '0496188645',
    NULL,
    5
  ),
  (
    939,
    'KRIKORIAN',
    'Ingrid',
    '69 rue des gatinnes SAINT-LAURENT-SUR-SAONE 01750',
    '0474955755',
    NULL,
    1
  ),
  (
    940,
    'GIORDANENGO',
    'Béatrice',
    '83 rue Mallarmé LAVAL-MORENCY 08150',
    '0353669720',
    NULL,
    8
  ),
  (
    941,
    'LAFFONT',
    'Aristote',
    '45 rue des Néfliers ORCIERES 05170',
    '0410443514',
    'OSTEOPATHIE',
    5
  ),
  (
    942,
    'GIULIANI',
    'Firmin',
    '86 rue Alphonse Daudet SORBIERS 05150',
    '0474673714',
    NULL,
    5
  ),
  (
    943,
    'AUTRAN',
    'Hypolite',
    '46 rue Blainville BELLEY 01300',
    '0432841577',
    NULL,
    1
  ),
  (
    944,
    'NIEL',
    'Anne-Laure',
    '10 rue Debussy BRIANCON 05100',
    '0488339706',
    NULL,
    5
  ),
  (
    945,
    'MICHAUD',
    'Adrien',
    '16 rue des Lilas CHEZY-SUR-MARNE 02570',
    '0375598648',
    NULL,
    2
  ),
  (
    946,
    'QUILICI',
    'Martial',
    '48 rue des Cavaux BRIANCON 05100',
    '0497203279',
    NULL,
    5
  ),
  (
    947,
    'DELESTRADE',
    'Adrien',
    '67 rue Mallarmé NEUVILLE-LES-DAMES 01400',
    '0483807492',
    NULL,
    1
  ),
  (
    948,
    'BIGGI',
    'Andrée',
    '9 rue Blainville BILLIAT 01200',
    '0443247634',
    NULL,
    1
  ),
  (
    949,
    'RAPHAEL',
    'Austine',
    '76 rue des Ormes BEDEILLE 09230',
    '0541576058',
    'GERONTOLOGIE',
    9
  ),
  (
    950,
    'TAMISIER',
    'sabine',
    '37 rue du stade ARROUT 09800',
    '0574023557',
    NULL,
    9
  ),
  (
    951,
    'DONNAT',
    'Bénédicte',
    '52 rue Mallarmé SAINT-FIRMIN 05800',
    '0498785723',
    NULL,
    5
  ),
  (
    952,
    'AMARA',
    'Aline',
    '72 rue des Accacias AX-LES-THERMES 09110',
    '0548451154',
    NULL,
    9
  ),
  (
    953,
    'ROIG',
    'Charles-Edouard',
    '19 rue des Accacias HOUDILCOURT 08190',
    '0316020754',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    954,
    'ARNAL',
    'Hector',
    '65 rue des Lilas BEDEILLE 09230',
    '0574559022',
    NULL,
    9
  ),
  (
    955,
    'SAUZE',
    'Anémone',
    '5 rue du 14 juillet CHEZY-SUR-MARNE 02570',
    '0337232948',
    'ANGEIOLOGIE',
    2
  ),
  (
    956,
    'ARTUFEL',
    'Ingrid',
    '92 rue des Epines AX-LES-THERMES 09110',
    '0561364657',
    NULL,
    9
  ),
  (
    957,
    'SUMIAN',
    'Habib',
    '22 rue de la pointe MESSINCOURT 08110',
    '0313589708',
    NULL,
    8
  ),
  (
    958,
    'AMADOR',
    'Jérémy',
    '59 rue des perles blanches YONCQ 08210',
    '0326242380',
    'MEDECINE APPLIQUEE AUX SPORTS',
    8
  ),
  (
    959,
    'CECCHI',
    'Amiel',
    '96 rue Pasteur ARROUT 09800',
    '0587698522',
    'ACUPONCTURE',
    9
  ),
  (
    960,
    'MAGGIO',
    'Austine',
    '65 rue Mallarmé MONTCEAUX 01090',
    '0470285907',
    NULL,
    1
  ),
  (
    961,
    'BENEDETTO',
    'Anne-Jeanne',
    '32 rue Pernod TRAVECY 02800',
    '0333270659',
    NULL,
    2
  ),
  (
    962,
    'GRENIER',
    'François',
    '33 rue des Armées JOIGNY-SUR-MEUSE 08700',
    '0349739798',
    NULL,
    8
  ),
  (
    963,
    'VALENZA',
    'Astine',
    '14 rue de Paris HAUTEVILLE 02120',
    '0351375540',
    NULL,
    2
  ),
  (
    964,
    'GONDRAN',
    'Catherine',
    '62 rue Petit AUBENTON 02500',
    '0396351922',
    NULL,
    2
  ),
  (
    965,
    'CAVALLO',
    'Dominique',
    '16 rue Albert Camus MONTCEAUX 01090',
    '0460614067',
    NULL,
    1
  ),
  (
    966,
    'DEBONO',
    'Habib',
    '43 rue Agniel FEPIN 08170',
    '0334104949',
    'null',
    8
  ),
  (
    967,
    'TROUCHE',
    'Bertrand',
    '19 rue des Armées BUZAN 09800',
    '0568125818',
    'HOMEOPATHIE',
    9
  ),
  (
    968,
    'MOUSSAOUI',
    'Anne-Lucie',
    '98 rue de la recette CHABESTAN 05400',
    '0456022326',
    NULL,
    5
  ),
  (
    969,
    'GAZELLE',
    'Bernard',
    '20 rue des Pigeons ARROUT 09800',
    '0573067550',
    NULL,
    9
  ),
  (
    970,
    'DI DOMENICO',
    'Nohan',
    '43 rue des hirondelles BEDEILLE 09230',
    '0525181569',
    'URGENTISTE',
    9
  ),
  (
    971,
    'RODRIGUES',
    'Anne-Sophie',
    '31 rue Blainville BARENTON-SUR-SERRE 02270',
    '0373526813',
    NULL,
    2
  ),
  (
    972,
    'CASTILLO',
    'Alice',
    '33 rue des Accacias ROCHEBRUNE 05190',
    '0449350884',
    NULL,
    5
  ),
  (
    973,
    'TAVERNIER',
    'Aline',
    '84 rue du capitaine Crochet MONT-LAURENT 08130',
    '0325576123',
    NULL,
    8
  ),
  (
    974,
    'RINALDI',
    'John',
    '3 rue de la Tour FRESSANCOURT 02800',
    '0331446881',
    NULL,
    2
  ),
  (
    975,
    'BALDACCHINO',
    'Anne',
    '96 rue des Anges AUBENTON 02500',
    '0378136627',
    'GERONTOLOGIE',
    2
  ),
  (
    976,
    'MEDINA',
    'Julienne',
    '69 rue des Argonautes MONT-LAURENT 08130',
    '0370869862',
    NULL,
    8
  ),
  (
    977,
    'MORGANTI',
    'Amiel',
    '64 rue Bonaparte PELVOUX 05340',
    '0488029182',
    NULL,
    5
  ),
  (
    978,
    'FERRAT',
    'sabine',
    '82 rue Petit MONTCEAUX 01090',
    '0462167372',
    NULL,
    1
  ),
  (
    979,
    'COUSIN',
    'Aurélien',
    '43 rue de la pointe SAINTE-MARIE 05150',
    '0435284955',
    NULL,
    5
  ),
  (
    980,
    'CAMILLERI',
    'François',
    '82 rue des gatinnes LAVAL-MORENCY 08150',
    '0342390211',
    NULL,
    8
  ),
  (
    981,
    'ALEXANDRE',
    'Anne-Jeanne',
    '43 rue Hector Berlioz MONTCEAUX 01090',
    '0423643158',
    NULL,
    1
  ),
  (
    982,
    'SASSO',
    'Gilles',
    '61 rue de la Pergolat FLEVILLE 08250',
    '0344269218',
    NULL,
    8
  ),
  (
    983,
    'SALLES',
    'Anne-Lucie',
    '10 rue des Armées JUNIVILLE 08310',
    '0323215933',
    'Pédiatrie',
    8
  ),
  (
    984,
    'MOSCA',
    'Rosalie',
    '61 rue Lampion MAYOT 02800',
    '0334037246',
    'ACUPONCTURE',
    2
  ),
  (
    985,
    'HONORE',
    'Marie',
    '42 rue de la recette MONTCEAUX 01090',
    '0483490191',
    'ACUPONCTURE',
    1
  ),
  (
    986,
    'BERENGUIER',
    'Alain',
    '49 rue des Chantereines SAINT-SAUVEUR 05200',
    '0444873979',
    'ACUPONCTURE',
    5
  ),
  (
    987,
    'COUTON',
    'Yoan',
    '26 rue Perdue BARENTON-SUR-SERRE 02270',
    '0383462706',
    'ACUPONCTURE',
    2
  ),
  (
    988,
    'POURRIERE',
    'Anne-Lucie',
    '30 rue des Néfliers FRESSANCOURT 02800',
    '0375894393',
    NULL,
    2
  ),
  (
    989,
    'MAGNE',
    'Nohan',
    '35 rue Pernod BELLOC 09600',
    '0584397641',
    'URGENTISTE',
    9
  ),
  (
    990,
    'FERRARIS',
    'John',
    '87 rue des Epines JUNIVILLE 08310',
    '0326912283',
    'ALLERGOLOGIE',
    8
  ),
  (
    991,
    'ROY',
    'Patricia',
    '11 rue des Armées CAMON 09500',
    '0564584038',
    NULL,
    9
  ),
  (
    992,
    'MORAND',
    'Adelphe',
    '1 rue des Anges AMBRIEF 02200',
    '0341912319',
    NULL,
    2
  ),
  (
    993,
    'LEGER',
    'Anaelle',
    '34 rue de la Tour BOURG-EN-BRESSE 01000',
    '0421198450',
    NULL,
    1
  ),
  (
    994,
    'GENIN',
    'Jérome',
    '1 rue du capitaine Crochet MAYOT 02800',
    '0322747123',
    NULL,
    2
  ),
  (
    995,
    'BOI',
    'Hector',
    '96 rue des Princes AGUILCOURT 02190',
    '0344210000',
    NULL,
    2
  ),
  (
    996,
    'CAU',
    'Austine',
    '48 rue Beaudelaire MACHAULT 08310',
    '0327416806',
    NULL,
    8
  ),
  (
    997,
    'BOMPARD',
    'Anne',
    '37 rue du capitaine Crochet SIGOYER 05130',
    '0440990856',
    NULL,
    5
  ),
  (
    998,
    'BOURRELY',
    'Aude',
    '87 rue Louis Aragon SAINTE-MARIE 05150',
    '0458331361',
    NULL,
    5
  ),
  (
    999,
    'GAZEL',
    'Aurélien',
    '83 rue des hirondelles SAINT-LAURENT-SUR-SAONE 01750',
    '0419114151',
    NULL,
    1
  ),
  (
    1000,
    'VADON',
    'Sophie',
    '83 rue des Chantereines NEUVILLE-LES-DAMES 01400',
    '0412959203',
    NULL,
    1
  );

-- --------------------------------------------------------
--
-- Structure de la table `medicament`
--
CREATE TABLE
  `medicament` (
    `id` varchar(30) NOT NULL,
    `nomCommercial` varchar(80) NOT NULL,
    `idFamille` varchar(10) NOT NULL,
    `composition` varchar(100) NOT NULL,
    `effets` varchar(100) NOT NULL,
    `contreIndications` varchar(100) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `medicament`
--
INSERT INTO
  `medicament` (
    `id`,
    `nomCommercial`,
    `idFamille`,
    `composition`,
    `effets`,
    `contreIndications`
  )
VALUES
  (
    '3MYC7',
    'TRIMYCINE',
    'CRT',
    'Triamcinolone acétonide + Néomycine + Nystatine',
    'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un ant',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants  d infections de la peau'
  ),
  (
    'ADIMOL9',
    'ADIMOL',
    'ABP',
    'Amoxicilline + Acide clavulanique',
    'Ce médicament  plus puissant que les pénicillines simples  est utilisé pour traiter des infections b',
    'Ce médicament est contre-indiqué en cas d allergie aux pénicillines ou aux céphalosporines.'
  ),
  (
    'AMOPIL7',
    'AMOPIL',
    'ABP',
    'Amoxicilline',
    'Ce médicament  plus puissant que les pénicillines simples  est utilisé pour traiter des infections b',
    'Ce médicament est contre-indiqué en cas d allergie aux pénicillines. Il doit être administré avec pr'
  ),
  (
    'AMOX45',
    'AMOXAR',
    'ABP',
    'Amoxicilline',
    'Ce médicament  plus puissant que les pénicillines simples  est utilisé pour traiter des infections b',
    'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.'
  ),
  (
    'AMOXIG12',
    'AMOXI Gé',
    'ABP',
    'Amoxicilline',
    'Ce médicament  plus puissant que les pénicillines simples  est utilisé pour traiter des infections b',
    'Ce médicament est contre-indiqué en cas d allergie aux pénicillines. Il doit être administré avec pr'
  ),
  (
    'APATOUX22',
    'APATOUX Vitamine C',
    'ALO',
    'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)',
    'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants  en cas de phénylcétonur'
  ),
  (
    'BACTIG10',
    'BACTIGEL',
    'ABC',
    'Erythromycine',
    'Ce médicament est utilisé en application locale pour traiter l acné et les infections cutanées bacté',
    'Ce médicament est contre-indiqué en cas d allergie aux antibiotiques de la famille des macrolides ou'
  ),
  (
    'BACTIV13',
    'BACTIVIL',
    'AFM',
    'Erythromycine',
    'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.',
    'Ce médicament est contre-indiqué en cas d allergie aux macrolides (dont le chef de file est l érythr'
  ),
  (
    'BITALV',
    'BIVALIC',
    'AAA',
    'Dextropropoxyphène + Paracétamol',
    'Ce médicament est utilisé pour traiter les douleurs d intensité modérée ou intense.',
    'Ce médicament est contre-indiqué en cas d allergie aux médicaments de cette famille  d insuffisance '
  ),
  (
    'CARTION6',
    'CARTION',
    'AAA',
    'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol',
    'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.',
    'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies)  d'
  ),
  (
    'CLAZER6',
    'CLAZER',
    'AFM',
    'Clarithromycine',
    'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également uti',
    'Ce médicament est contre-indiqué en cas d allergie aux macrolides (dont le chef de file est l érythr'
  ),
  (
    'DEPRIL9',
    'DEPRAMIL',
    'AIM',
    'Clomipramine',
    'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères  certaines douleurs rebelles ',
    'Ce médicament est contre-indiqué en cas de glaucome ou d adénome de la prostate  d infarctus récent '
  ),
  (
    'DIMIRTAM6',
    'DIMIRTAM',
    'AAC',
    'Mirtazapine',
    'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.',
    'La prise de ce produit est contre-indiquée en cas de d allergie à  l un des constituants.'
  ),
  (
    'DOLRIL7',
    'DOLORIL',
    'AAA',
    'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol',
    'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.',
    'Ce médicament est contre-indiqué en cas d allergie au paracétamol ou aux salicylates.'
  ),
  (
    'DORNOM8',
    'NORMADOR',
    'HYP',
    'Doxylamine',
    'Ce médicament est utilisé pour traiter l insomnie chez l adulte.',
    'Ce médicament est contre-indiqué en cas de glaucome  de certains troubles urinaires (rétention urina'
  ),
  (
    'EQUILARX6',
    'EQUILAR',
    'AAH',
    'Méclozine',
    'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.',
    'Ce médicament ne doit pas être utilisé en cas d allergie au produit  en cas de glaucome ou de rétent'
  ),
  (
    'EVILR7',
    'EVEILLOR',
    'PSA',
    'Adrafinil',
    'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiq',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants.'
  ),
  (
    'INSXT5',
    'INSECTIL',
    'AH',
    'Diphénydramine',
    'Ce médicament est utilisé en application locale sur les piqûres d insecte et l urticaire.',
    'Ce médicament est contre-indiqué en cas d allergie aux antihistaminiques.'
  ),
  (
    'JOVAI8',
    'JOVENIL',
    'AFM',
    'Josamycine',
    'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.',
    'Ce médicament est contre-indiqué en cas d allergie aux macrolides (dont le chef de file est l érythr'
  ),
  (
    'LIDOXY23',
    'LIDOXYTRACINE',
    'AFC',
    'Oxytétracycline +Lidocaïne',
    'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants. Il ne doit pas être ass'
  ),
  (
    'LITHOR12',
    'LITHORINE',
    'AP',
    'Lithium',
    'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les é',
    'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce trait'
  ),
  (
    'PARMOL16',
    'PARMOCODEINE',
    'AA',
    'Codéine + Paracétamol',
    'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pa',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants  chez l enfant de moins '
  ),
  (
    'PHYSOI8',
    'PHYSICOR',
    'PSA',
    'Sulbutiamine',
    'Ce médicament est utilisé pour traiter les baisses d activité physique ou psychique  souvent dans un',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants.'
  ),
  (
    'PIRIZ8',
    'PIRIZAN',
    'ABA',
    'Pyrazinamide',
    'Ce médicament est utilisé  en association à  d autres antibiotiques  pour traiter la tuberculose.',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants  d insuffisance rénale o'
  ),
  (
    'POMDI20',
    'POMADINE',
    'AO',
    'Bacitracine',
    'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l oeil.',
    'Ce médicament est contre-indiqué en cas d allergie aux antibiotiques appliqués localement.'
  ),
  (
    'TROXT21',
    'TROXADET',
    'AIN',
    'Paroxétine',
    'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il pe',
    'Ce médicament est contre-indiqué en cas d allergie au produit.'
  ),
  (
    'TXISOL22',
    'TOUXISOL',
    'ALO',
    'Tyrothricine + Acide ascorbique (Vitamine C)',
    'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.',
    'Ce médicament est contre-indiqué en cas d allergie à  l un des constituants et chez l enfant de moin'
  ),
  (
    'URIEG6',
    'URIREGUL',
    'AUM',
    'Fosfomycine trométamol',
    'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65',
    'La prise de ce médicament est contre-indiquée en cas d allergie à l un des constituants et d insuffi'
  );

-- --------------------------------------------------------
--
-- Structure de la table `offrir`
--
CREATE TABLE
  `offrir` (
    `idRapport` int (11) NOT NULL,
    `idMedicament` varchar(30) NOT NULL,
    `quantite` int (2) DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `offrir`
--
INSERT INTO
  `offrir` (`idRapport`, `idMedicament`, `quantite`)
VALUES
  (4, '3MYC7', 3),
  (4, 'CLAZER6', 4),
  (5, 'AMOXIG12', 1),
  (6, 'PIRIZ8', 1),
  (7, 'DOLRIL7', 2),
  (8, 'CARTION6', 3),
  (9, 'AMOXIG12', 2),
  (10, '3MYC7', 3),
  (10, 'BITALV', 3),
  (11, 'BITALV', 1),
  (12, 'DIMIRTAM6', 3),
  (13, 'BACTIG10', 2),
  (13, 'EQUILARX6', 4),
  (14, 'LITHOR12', 3),
  (15, 'AMOPIL7', 2),
  (16, '3MYC7', 3),
  (17, 'BACTIV13', 4),
  (17, 'JOVAI8', 2),
  (18, 'TXISOL22', 1),
  (19, 'CLAZER6', 2),
  (19, 'TROXT21', 3),
  (20, 'EQUILARX6', 4),
  (20, 'POMDI20', 4),
  (21, 'CARTION6', 2),
  (21, 'POMDI20', 3),
  (22, 'AMOXIG12', 1),
  (23, 'BITALV', 3),
  (23, 'DORNOM8', 1),
  (24, '3MYC7', 3),
  (24, 'EVILR7', 3),
  (25, 'DORNOM8', 4),
  (25, 'TXISOL22', 2),
  (26, 'POMDI20', 4),
  (26, 'TXISOL22', 3),
  (27, '3MYC7', 1),
  (28, 'CARTION6', 2),
  (29, 'AMOX45', 2),
  (29, 'BACTIG10', 4),
  (30, 'LIDOXY23', 3),
  (31, 'TXISOL22', 3),
  (32, 'APATOUX22', 4),
  (33, 'EVILR7', 4),
  (33, 'PHYSOI8', 4),
  (34, 'DORNOM8', 2),
  (34, 'TXISOL22', 4),
  (35, 'AMOXIG12', 3),
  (35, 'EQUILARX6', 1),
  (36, 'BACTIV13', 1),
  (36, 'POMDI20', 1),
  (37, 'DOLRIL7', 1),
  (37, 'JOVAI8', 4),
  (38, 'BITALV', 1),
  (38, 'PARMOL16', 4),
  (39, 'BACTIG10', 2),
  (39, 'BITALV', 1),
  (40, 'DEPRIL9', 1),
  (41, 'DORNOM8', 4),
  (41, 'LIDOXY23', 3),
  (42, 'EQUILARX6', 1),
  (42, 'JOVAI8', 4),
  (43, 'ADIMOL9', 2),
  (43, 'AMOXIG12', 4),
  (44, 'DEPRIL9', 2),
  (45, 'ADIMOL9', 4),
  (46, 'BACTIV13', 4),
  (46, 'LITHOR12', 4),
  (47, 'AMOX45', 4),
  (48, 'DEPRIL9', 2),
  (49, 'ADIMOL9', 4),
  (49, 'DIMIRTAM6', 3),
  (50, '3MYC7', 1),
  (50, 'POMDI20', 1),
  (51, 'AMOX45', 3),
  (52, 'BACTIG10', 1),
  (52, 'EVILR7', 1),
  (53, 'EVILR7', 2),
  (54, 'TXISOL22', 4),
  (55, 'TROXT21', 1),
  (56, 'DEPRIL9', 3),
  (56, 'INSXT5', 4),
  (57, 'EQUILARX6', 3),
  (58, 'CLAZER6', 4),
  (58, 'INSXT5', 4),
  (59, 'AMOX45', 1),
  (59, 'JOVAI8', 2),
  (60, 'ADIMOL9', 4),
  (60, 'BITALV', 1),
  (61, 'APATOUX22', 3),
  (61, 'PHYSOI8', 1),
  (62, 'EVILR7', 4),
  (62, 'PHYSOI8', 2),
  (63, 'EQUILARX6', 2),
  (64, 'AMOXIG12', 4),
  (64, 'DOLRIL7', 3),
  (65, 'DORNOM8', 2),
  (66, 'AMOXIG12', 1),
  (66, 'BACTIV13', 1),
  (67, 'DORNOM8', 2),
  (68, 'CARTION6', 4),
  (68, 'DIMIRTAM6', 2),
  (69, 'CARTION6', 4),
  (69, 'LIDOXY23', 3),
  (70, '3MYC7', 4),
  (71, 'CLAZER6', 2),
  (71, 'DORNOM8', 3),
  (72, 'PHYSOI8', 4),
  (73, 'DORNOM8', 2),
  (73, 'PIRIZ8', 2),
  (74, 'PHYSOI8', 4),
  (75, 'EQUILARX6', 1),
  (76, 'DIMIRTAM6', 4),
  (77, 'DEPRIL9', 3),
  (77, 'POMDI20', 1),
  (78, 'AMOPIL7', 4),
  (78, 'TXISOL22', 4),
  (79, 'DORNOM8', 1),
  (79, 'PIRIZ8', 4),
  (80, 'CLAZER6', 1),
  (80, 'LIDOXY23', 3),
  (81, 'EQUILARX6', 1),
  (82, 'CARTION6', 3),
  (82, 'PIRIZ8', 4),
  (83, 'BACTIV13', 4),
  (84, 'CLAZER6', 3),
  (84, 'DIMIRTAM6', 2),
  (85, 'BITALV', 2),
  (86, '3MYC7', 1),
  (87, 'BITALV', 4),
  (87, 'TROXT21', 1),
  (88, 'AMOXIG12', 1),
  (88, 'TXISOL22', 2),
  (89, 'TXISOL22', 4),
  (90, 'PARMOL16', 2),
  (91, '3MYC7', 4),
  (92, 'DORNOM8', 4),
  (93, 'EVILR7', 1),
  (94, 'DEPRIL9', 2),
  (95, 'AMOPIL7', 3),
  (96, 'DOLRIL7', 4),
  (96, 'PARMOL16', 4),
  (97, 'DEPRIL9', 3),
  (97, 'POMDI20', 4),
  (98, 'AMOPIL7', 4),
  (98, 'EQUILARX6', 2),
  (99, 'AMOPIL7', 3),
  (99, 'POMDI20', 1),
  (100, 'AMOXIG12', 4),
  (101, 'CLAZER6', 4),
  (101, 'TXISOL22', 1),
  (102, 'AMOPIL7', 1),
  (102, 'EQUILARX6', 3),
  (103, 'JOVAI8', 2),
  (104, 'DORNOM8', 3),
  (104, 'EQUILARX6', 1),
  (105, '3MYC7', 1),
  (106, '3MYC7', 3),
  (106, 'LIDOXY23', 2),
  (107, 'BITALV', 4),
  (107, 'CLAZER6', 4),
  (108, 'DOLRIL7', 3),
  (109, 'PARMOL16', 3),
  (110, 'INSXT5', 1),
  (111, 'CARTION6', 4),
  (112, 'CARTION6', 4),
  (112, 'TROXT21', 4),
  (113, '3MYC7', 1),
  (113, 'EVILR7', 2),
  (114, 'PHYSOI8', 1),
  (114, 'PIRIZ8', 2),
  (115, 'PIRIZ8', 1),
  (116, 'BACTIG10', 1),
  (116, 'JOVAI8', 1),
  (117, 'DEPRIL9', 1),
  (117, 'DIMIRTAM6', 4),
  (118, 'CLAZER6', 3),
  (118, 'LITHOR12', 4),
  (119, 'LITHOR12', 4),
  (119, 'TXISOL22', 1),
  (120, 'APATOUX22', 1),
  (120, 'BACTIV13', 1),
  (121, 'LIDOXY23', 3),
  (122, 'DORNOM8', 1),
  (122, 'LIDOXY23', 1),
  (123, 'EQUILARX6', 1),
  (124, '3MYC7', 2),
  (124, 'AMOX45', 3),
  (125, 'APATOUX22', 2),
  (125, 'EVILR7', 3),
  (126, 'ADIMOL9', 4),
  (127, 'CARTION6', 1),
  (127, 'POMDI20', 1),
  (128, 'EVILR7', 3),
  (129, 'ADIMOL9', 4),
  (129, 'APATOUX22', 4),
  (130, 'JOVAI8', 1),
  (131, 'APATOUX22', 3),
  (132, 'PIRIZ8', 4),
  (133, 'AMOPIL7', 1),
  (133, 'DIMIRTAM6', 3),
  (134, 'JOVAI8', 3),
  (134, 'POMDI20', 3),
  (135, 'ADIMOL9', 4),
  (135, 'PHYSOI8', 1),
  (136, 'JOVAI8', 4),
  (137, 'PHYSOI8', 1),
  (138, 'DOLRIL7', 2),
  (138, 'PARMOL16', 3),
  (139, 'AMOX45', 2),
  (140, 'DORNOM8', 1),
  (140, 'PIRIZ8', 1),
  (141, 'BITALV', 3),
  (141, 'EVILR7', 3),
  (142, 'BACTIV13', 3),
  (142, 'TROXT21', 3),
  (143, 'APATOUX22', 4),
  (144, 'BACTIG10', 1),
  (145, 'AMOX45', 4),
  (145, 'APATOUX22', 2),
  (146, 'EVILR7', 3),
  (146, 'TROXT21', 4),
  (147, 'DORNOM8', 1),
  (148, 'PHYSOI8', 3),
  (149, 'EVILR7', 3),
  (149, 'LITHOR12', 1),
  (150, 'CLAZER6', 2),
  (151, 'BACTIV13', 2),
  (151, 'DOLRIL7', 4),
  (152, 'EVILR7', 1),
  (153, 'DIMIRTAM6', 1),
  (153, 'INSXT5', 3),
  (154, 'BACTIG10', 1),
  (155, 'ADIMOL9', 3),
  (155, 'INSXT5', 3),
  (156, 'DOLRIL7', 4),
  (156, 'JOVAI8', 3),
  (157, 'AMOX45', 1),
  (157, 'EVILR7', 2),
  (158, 'PARMOL16', 1),
  (159, 'BITALV', 3),
  (159, 'INSXT5', 3),
  (160, 'POMDI20', 2),
  (161, 'AMOXIG12', 4),
  (161, 'EQUILARX6', 4),
  (162, 'DORNOM8', 4),
  (163, 'BITALV', 4),
  (163, 'TXISOL22', 3),
  (164, 'EQUILARX6', 4),
  (164, 'TXISOL22', 4),
  (165, 'BITALV', 1),
  (165, 'DOLRIL7', 4),
  (166, 'PARMOL16', 4),
  (166, 'PHYSOI8', 3),
  (167, '3MYC7', 1),
  (168, 'AMOXIG12', 1),
  (169, 'TROXT21', 4),
  (170, 'BACTIV13', 3),
  (170, 'EQUILARX6', 3),
  (171, 'PHYSOI8', 2),
  (172, 'LITHOR12', 2),
  (173, 'ADIMOL9', 3),
  (173, 'INSXT5', 2),
  (174, 'BITALV', 3),
  (175, 'BITALV', 2),
  (176, 'EVILR7', 2),
  (177, 'AMOXIG12', 3),
  (177, 'PIRIZ8', 1),
  (178, 'ADIMOL9', 1),
  (178, 'BACTIG10', 1),
  (179, 'JOVAI8', 3),
  (179, 'LIDOXY23', 3),
  (180, 'DOLRIL7', 1),
  (181, 'DEPRIL9', 4),
  (181, 'LITHOR12', 4),
  (182, 'DEPRIL9', 3),
  (182, 'PIRIZ8', 4),
  (183, 'APATOUX22', 2),
  (184, 'DORNOM8', 3),
  (184, 'PIRIZ8', 3),
  (185, 'CLAZER6', 1),
  (186, 'JOVAI8', 1),
  (187, 'EVILR7', 3),
  (188, 'INSXT5', 4),
  (188, 'LIDOXY23', 4),
  (189, 'BACTIG10', 1),
  (189, 'INSXT5', 4),
  (190, 'DIMIRTAM6', 2),
  (191, 'DOLRIL7', 4),
  (191, 'PIRIZ8', 3),
  (192, 'LITHOR12', 4),
  (193, 'AMOXIG12', 1),
  (193, 'TROXT21', 1),
  (194, 'TXISOL22', 2),
  (195, 'TROXT21', 4),
  (196, 'APATOUX22', 1),
  (197, 'EQUILARX6', 4),
  (198, 'BITALV', 1),
  (199, 'AMOPIL7', 1),
  (199, 'BACTIG10', 3),
  (200, 'DORNOM8', 1),
  (200, 'INSXT5', 1),
  (201, 'DEPRIL9', 4),
  (202, 'LIDOXY23', 3),
  (202, 'PARMOL16', 3),
  (203, 'INSXT5', 3),
  (203, 'PARMOL16', 2),
  (204, 'DIMIRTAM6', 2),
  (205, 'EVILR7', 3),
  (206, 'JOVAI8', 3),
  (207, 'EVILR7', 1),
  (207, 'JOVAI8', 4),
  (208, 'ADIMOL9', 1),
  (209, 'LITHOR12', 3),
  (209, 'PHYSOI8', 4),
  (210, 'BACTIV13', 3),
  (210, 'DIMIRTAM6', 2),
  (211, 'BACTIG10', 2),
  (211, 'DOLRIL7', 4),
  (212, 'EVILR7', 3),
  (213, 'PARMOL16', 3),
  (213, 'TROXT21', 2),
  (214, 'DOLRIL7', 3),
  (214, 'JOVAI8', 1),
  (215, 'AMOXIG12', 3),
  (215, 'INSXT5', 3),
  (216, 'BACTIG10', 3),
  (216, 'TROXT21', 4),
  (217, 'POMDI20', 1),
  (218, 'AMOX45', 2),
  (218, 'AMOXIG12', 2),
  (219, 'BACTIG10', 4),
  (220, 'DEPRIL9', 2),
  (220, 'TXISOL22', 3),
  (221, 'AMOX45', 2),
  (221, 'EVILR7', 2),
  (222, 'POMDI20', 1),
  (223, 'BACTIV13', 4),
  (224, 'LIDOXY23', 3),
  (225, 'BACTIV13', 2),
  (226, 'CARTION6', 3),
  (226, 'LITHOR12', 1),
  (227, '3MYC7', 2),
  (227, 'AMOX45', 2),
  (228, 'BACTIG10', 4),
  (229, 'TROXT21', 2),
  (230, 'AMOXIG12', 3),
  (231, 'PHYSOI8', 2),
  (232, '3MYC7', 4),
  (233, 'PIRIZ8', 2),
  (233, 'TXISOL22', 3),
  (234, 'BITALV', 1),
  (234, 'TROXT21', 3),
  (235, 'JOVAI8', 3),
  (236, 'LIDOXY23', 2),
  (236, 'PARMOL16', 1),
  (237, 'AMOX45', 1),
  (237, 'DIMIRTAM6', 4),
  (238, 'DIMIRTAM6', 3),
  (238, 'TROXT21', 2),
  (239, 'DOLRIL7', 2),
  (240, 'LIDOXY23', 4),
  (241, 'TROXT21', 3),
  (242, 'BACTIV13', 4),
  (243, 'EQUILARX6', 3),
  (244, 'LITHOR12', 3),
  (245, 'EVILR7', 4),
  (245, 'TXISOL22', 1),
  (246, 'CARTION6', 3),
  (247, 'DEPRIL9', 4),
  (248, '3MYC7', 2),
  (249, 'BITALV', 3),
  (250, 'INSXT5', 4),
  (250, 'TXISOL22', 3),
  (251, 'PIRIZ8', 2),
  (252, '3MYC7', 1),
  (253, 'BACTIV13', 3),
  (253, 'TXISOL22', 1),
  (254, 'JOVAI8', 4),
  (255, 'AMOPIL7', 2),
  (255, 'CLAZER6', 4),
  (256, 'LITHOR12', 4),
  (257, 'BACTIG10', 2),
  (258, 'EVILR7', 1),
  (259, 'LITHOR12', 2),
  (260, 'DOLRIL7', 4),
  (260, 'EVILR7', 1),
  (261, 'BACTIV13', 3),
  (261, 'PIRIZ8', 1),
  (262, 'BACTIG10', 3),
  (262, 'POMDI20', 4),
  (263, 'BACTIV13', 3),
  (263, 'DOLRIL7', 2),
  (264, 'AMOX45', 4),
  (265, 'AMOPIL7', 3),
  (265, 'APATOUX22', 4),
  (266, 'DEPRIL9', 4),
  (267, 'PARMOL16', 3),
  (268, 'PARMOL16', 3),
  (269, 'PHYSOI8', 3),
  (270, 'CARTION6', 3),
  (270, 'EQUILARX6', 4),
  (271, 'BITALV', 1),
  (272, 'CLAZER6', 2),
  (272, 'EVILR7', 2),
  (273, 'AMOXIG12', 3),
  (274, 'AMOX45', 2),
  (274, 'BACTIG10', 2),
  (275, 'LITHOR12', 3),
  (275, 'TXISOL22', 4),
  (276, 'BACTIG10', 4),
  (277, 'JOVAI8', 4),
  (277, 'TXISOL22', 4),
  (278, 'BACTIV13', 1),
  (278, 'PIRIZ8', 3),
  (279, 'DEPRIL9', 1),
  (280, 'INSXT5', 1),
  (281, 'LITHOR12', 2),
  (282, 'PHYSOI8', 1),
  (283, 'TROXT21', 3),
  (284, 'DORNOM8', 2),
  (285, 'PHYSOI8', 2),
  (285, 'TXISOL22', 1),
  (286, 'TROXT21', 2),
  (287, 'POMDI20', 3),
  (288, 'BACTIV13', 1),
  (289, 'AMOX45', 2),
  (289, 'PARMOL16', 1),
  (290, 'CARTION6', 4),
  (290, 'DORNOM8', 3),
  (291, 'PHYSOI8', 2),
  (291, 'PIRIZ8', 4),
  (292, 'AMOX45', 3),
  (292, 'CLAZER6', 3),
  (293, '3MYC7', 2),
  (293, 'DEPRIL9', 3),
  (294, 'AMOX45', 1),
  (294, 'INSXT5', 2),
  (295, 'AMOPIL7', 1),
  (296, 'DOLRIL7', 2),
  (296, 'DORNOM8', 4),
  (297, 'EVILR7', 4),
  (298, 'BACTIV13', 3),
  (298, 'CLAZER6', 1),
  (299, 'AMOPIL7', 4),
  (300, 'PARMOL16', 4),
  (301, 'ADIMOL9', 3),
  (301, 'LITHOR12', 2),
  (302, 'DEPRIL9', 1),
  (303, 'AMOX45', 1),
  (303, 'BACTIG10', 3),
  (304, 'BITALV', 1),
  (304, 'PARMOL16', 2),
  (305, 'BITALV', 3),
  (306, 'AMOXIG12', 4),
  (306, 'DORNOM8', 4),
  (307, '3MYC7', 2),
  (307, 'APATOUX22', 3),
  (308, 'DOLRIL7', 2),
  (309, 'BITALV', 2),
  (310, 'PIRIZ8', 1),
  (311, 'ADIMOL9', 4),
  (312, 'AMOXIG12', 4),
  (312, 'LITHOR12', 1),
  (313, 'TXISOL22', 4),
  (314, 'BITALV', 1),
  (314, 'TXISOL22', 2),
  (315, 'DEPRIL9', 4),
  (316, 'CLAZER6', 3),
  (316, 'LITHOR12', 1),
  (317, 'AMOXIG12', 2),
  (317, 'TROXT21', 4),
  (318, 'PIRIZ8', 4),
  (319, 'BITALV', 4),
  (320, 'TXISOL22', 3),
  (321, 'AMOX45', 3),
  (322, 'BACTIG10', 2),
  (322, 'PARMOL16', 3),
  (323, '3MYC7', 1),
  (324, 'AMOPIL7', 4),
  (324, 'DORNOM8', 1),
  (325, 'AMOX45', 3),
  (326, 'TXISOL22', 4),
  (327, 'TXISOL22', 2),
  (328, 'AMOPIL7', 4),
  (328, 'EVILR7', 3),
  (329, 'EQUILARX6', 2),
  (329, 'PHYSOI8', 1),
  (330, 'DEPRIL9', 3),
  (330, 'POMDI20', 4),
  (331, 'DEPRIL9', 3),
  (331, 'LITHOR12', 1),
  (332, 'CLAZER6', 4),
  (333, '3MYC7', 4),
  (334, 'JOVAI8', 2),
  (334, 'PHYSOI8', 4),
  (335, 'LITHOR12', 2),
  (335, 'PHYSOI8', 3),
  (336, 'PHYSOI8', 3),
  (337, 'APATOUX22', 4),
  (338, 'BITALV', 2),
  (338, 'EVILR7', 4),
  (339, 'EQUILARX6', 1),
  (339, 'TXISOL22', 3),
  (340, 'EQUILARX6', 1),
  (340, 'PIRIZ8', 1),
  (341, 'EQUILARX6', 3),
  (341, 'JOVAI8', 4),
  (342, 'POMDI20', 1),
  (343, 'AMOX45', 3),
  (343, 'EQUILARX6', 1),
  (344, 'EQUILARX6', 1),
  (345, 'TROXT21', 3),
  (346, 'BITALV', 3),
  (346, 'JOVAI8', 3),
  (347, 'PHYSOI8', 2),
  (348, 'AMOXIG12', 2),
  (349, 'BITALV', 2),
  (349, 'DIMIRTAM6', 3),
  (350, 'PARMOL16', 4),
  (351, 'DIMIRTAM6', 3),
  (352, 'LIDOXY23', 1),
  (352, 'PIRIZ8', 1),
  (353, 'CLAZER6', 1),
  (353, 'TROXT21', 1),
  (354, 'BITALV', 3),
  (354, 'PHYSOI8', 1),
  (355, 'AMOX45', 4),
  (355, 'AMOXIG12', 3),
  (356, 'BACTIG10', 2),
  (356, 'PIRIZ8', 3),
  (357, 'EQUILARX6', 3),
  (358, 'CLAZER6', 2),
  (359, 'APATOUX22', 1),
  (359, 'LIDOXY23', 3),
  (360, 'PIRIZ8', 4),
  (360, 'TROXT21', 1),
  (361, 'AMOPIL7', 4),
  (362, 'EQUILARX6', 3),
  (363, 'APATOUX22', 1),
  (363, 'DEPRIL9', 3),
  (364, 'PHYSOI8', 3),
  (365, 'TROXT21', 2),
  (366, 'DEPRIL9', 4),
  (366, 'LIDOXY23', 3),
  (367, 'APATOUX22', 1),
  (367, 'DIMIRTAM6', 1),
  (368, 'CARTION6', 2),
  (369, 'BACTIV13', 1),
  (369, 'JOVAI8', 3),
  (370, 'BACTIV13', 2),
  (371, 'PIRIZ8', 4),
  (371, 'TROXT21', 4),
  (372, 'INSXT5', 3),
  (373, '3MYC7', 2),
  (374, 'ADIMOL9', 2),
  (374, 'DIMIRTAM6', 1),
  (375, 'BITALV', 4),
  (375, 'POMDI20', 1),
  (376, 'AMOXIG12', 1),
  (376, 'BITALV', 3),
  (377, 'ADIMOL9', 4),
  (377, 'DEPRIL9', 1),
  (378, 'ADIMOL9', 1),
  (378, 'DIMIRTAM6', 4),
  (379, 'EQUILARX6', 2),
  (379, 'PARMOL16', 3),
  (380, 'AMOPIL7', 1),
  (381, 'PARMOL16', 4),
  (381, 'PHYSOI8', 2),
  (382, 'TROXT21', 1),
  (383, 'DEPRIL9', 3),
  (383, 'LITHOR12', 4),
  (384, 'INSXT5', 4),
  (385, 'BACTIG10', 4),
  (386, 'ADIMOL9', 4),
  (386, 'POMDI20', 2),
  (387, 'DOLRIL7', 4),
  (388, 'APATOUX22', 3),
  (388, 'TXISOL22', 2),
  (389, 'BACTIV13', 2),
  (390, '3MYC7', 2),
  (391, 'AMOX45', 3),
  (391, 'AMOXIG12', 3),
  (392, 'ADIMOL9', 1),
  (393, 'CARTION6', 4),
  (394, 'AMOPIL7', 4),
  (394, 'AMOX45', 2),
  (395, 'DEPRIL9', 2),
  (395, 'PHYSOI8', 4),
  (396, 'ADIMOL9', 2),
  (396, 'BITALV', 4),
  (397, 'DOLRIL7', 4),
  (397, 'TXISOL22', 3),
  (398, 'PHYSOI8', 4),
  (399, 'PHYSOI8', 4),
  (400, 'LITHOR12', 3),
  (400, 'TROXT21', 4),
  (401, 'DORNOM8', 4),
  (402, 'DEPRIL9', 1),
  (403, 'INSXT5', 2),
  (404, 'PARMOL16', 1),
  (405, 'ADIMOL9', 1),
  (405, 'BITALV', 4),
  (406, 'DORNOM8', 3),
  (406, 'LITHOR12', 1),
  (407, 'CLAZER6', 4),
  (408, 'DIMIRTAM6', 2),
  (409, 'AMOXIG12', 3),
  (409, 'LIDOXY23', 4),
  (410, 'CARTION6', 3),
  (410, 'DEPRIL9', 4),
  (411, 'DOLRIL7', 3),
  (412, 'AMOPIL7', 4),
  (412, 'JOVAI8', 3),
  (413, 'BITALV', 4),
  (414, 'PIRIZ8', 2),
  (415, 'APATOUX22', 3),
  (415, 'EQUILARX6', 1),
  (416, '3MYC7', 1),
  (416, 'BACTIV13', 2),
  (417, 'BITALV', 3),
  (418, 'ADIMOL9', 2),
  (418, 'DOLRIL7', 4),
  (419, 'CARTION6', 3),
  (420, 'CARTION6', 3),
  (421, 'TXISOL22', 1),
  (422, 'TXISOL22', 2),
  (423, 'DEPRIL9', 2),
  (423, 'PIRIZ8', 1),
  (424, 'PIRIZ8', 2),
  (425, 'PARMOL16', 3),
  (426, 'EVILR7', 2),
  (426, 'PARMOL16', 3),
  (427, 'EVILR7', 2),
  (427, 'LIDOXY23', 4),
  (428, 'EVILR7', 3),
  (428, 'TROXT21', 2),
  (429, 'AMOXIG12', 3),
  (429, 'PHYSOI8', 2),
  (430, 'AMOPIL7', 4),
  (430, 'LITHOR12', 1),
  (431, 'BACTIV13', 2),
  (432, '3MYC7', 4),
  (433, 'DIMIRTAM6', 3),
  (433, 'EQUILARX6', 3),
  (434, 'AMOPIL7', 4),
  (434, 'DEPRIL9', 3),
  (435, 'BACTIV13', 2),
  (436, 'BACTIV13', 3),
  (436, 'DOLRIL7', 1),
  (437, '3MYC7', 4),
  (437, 'AMOXIG12', 2),
  (438, 'PHYSOI8', 4),
  (439, 'BACTIV13', 2),
  (439, 'DEPRIL9', 1),
  (440, 'JOVAI8', 1),
  (441, 'AMOXIG12', 4),
  (441, 'CARTION6', 3),
  (442, 'LITHOR12', 2),
  (443, '3MYC7', 2),
  (443, 'PHYSOI8', 3),
  (444, 'LITHOR12', 1),
  (444, 'POMDI20', 3),
  (445, '3MYC7', 4),
  (445, 'PARMOL16', 1),
  (446, 'LITHOR12', 4),
  (446, 'PIRIZ8', 3),
  (447, 'AMOPIL7', 3),
  (447, 'AMOXIG12', 1),
  (448, 'TXISOL22', 1),
  (449, 'AMOXIG12', 2),
  (449, 'DIMIRTAM6', 2),
  (450, 'DEPRIL9', 1),
  (450, 'PHYSOI8', 1),
  (451, 'TROXT21', 3),
  (452, 'DORNOM8', 1),
  (453, 'JOVAI8', 1),
  (454, 'TROXT21', 1),
  (455, 'AMOPIL7', 3),
  (455, 'PHYSOI8', 1),
  (456, 'BACTIG10', 1),
  (456, 'PHYSOI8', 1),
  (457, 'EVILR7', 4),
  (457, 'PARMOL16', 1),
  (458, 'LIDOXY23', 1),
  (459, 'TXISOL22', 3),
  (460, 'AMOX45', 3),
  (460, 'DORNOM8', 4),
  (461, 'ADIMOL9', 3),
  (461, 'POMDI20', 1),
  (462, 'AMOXIG12', 2),
  (462, 'EQUILARX6', 3),
  (463, 'AMOXIG12', 1),
  (464, 'CLAZER6', 3),
  (464, 'LITHOR12', 1),
  (465, 'LITHOR12', 2),
  (466, 'CARTION6', 2),
  (466, 'TROXT21', 1),
  (467, 'PIRIZ8', 2),
  (467, 'TXISOL22', 3),
  (468, 'TXISOL22', 4),
  (469, 'CARTION6', 4),
  (469, 'PARMOL16', 3),
  (470, 'EVILR7', 3),
  (471, 'BACTIG10', 4),
  (472, 'AMOX45', 2),
  (472, 'EQUILARX6', 1),
  (473, 'BITALV', 4),
  (473, 'CLAZER6', 2),
  (474, 'JOVAI8', 2),
  (474, 'TROXT21', 1),
  (475, 'AMOXIG12', 4),
  (476, 'APATOUX22', 1),
  (476, 'BACTIG10', 1),
  (477, 'DEPRIL9', 2),
  (477, 'EVILR7', 4),
  (478, 'AMOX45', 3),
  (478, 'PIRIZ8', 1),
  (479, 'CLAZER6', 4),
  (480, 'DEPRIL9', 2),
  (481, '3MYC7', 2),
  (481, 'EQUILARX6', 3),
  (482, 'AMOPIL7', 2),
  (483, 'JOVAI8', 4),
  (484, 'EQUILARX6', 2),
  (485, 'PARMOL16', 2),
  (485, 'TXISOL22', 3),
  (486, 'APATOUX22', 3),
  (486, 'TROXT21', 4),
  (487, 'DORNOM8', 4),
  (488, 'BACTIV13', 4),
  (488, 'PARMOL16', 3),
  (489, 'BACTIG10', 3),
  (489, 'INSXT5', 4),
  (490, 'DIMIRTAM6', 3),
  (490, 'DORNOM8', 3),
  (491, 'INSXT5', 1),
  (492, 'AMOX45', 3),
  (492, 'INSXT5', 1),
  (493, 'AMOX45', 2),
  (493, 'EVILR7', 2),
  (494, 'CARTION6', 2),
  (495, 'CLAZER6', 3),
  (496, 'JOVAI8', 4),
  (496, 'PHYSOI8', 2),
  (497, 'JOVAI8', 3),
  (497, 'LIDOXY23', 1),
  (498, 'DEPRIL9', 3),
  (498, 'DORNOM8', 2),
  (499, 'BITALV', 2),
  (499, 'EQUILARX6', 2),
  (500, 'DOLRIL7', 2),
  (501, 'BITALV', 3),
  (502, 'APATOUX22', 2),
  (503, 'BITALV', 2),
  (504, '3MYC7', 1),
  (505, 'BITALV', 4),
  (506, '3MYC7', 2),
  (507, 'CARTION6', 2),
  (507, 'LITHOR12', 1),
  (508, 'PARMOL16', 4),
  (509, 'ADIMOL9', 1),
  (509, 'LIDOXY23', 4),
  (510, 'CARTION6', 1),
  (511, 'CARTION6', 2),
  (512, 'DORNOM8', 3),
  (513, 'APATOUX22', 3),
  (514, 'EVILR7', 2),
  (515, 'DOLRIL7', 3),
  (516, 'BACTIV13', 1),
  (517, 'AMOX45', 4),
  (517, 'EVILR7', 2),
  (518, 'JOVAI8', 2),
  (519, 'BACTIG10', 4),
  (519, 'EQUILARX6', 3),
  (520, 'PARMOL16', 1),
  (520, 'PHYSOI8', 3),
  (521, 'POMDI20', 4),
  (521, 'TXISOL22', 4),
  (522, 'AMOXIG12', 3),
  (523, 'ADIMOL9', 1),
  (523, 'DEPRIL9', 3),
  (524, 'PARMOL16', 1),
  (524, 'PHYSOI8', 1),
  (525, 'PIRIZ8', 1),
  (526, 'CARTION6', 1),
  (527, 'BITALV', 2),
  (527, 'PARMOL16', 3),
  (528, 'EQUILARX6', 4),
  (528, 'JOVAI8', 4),
  (529, 'BACTIV13', 1),
  (530, 'AMOX45', 4),
  (530, 'DIMIRTAM6', 3),
  (531, 'BACTIV13', 3),
  (532, 'DEPRIL9', 4),
  (532, 'DIMIRTAM6', 4),
  (533, 'EQUILARX6', 1),
  (533, 'TXISOL22', 3),
  (534, 'INSXT5', 3),
  (535, 'APATOUX22', 3),
  (536, 'AMOX45', 4),
  (536, 'PIRIZ8', 4),
  (537, 'APATOUX22', 1),
  (538, 'AMOPIL7', 2),
  (538, 'PARMOL16', 1),
  (539, 'CLAZER6', 2),
  (540, 'DEPRIL9', 4),
  (541, 'LIDOXY23', 4),
  (542, 'AMOXIG12', 4),
  (542, 'PARMOL16', 3),
  (543, 'AMOXIG12', 3),
  (544, 'DORNOM8', 4),
  (545, 'EQUILARX6', 3),
  (546, 'CLAZER6', 4),
  (547, 'BACTIG10', 4),
  (548, 'AMOX45', 3),
  (548, 'DIMIRTAM6', 4),
  (549, 'AMOXIG12', 4),
  (549, 'EQUILARX6', 2),
  (550, 'PHYSOI8', 4),
  (551, 'EVILR7', 4),
  (551, 'PIRIZ8', 1),
  (552, 'PARMOL16', 4),
  (552, 'POMDI20', 2),
  (553, 'AMOXIG12', 1),
  (553, 'PHYSOI8', 4),
  (554, 'JOVAI8', 3),
  (555, 'AMOX45', 4),
  (555, 'POMDI20', 2),
  (556, 'AMOXIG12', 1),
  (556, 'DORNOM8', 1),
  (557, 'ADIMOL9', 1),
  (558, 'AMOPIL7', 2),
  (559, 'DORNOM8', 4),
  (559, 'TROXT21', 2),
  (560, 'ADIMOL9', 4),
  (560, 'DEPRIL9', 4),
  (561, 'BACTIV13', 3),
  (562, 'BITALV', 4),
  (562, 'POMDI20', 4),
  (563, 'ADIMOL9', 1),
  (563, 'LIDOXY23', 4),
  (564, 'BITALV', 1),
  (565, 'EQUILARX6', 3),
  (566, 'ADIMOL9', 3),
  (566, 'AMOX45', 1),
  (567, 'POMDI20', 3),
  (568, 'LIDOXY23', 3),
  (569, 'EVILR7', 2),
  (569, 'TXISOL22', 4),
  (570, 'BITALV', 2),
  (584, 'ADIMOL9', 2),
  (584, 'TXISOL22', 4),
  (590, 'ADIMOL9', 2),
  (598, 'TROXT21', 6),
  (598, 'TXISOL22', 4),
  (602, '3MYC7', 5),
  (603, '3MYC7', 5),
  (604, '3MYC7', 5),
  (604, 'TXISOL22', 3),
  (605, '3MYC7', 3),
  (607, '3MYC7', 4),
  (611, 'ADIMOL9', 3),
  (611, 'DIMIRTAM6', 5);

-- --------------------------------------------------------
--
-- Structure de la table `rapport`
--
CREATE TABLE
  `rapport` (
    `id` int (11) NOT NULL,
    `date` date DEFAULT NULL,
    `motif` varchar(100) DEFAULT NULL,
    `bilan` varchar(100) DEFAULT NULL,
    `idVisiteur` char(4) NOT NULL,
    `idMedecin` int (11) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `rapport`
--
INSERT INTO
  `rapport` (
    `id`,
    `date`,
    `motif`,
    `bilan`,
    `idVisiteur`,
    `idMedecin`
  )
VALUES
  (
    1,
    '2017-01-02',
    'positif',
    'visiteannuelle',
    'b16',
    963
  ),
  (
    2,
    '2016-07-02',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'a93',
    4
  ),
  (
    3,
    '2016-07-02',
    'Demande du médecin',
    'Trop pressé',
    'a93',
    86
  ),
  (
    4,
    '2016-07-02',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    725
  ),
  (
    5,
    '2016-07-02',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e49',
    570
  ),
  (
    6,
    '2016-07-02',
    'Installation nouvelle',
    'Sur sa réserve',
    'b13',
    82
  ),
  (
    7,
    '2016-07-02',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b25',
    521
  ),
  (
    8,
    '2016-07-02',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'd13',
    639
  ),
  (
    9,
    '2016-07-02',
    'Demande du médecin',
    'Visite positive',
    'b16',
    863
  ),
  (
    10,
    '2016-07-02',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e39',
    475
  ),
  (
    11,
    '2016-07-02',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'e39',
    575
  ),
  (
    12,
    '2016-07-02',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b19',
    268
  ),
  (
    13,
    '2016-07-02',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'c14',
    754
  ),
  (
    14,
    '2016-07-02',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b50',
    421
  ),
  (
    15,
    '2016-07-02',
    'Prise de contact',
    'Sur sa réserve',
    'e5',
    11
  ),
  (
    16,
    '2016-07-02',
    'Visite annuelle',
    'Pas très aimable',
    'b59',
    791
  ),
  (
    17,
    '2016-07-02',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e5',
    28
  ),
  (
    18,
    '2016-07-02',
    'Installation nouvelle',
    'Sur sa réserve',
    'c14',
    662
  ),
  (
    19,
    '2016-07-02',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e24',
    365
  ),
  (
    20,
    '2016-07-02',
    'Demande du médecin',
    'Pas très aimable',
    'b28',
    882
  ),
  (
    21,
    '2016-07-03',
    'Visite annuelle',
    'RAS',
    'e39',
    727
  ),
  (
    22,
    '2016-07-03',
    'recommandation de confrère',
    'Visite positive',
    'e39',
    882
  ),
  (
    23,
    '2016-07-03',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b34',
    69
  ),
  (
    24,
    '2016-07-03',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b4',
    200
  ),
  (
    25,
    '2016-07-03',
    'recommandation de confrère',
    'RAS',
    'c3',
    265
  ),
  (
    26,
    '2016-07-03',
    'Demande du médecin',
    'A revoir assez rapidement',
    'd13',
    589
  ),
  (
    27,
    '2016-07-03',
    'Demande du médecin',
    'Visite positive',
    'b25',
    471
  ),
  (
    28,
    '2016-07-03',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'a131',
    935
  ),
  (
    29,
    '2016-07-03',
    'recommandation de confrère',
    'Peu bavard',
    'f21',
    41
  ),
  (
    30,
    '2016-07-03',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'e39',
    148
  ),
  (
    31,
    '2016-07-03',
    'Installation nouvelle',
    'Peu bavard',
    'd13',
    820
  ),
  (
    32,
    '2016-07-03',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b28',
    691
  ),
  (
    33,
    '2016-07-03',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'c14',
    381
  ),
  (
    34,
    '2016-07-03',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'c14',
    818
  ),
  (
    35,
    '2016-07-03',
    'Demande du médecin',
    'A revoir assez rapidement',
    'b59',
    153
  ),
  (
    36,
    '2016-07-03',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'b25',
    321
  ),
  (
    37,
    '2016-07-03',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b19',
    352
  ),
  (
    38,
    '2016-07-03',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b34',
    86
  ),
  (
    39,
    '2016-07-03',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'c54',
    404
  ),
  (
    40,
    '2016-07-03',
    'Prise de contact',
    'Visite positive',
    'e39',
    803
  ),
  (
    41,
    '2016-07-04',
    'Prise de contact',
    'Pas très aimable',
    'c14',
    34
  ),
  (
    42,
    '2016-07-04',
    'Prise de contact',
    'Trop pressé',
    'e52',
    738
  ),
  (
    43,
    '2016-07-04',
    'Prise de contact',
    'Sur sa réserve',
    'd51',
    628
  ),
  (
    44,
    '2016-07-04',
    'Demande du médecin',
    'Trop pressé',
    'c3',
    356
  ),
  (
    45,
    '2016-07-04',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'a17',
    388
  ),
  (
    46,
    '2016-07-04',
    'Visite annuelle',
    'Peu bavard',
    'e5',
    590
  ),
  (
    47,
    '2016-07-04',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b13',
    603
  ),
  (
    48,
    '2016-07-04',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b16',
    551
  ),
  (
    49,
    '2016-07-04',
    'Prise de contact',
    'Trop pressé',
    'd13',
    995
  ),
  (
    50,
    '2016-07-04',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e24',
    115
  ),
  (
    51,
    '2016-07-04',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e5',
    680
  ),
  (
    52,
    '2016-07-04',
    'Installation nouvelle',
    'Pas en confiance',
    'e39',
    564
  ),
  (
    53,
    '2016-07-04',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'e22',
    281
  ),
  (
    54,
    '2016-07-04',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'c54',
    542
  ),
  (
    55,
    '2016-07-04',
    'Installation nouvelle',
    'Peu intéressé',
    'e5',
    137
  ),
  (
    56,
    '2016-07-04',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'b19',
    362
  ),
  (
    57,
    '2016-07-04',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'b16',
    633
  ),
  (
    58,
    '2016-07-04',
    'Visite annuelle',
    'Pas très aimable',
    'c14',
    424
  ),
  (
    59,
    '2016-07-04',
    'Prise de contact',
    'Peu bavard',
    'e52',
    663
  ),
  (
    60,
    '2016-07-04',
    'Visite annuelle',
    'A revoir assez rapidement',
    'e5',
    437
  ),
  (
    61,
    '2016-07-05',
    'Installation nouvelle',
    'Pas très aimable',
    'e24',
    264
  ),
  (
    62,
    '2016-07-05',
    'Demande du médecin',
    'Peu bavard',
    'e39',
    7
  ),
  (
    63,
    '2016-07-05',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b25',
    895
  ),
  (
    64,
    '2016-07-05',
    'Prise de contact',
    'Pas très aimable',
    'd13',
    182
  ),
  (
    65,
    '2016-07-05',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'e24',
    594
  ),
  (
    66,
    '2016-07-05',
    'Prise de contact',
    'Sur sa réserve',
    'c3',
    285
  ),
  (
    67,
    '2016-07-05',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'e22',
    834
  ),
  (
    68,
    '2016-07-05',
    'Prise de contact',
    'Peu bavard',
    'b50',
    531
  ),
  (
    69,
    '2016-07-05',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b59',
    873
  ),
  (
    70,
    '2016-07-05',
    'Prise de contact',
    'Peu bavard',
    'f39',
    976
  ),
  (
    71,
    '2016-07-05',
    'Demande du médecin',
    'A revoir assez rapidement',
    'c54',
    913
  ),
  (
    72,
    '2016-07-05',
    'Demande du médecin',
    'Trop pressé',
    'a131',
    931
  ),
  (
    73,
    '2016-07-05',
    'Demande du médecin',
    'Pas en confiance',
    'b4',
    571
  ),
  (
    74,
    '2016-07-05',
    'Prise de contact',
    'Pas intéressé du tout',
    'e52',
    487
  ),
  (
    75,
    '2016-07-05',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c54',
    78
  ),
  (
    76,
    '2016-07-05',
    'Demande du médecin',
    'Peu bavard',
    'b59',
    103
  ),
  (
    77,
    '2016-07-05',
    'Installation nouvelle',
    'Pas en confiance',
    'e5',
    991
  ),
  (
    78,
    '2016-07-05',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'd13',
    290
  ),
  (
    79,
    '2016-07-05',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b19',
    314
  ),
  (
    80,
    '2016-07-05',
    'Prise de contact',
    'Trop pressé',
    'f39',
    43
  ),
  (
    81,
    '2016-07-06',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'c14',
    797
  ),
  (
    82,
    '2016-07-06',
    'Prise de contact',
    'Peu intéressé',
    'a55',
    747
  ),
  (
    83,
    '2016-07-06',
    'Prise de contact',
    'RAS',
    'e49',
    97
  ),
  (
    84,
    '2016-07-06',
    'Prise de contact',
    'Peu intéressé',
    'e24',
    389
  ),
  (
    85,
    '2016-07-06',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'b25',
    550
  ),
  (
    86,
    '2016-07-06',
    'Installation nouvelle',
    'RAS',
    'e39',
    546
  ),
  (
    87,
    '2016-07-06',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'a131',
    643
  ),
  (
    88,
    '2016-07-06',
    'Visite annuelle',
    'Pas très aimable',
    'e52',
    410
  ),
  (
    89,
    '2016-07-06',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e39',
    422
  ),
  (
    90,
    '2016-07-06',
    'Prise de contact',
    'Pas en confiance',
    'c3',
    765
  ),
  (
    91,
    '2016-07-06',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b59',
    117
  ),
  (
    92,
    '2016-07-06',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e5',
    638
  ),
  (
    93,
    '2016-07-06',
    'Visite annuelle',
    'Visite positive',
    'c54',
    96
  ),
  (
    94,
    '2016-07-06',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b19',
    257
  ),
  (
    95,
    '2016-07-06',
    'recommandation de confrère',
    'Peu bavard',
    'e22',
    465
  ),
  (
    96,
    '2016-07-06',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'e22',
    907
  ),
  (
    97,
    '2016-07-06',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'd13',
    871
  ),
  (
    98,
    '2016-07-06',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'f39',
    15
  ),
  (
    99,
    '2016-07-06',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e52',
    676
  ),
  (
    100,
    '2016-07-06',
    'Prise de contact',
    'Pas en confiance',
    'c54',
    569
  ),
  (
    101,
    '2016-07-07',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'd13',
    158
  ),
  (
    102,
    '2016-07-07',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    32
  ),
  (
    103,
    '2016-07-07',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b50',
    434
  ),
  (
    104,
    '2016-07-07',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e52',
    181
  ),
  (
    105,
    '2016-07-07',
    'Demande du médecin',
    'Pas très aimable',
    'a131',
    525
  ),
  (
    106,
    '2016-07-07',
    'recommandation de confrère',
    'RAS',
    'c14',
    687
  ),
  (
    107,
    '2016-07-07',
    'recommandation de confrère',
    'Pas très aimable',
    'b13',
    867
  ),
  (
    108,
    '2016-07-07',
    'Prise de contact',
    'Pas très aimable',
    'e22',
    302
  ),
  (
    109,
    '2016-07-07',
    'Demande du médecin',
    'Sur sa réserve',
    'b19',
    455
  ),
  (
    110,
    '2016-07-07',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e52',
    278
  ),
  (
    111,
    '2016-07-07',
    'Demande du médecin',
    'Pas très aimable',
    'c54',
    572
  ),
  (
    112,
    '2016-07-07',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'a131',
    863
  ),
  (
    113,
    '2016-07-07',
    'Prise de contact',
    'Pas en confiance',
    'b25',
    959
  ),
  (
    114,
    '2016-07-07',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'd51',
    205
  ),
  (
    115,
    '2016-07-07',
    'recommandation de confrère',
    'Peu intéressé',
    'b19',
    413
  ),
  (
    116,
    '2016-07-07',
    'Installation nouvelle',
    'Sur sa réserve',
    'b59',
    698
  ),
  (
    117,
    '2016-07-07',
    'recommandation de confrère',
    'Sur sa réserve',
    'a17',
    857
  ),
  (
    118,
    '2016-07-07',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b28',
    833
  ),
  (
    119,
    '2016-07-07',
    'Installation nouvelle',
    'Pas en confiance',
    'a93',
    308
  ),
  (
    120,
    '2016-07-07',
    'Prise de contact',
    'Peu bavard',
    'e39',
    362
  ),
  (
    121,
    '2016-07-08',
    'Prise de contact',
    'Pas intéressé du tout',
    'b25',
    803
  ),
  (
    122,
    '2016-07-08',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'd13',
    291
  ),
  (
    123,
    '2016-07-08',
    'Prise de contact',
    'RAS',
    'c54',
    910
  ),
  (
    124,
    '2016-07-08',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'd13',
    205
  ),
  (
    125,
    '2016-07-08',
    'Visite annuelle',
    'Peu intéressé',
    'e24',
    775
  ),
  (
    126,
    '2016-07-08',
    'Prise de contact',
    'Sur sa réserve',
    'a17',
    126
  ),
  (
    127,
    '2016-07-08',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b25',
    926
  ),
  (
    128,
    '2016-07-08',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'e39',
    906
  ),
  (
    129,
    '2016-07-08',
    'Visite annuelle',
    'Peu intéressé',
    'e5',
    365
  ),
  (
    130,
    '2016-07-08',
    'recommandation de confrère',
    'Pas en confiance',
    'b4',
    62
  ),
  (
    131,
    '2016-07-08',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b4',
    779
  ),
  (
    132,
    '2016-07-08',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'c14',
    172
  ),
  (
    133,
    '2016-07-08',
    'Visite annuelle',
    'Peu bavard',
    'b16',
    522
  ),
  (
    134,
    '2016-07-08',
    'Demande du médecin',
    'RAS',
    'e5',
    403
  ),
  (
    135,
    '2016-07-08',
    'Demande du médecin',
    'Sur sa réserve',
    'b4',
    845
  ),
  (
    136,
    '2016-07-08',
    'Prise de contact',
    'Pas en confiance',
    'b34',
    104
  ),
  (
    137,
    '2016-07-08',
    'Demande du médecin',
    'Trop pressé',
    'e24',
    404
  ),
  (
    138,
    '2016-07-08',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b28',
    397
  ),
  (
    139,
    '2016-07-08',
    'Prise de contact',
    'Pas en confiance',
    'b25',
    707
  ),
  (
    140,
    '2016-07-08',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b19',
    959
  ),
  (
    141,
    '2016-07-09',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e39',
    986
  ),
  (
    142,
    '2016-07-09',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e22',
    143
  ),
  (
    143,
    '2016-07-09',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a55',
    735
  ),
  (
    144,
    '2016-07-09',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'c54',
    788
  ),
  (
    145,
    '2016-07-09',
    'Prise de contact',
    'Pas intéressé du tout',
    'c14',
    186
  ),
  (
    146,
    '2016-07-09',
    'Installation nouvelle',
    'Sur sa réserve',
    'c14',
    871
  ),
  (
    147,
    '2016-07-09',
    'Installation nouvelle',
    'Visite positive',
    'a131',
    511
  ),
  (
    148,
    '2016-07-09',
    'Installation nouvelle',
    'Sur sa réserve',
    'd13',
    996
  ),
  (
    149,
    '2016-07-09',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'f21',
    351
  ),
  (
    150,
    '2016-07-09',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'f21',
    992
  ),
  (
    151,
    '2016-07-09',
    'recommandation de confrère',
    'Pas très aimable',
    'b4',
    205
  ),
  (
    152,
    '2016-07-09',
    'Visite annuelle',
    'Pas très aimable',
    'a93',
    936
  ),
  (
    153,
    '2016-07-09',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b25',
    484
  ),
  (
    154,
    '2016-07-09',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b25',
    790
  ),
  (
    155,
    '2016-07-09',
    'Prise de contact',
    'Peu intéressé',
    'b34',
    328
  ),
  (
    156,
    '2016-07-09',
    'Demande du médecin',
    'A revoir assez rapidement',
    'b4',
    834
  ),
  (
    157,
    '2016-07-09',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e49',
    826
  ),
  (
    158,
    '2016-07-09',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'e5',
    41
  ),
  (
    159,
    '2016-07-09',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b16',
    52
  ),
  (
    160,
    '2016-07-09',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'e22',
    52
  ),
  (
    161,
    '2016-07-10',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b4',
    237
  ),
  (
    162,
    '2016-07-10',
    'recommandation de confrère',
    'Sur sa réserve',
    'b19',
    829
  ),
  (
    163,
    '2016-07-10',
    'Visite annuelle',
    'Sur sa réserve',
    'e24',
    973
  ),
  (
    164,
    '2016-07-10',
    'Visite annuelle',
    'Trop pressé',
    'e24',
    789
  ),
  (
    165,
    '2016-07-10',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b4',
    31
  ),
  (
    166,
    '2016-07-10',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b25',
    858
  ),
  (
    167,
    '2016-07-10',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'a93',
    210
  ),
  (
    168,
    '2016-07-10',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'a17',
    278
  ),
  (
    169,
    '2016-07-10',
    'Demande du médecin',
    'Pas intéressé du tout',
    'd13',
    144
  ),
  (
    170,
    '2016-07-10',
    'Installation nouvelle',
    'Sur sa réserve',
    'f21',
    665
  ),
  (
    171,
    '2016-07-10',
    'recommandation de confrère',
    'RAS',
    'd51',
    495
  ),
  (
    172,
    '2016-07-10',
    'Prise de contact',
    'Peu intéressé',
    'a131',
    701
  ),
  (
    173,
    '2016-07-10',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    180
  ),
  (
    174,
    '2016-07-10',
    'recommandation de confrère',
    'Pas en confiance',
    'b25',
    414
  ),
  (
    175,
    '2016-07-10',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    628
  ),
  (
    176,
    '2016-07-10',
    'recommandation de confrère',
    'RAS',
    'f39',
    925
  ),
  (
    177,
    '2016-07-10',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e39',
    711
  ),
  (
    178,
    '2016-07-10',
    'Visite annuelle',
    'Pas très aimable',
    'a131',
    22
  ),
  (
    179,
    '2016-07-10',
    'Installation nouvelle',
    'Pas en confiance',
    'b13',
    738
  ),
  (
    180,
    '2016-07-10',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'b34',
    696
  ),
  (
    181,
    '2016-07-11',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b50',
    452
  ),
  (
    182,
    '2016-07-11',
    'Demande du médecin',
    'Visite positive',
    'b34',
    506
  ),
  (
    183,
    '2016-07-11',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b34',
    228
  ),
  (
    184,
    '2016-07-11',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'd51',
    806
  ),
  (
    185,
    '2016-07-11',
    'Visite annuelle',
    'Pas en confiance',
    'b4',
    9
  ),
  (
    186,
    '2016-07-11',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'e22',
    159
  ),
  (
    187,
    '2016-07-11',
    'Prise de contact',
    'Visite positive',
    'c3',
    202
  ),
  (
    188,
    '2016-07-11',
    'Prise de contact',
    'Pas très aimable',
    'e39',
    974
  ),
  (
    189,
    '2016-07-11',
    'Visite annuelle',
    'Peu intéressé',
    'b4',
    543
  ),
  (
    190,
    '2016-07-11',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'c14',
    208
  ),
  (
    191,
    '2016-07-11',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e22',
    793
  ),
  (
    192,
    '2016-07-11',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b59',
    281
  ),
  (
    193,
    '2016-07-11',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'e22',
    892
  ),
  (
    194,
    '2016-07-11',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'c3',
    917
  ),
  (
    195,
    '2016-07-11',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'a17',
    561
  ),
  (
    196,
    '2016-07-11',
    'Demande du médecin',
    'Sur sa réserve',
    'f39',
    428
  ),
  (
    197,
    '2016-07-11',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a17',
    618
  ),
  (
    198,
    '2016-07-11',
    'recommandation de confrère',
    'Sur sa réserve',
    'b16',
    531
  ),
  (
    199,
    '2016-07-11',
    'Visite annuelle',
    'A revoir assez rapidement',
    'e5',
    874
  ),
  (
    200,
    '2016-07-11',
    'Prise de contact',
    'Peu intéressé',
    'e52',
    625
  ),
  (
    201,
    '2016-07-12',
    'Demande du médecin',
    'Pas intéressé du tout',
    'a93',
    153
  ),
  (
    202,
    '2016-07-12',
    'recommandation de confrère',
    'Peu intéressé',
    'c3',
    816
  ),
  (
    203,
    '2016-07-12',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'e39',
    330
  ),
  (
    204,
    '2016-07-12',
    'Prise de contact',
    'Peu bavard',
    'e52',
    978
  ),
  (
    205,
    '2016-07-12',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b34',
    871
  ),
  (
    206,
    '2016-07-12',
    'Installation nouvelle',
    'Visite positive',
    'b34',
    928
  ),
  (
    207,
    '2016-07-12',
    'Visite annuelle',
    'Sur sa réserve',
    'e22',
    192
  ),
  (
    208,
    '2016-07-12',
    'Prise de contact',
    'Trop pressé',
    'b28',
    851
  ),
  (
    209,
    '2016-07-12',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b16',
    4
  ),
  (
    210,
    '2016-07-12',
    'Visite annuelle',
    'Visite positive',
    'c3',
    532
  ),
  (
    211,
    '2016-07-12',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b19',
    445
  ),
  (
    212,
    '2016-07-12',
    'Demande du médecin',
    'Visite positive',
    'a17',
    223
  ),
  (
    213,
    '2016-07-12',
    'Demande du médecin',
    'Peu intéressé',
    'c54',
    312
  ),
  (
    214,
    '2016-07-12',
    'Prise de contact',
    'RAS',
    'e52',
    503
  ),
  (
    215,
    '2016-07-12',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'f39',
    709
  ),
  (
    216,
    '2016-07-12',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b28',
    693
  ),
  (
    217,
    '2016-07-12',
    'Visite annuelle',
    'Peu intéressé',
    'f21',
    47
  ),
  (
    218,
    '2016-07-12',
    'Installation nouvelle',
    'Peu intéressé',
    'f39',
    451
  ),
  (
    219,
    '2016-07-12',
    'Installation nouvelle',
    'Visite positive',
    'a17',
    502
  ),
  (
    220,
    '2016-07-12',
    'Installation nouvelle',
    'Peu intéressé',
    'c54',
    305
  ),
  (
    221,
    '2016-07-13',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e52',
    581
  ),
  (
    222,
    '2016-07-13',
    'Visite annuelle',
    'RAS',
    'b28',
    346
  ),
  (
    223,
    '2016-07-13',
    'Prise de contact',
    'Pas en confiance',
    'a17',
    786
  ),
  (
    224,
    '2016-07-13',
    'recommandation de confrère',
    'Visite positive',
    'b28',
    422
  ),
  (
    225,
    '2016-07-13',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'b25',
    402
  ),
  (
    226,
    '2016-07-13',
    'recommandation de confrère',
    'RAS',
    'b50',
    391
  ),
  (
    227,
    '2016-07-13',
    'recommandation de confrère',
    'Sur sa réserve',
    'c54',
    699
  ),
  (
    228,
    '2016-07-13',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'e52',
    31
  ),
  (
    229,
    '2016-07-13',
    'Installation nouvelle',
    'Trop pressé',
    'c54',
    728
  ),
  (
    230,
    '2016-07-13',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'c54',
    155
  ),
  (
    231,
    '2016-07-13',
    'Installation nouvelle',
    'Pas très aimable',
    'c14',
    71
  ),
  (
    232,
    '2016-07-13',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'c54',
    887
  ),
  (
    233,
    '2016-07-13',
    'Prise de contact',
    'Trop pressé',
    'c54',
    63
  ),
  (
    234,
    '2016-07-13',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b4',
    83
  ),
  (
    235,
    '2016-07-13',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    946
  ),
  (
    236,
    '2016-07-13',
    'Prise de contact',
    'Pas très aimable',
    'b34',
    139
  ),
  (
    237,
    '2016-07-13',
    'recommandation de confrère',
    'RAS',
    'b13',
    174
  ),
  (
    238,
    '2016-07-13',
    'Demande du médecin',
    'Pas très aimable',
    'f21',
    148
  ),
  (
    239,
    '2016-07-13',
    'recommandation de confrère',
    'Sur sa réserve',
    'e39',
    308
  ),
  (
    240,
    '2016-07-13',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    740
  ),
  (
    241,
    '2016-07-14',
    'Prise de contact',
    'Pas en confiance',
    'b16',
    323
  ),
  (
    242,
    '2016-07-14',
    'Installation nouvelle',
    'Visite positive',
    'b4',
    440
  ),
  (
    243,
    '2016-07-14',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'e22',
    986
  ),
  (
    244,
    '2016-07-14',
    'Visite annuelle',
    'Trop pressé',
    'e22',
    6
  ),
  (
    245,
    '2016-07-14',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b19',
    809
  ),
  (
    246,
    '2016-07-14',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'd13',
    896
  ),
  (
    247,
    '2016-07-14',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'a93',
    499
  ),
  (
    248,
    '2016-07-14',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'c54',
    639
  ),
  (
    249,
    '2016-07-14',
    'recommandation de confrère',
    'Peu intéressé',
    'b4',
    737
  ),
  (
    250,
    '2016-07-14',
    'Prise de contact',
    'RAS',
    'b34',
    979
  ),
  (
    251,
    '2016-07-14',
    'Installation nouvelle',
    'Pas en confiance',
    'e52',
    709
  ),
  (
    252,
    '2016-07-14',
    'recommandation de confrère',
    'Peu bavard',
    'a17',
    290
  ),
  (
    253,
    '2016-07-14',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'a55',
    121
  ),
  (
    254,
    '2016-07-14',
    'Visite annuelle',
    'Pas en confiance',
    'e22',
    116
  ),
  (
    255,
    '2016-07-14',
    'Visite annuelle',
    'Pas intéressé du tout',
    'c54',
    331
  ),
  (
    256,
    '2016-07-14',
    'Installation nouvelle',
    'Peu intéressé',
    'a131',
    204
  ),
  (
    257,
    '2016-07-14',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'a131',
    187
  ),
  (
    258,
    '2016-07-14',
    'Demande du médecin',
    'Peu bavard',
    'c54',
    172
  ),
  (
    259,
    '2016-07-14',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b13',
    311
  ),
  (
    260,
    '2016-07-14',
    'Prise de contact',
    'Peu bavard',
    'f39',
    766
  ),
  (
    261,
    '2016-07-15',
    'Prise de contact',
    'Visite positive',
    'a55',
    634
  ),
  (
    262,
    '2016-07-15',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c14',
    216
  ),
  (
    263,
    '2016-07-15',
    'Demande du médecin',
    'Pas intéressé du tout',
    'e22',
    119
  ),
  (
    264,
    '2016-07-15',
    'Prise de contact',
    'RAS',
    'b19',
    725
  ),
  (
    265,
    '2016-07-15',
    'Installation nouvelle',
    'Trop pressé',
    'e24',
    827
  ),
  (
    266,
    '2016-07-15',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    412
  ),
  (
    267,
    '2016-07-15',
    'Visite annuelle',
    'Peu intéressé',
    'a55',
    837
  ),
  (
    268,
    '2016-07-15',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    97
  ),
  (
    269,
    '2016-07-15',
    'Demande du médecin',
    'Visite positive',
    'f21',
    885
  ),
  (
    270,
    '2016-07-15',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b16',
    484
  ),
  (
    271,
    '2016-07-15',
    'Prise de contact',
    'Visite positive',
    'f39',
    962
  ),
  (
    272,
    '2016-07-15',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'e22',
    9
  ),
  (
    273,
    '2016-07-15',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'd13',
    855
  ),
  (
    274,
    '2016-07-15',
    'Visite annuelle',
    'Sur sa réserve',
    'e5',
    545
  ),
  (
    275,
    '2016-07-15',
    'Installation nouvelle',
    'Trop pressé',
    'b50',
    94
  ),
  (
    276,
    '2016-07-15',
    'Demande du médecin',
    'Trop pressé',
    'd51',
    802
  ),
  (
    277,
    '2016-07-15',
    'Installation nouvelle',
    'Pas très aimable',
    'e49',
    598
  ),
  (
    278,
    '2016-07-15',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'e52',
    291
  ),
  (
    279,
    '2016-07-15',
    'Prise de contact',
    'Pas intéressé du tout',
    'b25',
    97
  ),
  (
    280,
    '2016-07-15',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'a93',
    718
  ),
  (
    281,
    '2016-07-16',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'e49',
    103
  ),
  (
    282,
    '2016-07-16',
    'Installation nouvelle',
    'Pas en confiance',
    'e52',
    128
  ),
  (
    283,
    '2016-07-16',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a55',
    123
  ),
  (
    284,
    '2016-07-16',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'a55',
    866
  ),
  (
    285,
    '2016-07-16',
    'Visite annuelle',
    'Sur sa réserve',
    'b19',
    691
  ),
  (
    286,
    '2016-07-16',
    'Installation nouvelle',
    'Sur sa réserve',
    'e52',
    632
  ),
  (
    287,
    '2016-07-16',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'b34',
    896
  ),
  (
    288,
    '2016-07-16',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'd51',
    714
  ),
  (
    289,
    '2016-07-16',
    'Prise de contact',
    'Pas en confiance',
    'e52',
    284
  ),
  (
    290,
    '2016-07-16',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'a131',
    993
  ),
  (
    291,
    '2016-07-16',
    'Installation nouvelle',
    'Pas en confiance',
    'c54',
    717
  ),
  (
    292,
    '2016-07-16',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b28',
    375
  ),
  (
    293,
    '2016-07-16',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'f21',
    697
  ),
  (
    294,
    '2016-07-16',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a17',
    53
  ),
  (
    295,
    '2016-07-16',
    'Visite annuelle',
    'A revoir assez rapidement',
    'c3',
    446
  ),
  (
    296,
    '2016-07-16',
    'Demande du médecin',
    'RAS',
    'b19',
    236
  ),
  (
    297,
    '2016-07-16',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    222
  ),
  (
    298,
    '2016-07-16',
    'Visite annuelle',
    'Visite positive',
    'a131',
    604
  ),
  (
    299,
    '2016-07-16',
    'Visite annuelle',
    'Pas intéressé du tout',
    'a131',
    959
  ),
  (
    300,
    '2016-07-16',
    'Prise de contact',
    'A revoir assez rapidement',
    'b28',
    743
  ),
  (
    301,
    '2016-07-17',
    'recommandation de confrère',
    'Peu bavard',
    'e22',
    483
  ),
  (
    302,
    '2016-07-17',
    'recommandation de confrère',
    'Peu bavard',
    'e52',
    135
  ),
  (
    303,
    '2016-07-17',
    'Installation nouvelle',
    'Visite positive',
    'a55',
    670
  ),
  (
    304,
    '2016-07-17',
    'recommandation de confrère',
    'Pas très aimable',
    'd13',
    659
  ),
  (
    305,
    '2016-07-17',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'a131',
    905
  ),
  (
    306,
    '2016-07-17',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'b13',
    334
  ),
  (
    307,
    '2016-07-17',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'c3',
    570
  ),
  (
    308,
    '2016-07-17',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'c14',
    978
  ),
  (
    309,
    '2016-07-17',
    'recommandation de confrère',
    'Visite positive',
    'b50',
    349
  ),
  (
    310,
    '2016-07-17',
    'Demande du médecin',
    'Pas en confiance',
    'b4',
    742
  ),
  (
    311,
    '2016-07-17',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    334
  ),
  (
    312,
    '2016-07-17',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'c54',
    577
  ),
  (
    313,
    '2016-07-17',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'c14',
    154
  ),
  (
    314,
    '2016-07-17',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c14',
    871
  ),
  (
    315,
    '2016-07-17',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a55',
    486
  ),
  (
    316,
    '2016-07-17',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e22',
    551
  ),
  (
    317,
    '2016-07-17',
    'Demande du médecin',
    'Sur sa réserve',
    'e49',
    169
  ),
  (
    318,
    '2016-07-17',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b34',
    707
  ),
  (
    319,
    '2016-07-17',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'b4',
    814
  ),
  (
    320,
    '2016-07-17',
    'Prise de contact',
    'Visite positive',
    'c54',
    69
  ),
  (
    321,
    '2016-07-18',
    'Installation nouvelle',
    'Peu bavard',
    'f21',
    71
  ),
  (
    322,
    '2016-07-18',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e39',
    404
  ),
  (
    323,
    '2016-07-18',
    'Demande du médecin',
    'Pas très aimable',
    'c14',
    895
  ),
  (
    324,
    '2016-07-18',
    'Installation nouvelle',
    'Peu intéressé',
    'b28',
    175
  ),
  (
    325,
    '2016-07-18',
    'Installation nouvelle',
    'RAS',
    'a131',
    588
  ),
  (
    326,
    '2016-07-18',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'b50',
    314
  ),
  (
    327,
    '2016-07-18',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'b16',
    926
  ),
  (
    328,
    '2016-07-18',
    'Visite annuelle',
    'Pas en confiance',
    'b28',
    970
  ),
  (
    329,
    '2016-07-18',
    'Installation nouvelle',
    'RAS',
    'e24',
    466
  ),
  (
    330,
    '2016-07-18',
    'Demande du médecin',
    'Trop pressé',
    'f21',
    955
  ),
  (
    331,
    '2016-07-18',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    541
  ),
  (
    332,
    '2016-07-18',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'a131',
    21
  ),
  (
    333,
    '2016-07-18',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'a55',
    548
  ),
  (
    334,
    '2016-07-18',
    'recommandation de confrère',
    'RAS',
    'c3',
    273
  ),
  (
    335,
    '2016-07-18',
    'Prise de contact',
    'Trop pressé',
    'a55',
    812
  ),
  (
    336,
    '2016-07-18',
    'Visite annuelle',
    'Visite positive',
    'b34',
    625
  ),
  (
    337,
    '2016-07-18',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'a55',
    662
  ),
  (
    338,
    '2016-07-18',
    'Visite annuelle',
    'Visite positive',
    'e49',
    65
  ),
  (
    339,
    '2016-07-18',
    'Visite annuelle',
    'RAS',
    'b19',
    91
  ),
  (
    340,
    '2016-07-18',
    'Prise de contact',
    'Peu intéressé',
    'c3',
    511
  ),
  (
    341,
    '2016-07-19',
    'Installation nouvelle',
    'Sur sa réserve',
    'f39',
    789
  ),
  (
    342,
    '2016-07-19',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'a93',
    756
  ),
  (
    343,
    '2016-07-19',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'f21',
    711
  ),
  (
    344,
    '2016-07-19',
    'Prise de contact',
    'Sur sa réserve',
    'e39',
    481
  ),
  (
    345,
    '2016-07-19',
    'Visite annuelle',
    'A revoir assez rapidement',
    'b25',
    203
  ),
  (
    346,
    '2016-07-19',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e5',
    103
  ),
  (
    347,
    '2016-07-19',
    'Prise de contact',
    'RAS',
    'b59',
    796
  ),
  (
    348,
    '2016-07-19',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'd51',
    599
  ),
  (
    349,
    '2016-07-19',
    'Visite annuelle',
    'Pas très aimable',
    'a17',
    994
  ),
  (
    350,
    '2016-07-19',
    'recommandation de confrère',
    'Pas très aimable',
    'a17',
    506
  ),
  (
    351,
    '2016-07-19',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'b16',
    669
  ),
  (
    352,
    '2016-07-19',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'c14',
    935
  ),
  (
    353,
    '2016-07-19',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a17',
    367
  ),
  (
    354,
    '2016-07-19',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'a93',
    385
  ),
  (
    355,
    '2016-07-19',
    'Demande du médecin',
    'Visite positive',
    'b34',
    544
  ),
  (
    356,
    '2016-07-19',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'f39',
    985
  ),
  (
    357,
    '2016-07-19',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'c54',
    980
  ),
  (
    358,
    '2016-07-19',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'c54',
    456
  ),
  (
    359,
    '2016-07-19',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'e24',
    4
  ),
  (
    360,
    '2016-07-19',
    'Visite annuelle',
    'Sur sa réserve',
    'b16',
    318
  ),
  (
    361,
    '2016-07-20',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'c14',
    19
  ),
  (
    362,
    '2016-07-20',
    'Prise de contact',
    'Pas intéressé du tout',
    'f21',
    751
  ),
  (
    363,
    '2016-07-20',
    'Prise de contact',
    'Trop pressé',
    'd51',
    13
  ),
  (
    364,
    '2016-07-20',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b16',
    104
  ),
  (
    365,
    '2016-07-20',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e5',
    535
  ),
  (
    366,
    '2016-07-20',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e5',
    479
  ),
  (
    367,
    '2016-07-20',
    'Visite annuelle',
    'Pas très aimable',
    'b13',
    876
  ),
  (
    368,
    '2016-07-20',
    'Prise de contact',
    'Sur sa réserve',
    'b16',
    137
  ),
  (
    369,
    '2016-07-20',
    'Installation nouvelle',
    'RAS',
    'a131',
    736
  ),
  (
    370,
    '2016-07-20',
    'recommandation de confrère',
    'Peu bavard',
    'c3',
    504
  ),
  (
    371,
    '2016-07-20',
    'Demande du médecin',
    'Visite positive',
    'c3',
    407
  ),
  (
    372,
    '2016-07-20',
    'Visite annuelle',
    'Pas très aimable',
    'b19',
    691
  ),
  (
    373,
    '2016-07-20',
    'Prise de contact',
    'Trop pressé',
    'd13',
    938
  ),
  (
    374,
    '2016-07-20',
    'Demande du médecin',
    'Trop pressé',
    'e49',
    4
  ),
  (
    375,
    '2016-07-20',
    'Installation nouvelle',
    'RAS',
    'e5',
    830
  ),
  (
    376,
    '2016-07-20',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b13',
    276
  ),
  (
    377,
    '2016-07-20',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b34',
    173
  ),
  (
    378,
    '2016-07-20',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'b25',
    424
  ),
  (
    379,
    '2016-07-20',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'a93',
    628
  ),
  (
    380,
    '2016-07-20',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b34',
    587
  ),
  (
    381,
    '2016-07-21',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b28',
    913
  ),
  (
    382,
    '2016-07-21',
    'Prise de contact',
    'Pas intéressé du tout',
    'e39',
    985
  ),
  (
    383,
    '2016-07-21',
    'Demande du médecin',
    'RAS',
    'a17',
    750
  ),
  (
    384,
    '2016-07-21',
    'Visite annuelle',
    'Pas en confiance',
    'b34',
    317
  ),
  (
    385,
    '2016-07-21',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'f21',
    584
  ),
  (
    386,
    '2016-07-21',
    'Demande du médecin',
    'RAS',
    'b16',
    55
  ),
  (
    387,
    '2016-07-21',
    'Demande du médecin',
    'A revoir assez rapidement',
    'b25',
    982
  ),
  (
    388,
    '2016-07-21',
    'Prise de contact',
    'A revoir assez rapidement',
    'a131',
    238
  ),
  (
    389,
    '2016-07-21',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b59',
    644
  ),
  (
    390,
    '2016-07-21',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'e24',
    168
  ),
  (
    391,
    '2016-07-21',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'f21',
    476
  ),
  (
    392,
    '2016-07-21',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b28',
    926
  ),
  (
    393,
    '2016-07-21',
    'recommandation de confrère',
    'Visite positive',
    'f21',
    694
  ),
  (
    394,
    '2016-07-21',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b34',
    294
  ),
  (
    395,
    '2016-07-21',
    'Demande du médecin',
    'Pas intéressé du tout',
    'c3',
    329
  ),
  (
    396,
    '2016-07-21',
    'Visite annuelle',
    'Visite positive',
    'b50',
    22
  ),
  (
    397,
    '2016-07-21',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'a17',
    843
  ),
  (
    398,
    '2016-07-21',
    'Demande du médecin',
    'Pas en confiance',
    'c3',
    428
  ),
  (
    399,
    '2016-07-21',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'e5',
    867
  ),
  (
    400,
    '2016-07-21',
    'Visite annuelle',
    'Pas en confiance',
    'd13',
    810
  ),
  (
    401,
    '2016-07-22',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'a131',
    720
  ),
  (
    402,
    '2016-07-22',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e24',
    910
  ),
  (
    403,
    '2016-07-22',
    'recommandation de confrère',
    'Sur sa réserve',
    'b34',
    467
  ),
  (
    404,
    '2016-07-22',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b13',
    908
  ),
  (
    405,
    '2016-07-22',
    'recommandation de confrère',
    'Peu intéressé',
    'b59',
    629
  ),
  (
    406,
    '2016-07-22',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'd51',
    253
  ),
  (
    407,
    '2016-07-22',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b13',
    702
  ),
  (
    408,
    '2016-07-22',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b13',
    549
  ),
  (
    409,
    '2016-07-22',
    'Installation nouvelle',
    'Pas en confiance',
    'b50',
    651
  ),
  (
    410,
    '2016-07-22',
    'recommandation de confrère',
    'Pas en confiance',
    'e24',
    640
  ),
  (
    411,
    '2016-07-22',
    'Visite annuelle',
    'Sur sa réserve',
    'f21',
    80
  ),
  (
    412,
    '2016-07-22',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'e22',
    108
  ),
  (
    413,
    '2016-07-22',
    'Installation nouvelle',
    'Peu bavard',
    'f21',
    179
  ),
  (
    414,
    '2016-07-22',
    'Demande du médecin',
    'Peu bavard',
    'b28',
    406
  ),
  (
    415,
    '2016-07-22',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'b59',
    749
  ),
  (
    416,
    '2016-07-22',
    'Visite annuelle',
    'RAS',
    'f39',
    420
  ),
  (
    417,
    '2016-07-22',
    'recommandation de confrère',
    'Visite positive',
    'e39',
    968
  ),
  (
    418,
    '2016-07-22',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'a55',
    192
  ),
  (
    419,
    '2016-07-22',
    'Visite annuelle',
    'Visite positive',
    'c3',
    340
  ),
  (
    420,
    '2016-07-22',
    'Prise de contact',
    'Pas très aimable',
    'e52',
    146
  ),
  (
    421,
    '2016-07-23',
    'Installation nouvelle',
    'RAS',
    'a17',
    978
  ),
  (
    422,
    '2016-07-23',
    'Prise de contact',
    'RAS',
    'b28',
    678
  ),
  (
    423,
    '2016-07-23',
    'Prise de contact',
    'RAS',
    'f39',
    68
  ),
  (
    424,
    '2016-07-23',
    'Demande du médecin',
    'RAS',
    'b59',
    23
  ),
  (
    425,
    '2016-07-23',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'a55',
    549
  ),
  (
    426,
    '2016-07-23',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a93',
    115
  ),
  (
    427,
    '2016-07-23',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'a131',
    375
  ),
  (
    428,
    '2016-07-23',
    'Prise de contact',
    'Peu bavard',
    'e5',
    100
  ),
  (
    429,
    '2016-07-23',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'f21',
    116
  ),
  (
    430,
    '2016-07-23',
    'recommandation de confrère',
    'RAS',
    'e5',
    989
  ),
  (
    431,
    '2016-07-23',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'c3',
    931
  ),
  (
    432,
    '2016-07-23',
    'Prise de contact',
    'RAS',
    'f21',
    159
  ),
  (
    433,
    '2016-07-23',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b13',
    23
  ),
  (
    434,
    '2016-07-23',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e49',
    43
  ),
  (
    435,
    '2016-07-23',
    'recommandation de confrère',
    'Peu bavard',
    'a93',
    783
  ),
  (
    436,
    '2016-07-23',
    'recommandation de confrère',
    'Peu bavard',
    'b19',
    443
  ),
  (
    437,
    '2016-07-23',
    'Visite annuelle',
    'Visite positive',
    'b16',
    930
  ),
  (
    438,
    '2016-07-23',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a17',
    157
  ),
  (
    439,
    '2016-07-23',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'a17',
    177
  ),
  (
    440,
    '2016-07-23',
    'Demande du médecin',
    'A revoir assez rapidement',
    'c3',
    831
  ),
  (
    441,
    '2016-07-24',
    'recommandation de confrère',
    'Visite positive',
    'f39',
    881
  ),
  (
    442,
    '2016-07-24',
    'recommandation de confrère',
    'Visite positive',
    'c54',
    519
  ),
  (
    443,
    '2016-07-24',
    'Prise de contact',
    'Peu intéressé',
    'b16',
    6
  ),
  (
    444,
    '2016-07-24',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'f39',
    556
  ),
  (
    445,
    '2016-07-24',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e24',
    681
  ),
  (
    446,
    '2016-07-24',
    'recommandation de confrère',
    'RAS',
    'a55',
    39
  ),
  (
    447,
    '2016-07-24',
    'Prise de contact',
    'RAS',
    'b4',
    408
  ),
  (
    448,
    '2016-07-24',
    'Demande du médecin',
    'Trop pressé',
    'e49',
    719
  ),
  (
    449,
    '2016-07-24',
    'Demande du médecin',
    'Pas intéressé du tout',
    'f39',
    148
  ),
  (
    450,
    '2016-07-24',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'd13',
    330
  ),
  (
    451,
    '2016-07-24',
    'Demande du médecin',
    'Pas en confiance',
    'b50',
    139
  ),
  (
    452,
    '2016-07-24',
    'Visite annuelle',
    'RAS',
    'b25',
    538
  ),
  (
    453,
    '2016-07-24',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b25',
    99
  ),
  (
    454,
    '2016-07-24',
    'Prise de contact',
    'Peu intéressé',
    'a131',
    815
  ),
  (
    455,
    '2016-07-24',
    'Installation nouvelle',
    'Peu bavard',
    'b4',
    784
  ),
  (
    456,
    '2016-07-24',
    'Prise de contact',
    'A revoir assez rapidement',
    'b16',
    813
  ),
  (
    457,
    '2016-07-24',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c54',
    590
  ),
  (
    458,
    '2016-07-24',
    'Visite annuelle',
    'Visite positive',
    'c54',
    495
  ),
  (
    459,
    '2016-07-24',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    129
  ),
  (
    460,
    '2016-07-24',
    'Prise de contact',
    'Peu bavard',
    'e5',
    434
  ),
  (
    461,
    '2016-07-25',
    'Installation nouvelle',
    'Visite positive',
    'b25',
    794
  ),
  (
    462,
    '2016-07-25',
    'Demande du médecin',
    'Pas en confiance',
    'b25',
    507
  ),
  (
    463,
    '2016-07-25',
    'Demande du médecin',
    'Sur sa réserve',
    'b4',
    12
  ),
  (
    464,
    '2016-07-25',
    'recommandation de confrère',
    'Visite positive',
    'e5',
    80
  ),
  (
    465,
    '2016-07-25',
    'Prise de contact',
    'Trop pressé',
    'a17',
    685
  ),
  (
    466,
    '2016-07-25',
    'Prise de contact',
    'Trop pressé',
    'b4',
    260
  ),
  (
    467,
    '2016-07-25',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'd13',
    18
  ),
  (
    468,
    '2016-07-25',
    'Prise de contact',
    'Peu intéressé',
    'b19',
    780
  ),
  (
    469,
    '2016-07-25',
    'Visite annuelle',
    'Peu bavard',
    'a131',
    608
  ),
  (
    470,
    '2016-07-25',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b50',
    335
  ),
  (
    471,
    '2016-07-25',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b28',
    988
  ),
  (
    472,
    '2016-07-25',
    'Prise de contact',
    'Pas très aimable',
    'c14',
    610
  ),
  (
    473,
    '2016-07-25',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'd51',
    919
  ),
  (
    474,
    '2016-07-25',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'f39',
    63
  ),
  (
    475,
    '2016-07-25',
    'Prise de contact',
    'RAS',
    'e52',
    548
  ),
  (
    476,
    '2016-07-25',
    'Visite annuelle',
    'Pas intéressé du tout',
    'a131',
    393
  ),
  (
    477,
    '2016-07-25',
    'recommandation de confrère',
    'Pas très aimable',
    'f21',
    16
  ),
  (
    478,
    '2016-07-25',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'b16',
    23
  ),
  (
    479,
    '2016-07-25',
    'Visite annuelle',
    'Pas en confiance',
    'b59',
    333
  ),
  (
    480,
    '2016-07-25',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'e49',
    309
  ),
  (
    481,
    '2016-07-26',
    'Demande du médecin',
    'RAS',
    'b50',
    143
  ),
  (
    482,
    '2016-07-26',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e5',
    872
  ),
  (
    483,
    '2016-07-26',
    'recommandation de confrère',
    'Peu bavard',
    'b13',
    841
  ),
  (
    484,
    '2016-07-26',
    'Prise de contact',
    'Peu intéressé',
    'b16',
    943
  ),
  (
    485,
    '2016-07-26',
    'Visite annuelle',
    'Peu intéressé',
    'a55',
    818
  ),
  (
    486,
    '2016-07-26',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'e39',
    293
  ),
  (
    487,
    '2016-07-26',
    'Visite annuelle',
    'Trop pressé',
    'e24',
    176
  ),
  (
    488,
    '2016-07-26',
    'Installation nouvelle',
    'Trop pressé',
    'd51',
    31
  ),
  (
    489,
    '2016-07-26',
    'Demande du médecin',
    'Pas très aimable',
    'b19',
    85
  ),
  (
    490,
    '2016-07-26',
    'Installation nouvelle',
    'Peu intéressé',
    'b13',
    546
  ),
  (
    491,
    '2016-07-26',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'a17',
    841
  ),
  (
    492,
    '2016-07-26',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b59',
    278
  ),
  (
    493,
    '2016-07-26',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b19',
    453
  ),
  (
    494,
    '2016-07-26',
    'Demande du médecin',
    'RAS',
    'd51',
    792
  ),
  (
    495,
    '2016-07-26',
    'Demande du médecin',
    'Sur sa réserve',
    'a131',
    566
  ),
  (
    496,
    '2016-07-26',
    'Installation nouvelle',
    'Pas en confiance',
    'b13',
    305
  ),
  (
    497,
    '2016-07-26',
    'Demande du médecin',
    'Sur sa réserve',
    'd13',
    948
  ),
  (
    498,
    '2016-07-26',
    'Installation nouvelle',
    'Sur sa réserve',
    'a93',
    184
  ),
  (
    499,
    '2016-07-26',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'a17',
    571
  ),
  (
    500,
    '2016-07-26',
    'Prise de contact',
    'Peu bavard',
    'b13',
    784
  ),
  (
    501,
    '2016-07-27',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'd51',
    168
  ),
  (
    502,
    '2016-07-27',
    'Prise de contact',
    'A revoir assez rapidement',
    'e22',
    224
  ),
  (
    503,
    '2016-07-27',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'e5',
    627
  ),
  (
    504,
    '2016-07-27',
    'recommandation de confrère',
    'Pas très aimable',
    'f21',
    45
  ),
  (
    505,
    '2016-07-27',
    'recommandation de confrère',
    'Pas en confiance',
    'c3',
    967
  ),
  (
    506,
    '2016-07-27',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    358
  ),
  (
    507,
    '2016-07-27',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'e22',
    758
  ),
  (
    508,
    '2016-07-27',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'b28',
    278
  ),
  (
    509,
    '2016-07-27',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b4',
    147
  ),
  (
    510,
    '2016-07-27',
    'Visite annuelle',
    'Peu bavard',
    'e52',
    47
  ),
  (
    511,
    '2016-07-27',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a131',
    192
  ),
  (
    512,
    '2016-07-27',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b25',
    129
  ),
  (
    513,
    '2016-07-27',
    'Installation nouvelle',
    'RAS',
    'd51',
    711
  ),
  (
    514,
    '2016-07-27',
    'Demande du médecin',
    'A revoir assez rapidement',
    'a17',
    628
  ),
  (
    515,
    '2016-07-27',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'e39',
    327
  ),
  (
    516,
    '2016-07-27',
    'Prise de contact',
    'Peu bavard',
    'b25',
    831
  ),
  (
    517,
    '2016-07-27',
    'Visite annuelle',
    'Pas très aimable',
    'd13',
    664
  ),
  (
    518,
    '2016-07-27',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a131',
    914
  ),
  (
    519,
    '2016-07-27',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'c3',
    344
  ),
  (
    520,
    '2016-07-27',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a17',
    873
  ),
  (
    521,
    '2016-07-28',
    'Installation nouvelle',
    'Pas très aimable',
    'a93',
    900
  ),
  (
    522,
    '2016-07-28',
    'Prise de contact',
    'Trop pressé',
    'e5',
    752
  ),
  (
    523,
    '2016-07-28',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b28',
    708
  ),
  (
    524,
    '2016-07-28',
    'Demande du médecin',
    'Pas très aimable',
    'c14',
    459
  ),
  (
    525,
    '2016-07-28',
    'Visite annuelle',
    'A revoir assez rapidement',
    'a17',
    709
  ),
  (
    526,
    '2016-07-28',
    'recommandation de confrère',
    'Trop pressé',
    'e52',
    821
  ),
  (
    527,
    '2016-07-28',
    'Visite annuelle',
    'Pas en confiance',
    'e5',
    886
  ),
  (
    528,
    '2016-07-28',
    'Installation nouvelle',
    'Pas en confiance',
    'a55',
    400
  ),
  (
    529,
    '2016-07-28',
    'Demande du médecin',
    'Peu intéressé',
    'c3',
    943
  ),
  (
    530,
    '2016-07-28',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    495
  ),
  (
    531,
    '2016-07-28',
    'Installation nouvelle',
    'Peu intéressé',
    'b59',
    437
  ),
  (
    532,
    '2016-07-28',
    'Prise de contact',
    'Pas intéressé du tout',
    'e22',
    265
  ),
  (
    533,
    '2016-07-28',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'b19',
    321
  ),
  (
    534,
    '2016-07-28',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'a131',
    142
  ),
  (
    535,
    '2016-07-28',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'e52',
    684
  ),
  (
    536,
    '2016-07-28',
    'Installation nouvelle',
    'Peu bavard',
    'a55',
    471
  ),
  (
    537,
    '2016-07-28',
    'Installation nouvelle',
    'Peu intéressé',
    'b50',
    322
  ),
  (
    538,
    '2016-07-28',
    'Visite annuelle',
    'Pas très aimable',
    'd13',
    703
  ),
  (
    539,
    '2016-07-28',
    'Installation nouvelle',
    'Pas très aimable',
    'a131',
    971
  ),
  (
    540,
    '2016-07-28',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b28',
    700
  ),
  (
    541,
    '2016-07-29',
    'Visite annuelle',
    'Pas très aimable',
    'e52',
    580
  ),
  (
    542,
    '2016-07-29',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'a131',
    885
  ),
  (
    543,
    '2016-07-29',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    493
  ),
  (
    544,
    '2016-07-29',
    'Prise de contact',
    'Pas en confiance',
    'e24',
    699
  ),
  (
    545,
    '2016-07-29',
    'recommandation de confrère',
    'RAS',
    'e39',
    566
  ),
  (
    546,
    '2016-07-29',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b19',
    411
  ),
  (
    547,
    '2016-07-29',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'c14',
    790
  ),
  (
    548,
    '2016-07-29',
    'Demande du médecin',
    'RAS',
    'f39',
    184
  ),
  (
    549,
    '2016-07-29',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'd13',
    152
  ),
  (
    550,
    '2016-07-29',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a131',
    865
  ),
  (
    551,
    '2016-07-29',
    'recommandation de confrère',
    'Pas très aimable',
    'b50',
    619
  ),
  (
    552,
    '2016-07-29',
    'Demande du médecin',
    'Sur sa réserve',
    'b16',
    78
  ),
  (
    553,
    '2016-07-29',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'a93',
    127
  ),
  (
    554,
    '2016-07-29',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'e5',
    682
  ),
  (
    555,
    '2016-07-29',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'a93',
    917
  ),
  (
    556,
    '2016-07-29',
    'Demande du médecin',
    'A revoir assez rapidement',
    'c3',
    864
  ),
  (
    557,
    '2016-07-29',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'c14',
    316
  ),
  (
    558,
    '2016-07-29',
    'Visite annuelle',
    'Pas très aimable',
    'c54',
    320
  ),
  (
    559,
    '2016-07-29',
    'Visite annuelle',
    'Peu intéressé',
    'd51',
    274
  ),
  (
    560,
    '2016-07-29',
    'recommandation de confrère',
    'Pas très aimable',
    'a55',
    298
  ),
  (
    561,
    '2016-07-30',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'f21',
    33
  ),
  (
    562,
    '2016-07-30',
    'recommandation de confrère',
    'Visite positive',
    'b59',
    205
  ),
  (
    563,
    '2016-07-30',
    'Demande du médecin',
    'Peu bavard',
    'e39',
    611
  ),
  (
    564,
    '2016-07-30',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'c54',
    635
  ),
  (
    565,
    '2016-07-30',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'b16',
    205
  ),
  (
    566,
    '2016-07-30',
    'Installation nouvelle',
    'Peu intéressé',
    'f39',
    251
  ),
  (
    567,
    '2016-07-30',
    'Installation nouvelle',
    'Visite positive',
    'a93',
    788
  ),
  (
    568,
    '2016-07-30',
    'Visite annuelle',
    'Pas très aimable',
    'e24',
    748
  ),
  (
    569,
    '2016-07-30',
    'Demande du médecin',
    'Visite positive',
    'c3',
    813
  ),
  (
    570,
    '2016-07-30',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'f39',
    542
  ),
  (
    574,
    '2016-11-24',
    'installation récente',
    'très positif',
    'a131',
    172
  ),
  (
    575,
    '2016-11-22',
    'installation récente',
    'très positif',
    'a131',
    443
  ),
  (
    576,
    '2016-11-22',
    'installation récente',
    'très positif',
    'a131',
    521
  ),
  (
    577,
    '2016-11-17',
    'nouveau',
    'positif',
    'a131',
    41
  ),
  (
    578,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    579,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    580,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    581,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    582,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    583,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    584,
    '2016-11-09',
    'installation',
    'positif',
    'a131',
    821
  ),
  (
    585,
    '2016-07-02',
    'Installation nouvelle',
    'Trop pressé',
    'b16',
    14
  ),
  (
    586,
    '2014-08-05',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'a93',
    14
  ),
  (
    588,
    '2015-10-02',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    14
  ),
  (
    589,
    '2013-09-02',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e49',
    14
  ),
  (
    590,
    '2017-02-05',
    'Conseil d un collègue',
    'Très positif',
    'a131',
    28
  ),
  (
    591,
    '2016-07-02',
    'Installation nouvelle',
    'Trop pressé',
    'b16',
    14
  ),
  (
    593,
    '2015-07-09',
    'Demande du médecin',
    'Trop pressé',
    'a93',
    14
  ),
  (
    594,
    '2015-10-02',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    14
  ),
  (
    596,
    '2016-11-05',
    'Nouveau médecin, prise de contact',
    'Très positif, très intéressé, à revoir au plus vite',
    'a131',
    614
  ),
  (
    597,
    '2016-11-05',
    'Visite annuelle',
    'Très pressé, peu ouvert mais très courtois, écoute avec intérêt. En attente de résultats',
    'a131',
    87
  ),
  (
    598,
    '2017-02-05',
    'Demande du médecin',
    'Intéressée, je dois la revoir le mois prochain ou dans deux mois, prévoir un rendez-vous',
    'a131',
    577
  ),
  (
    602,
    '2017-02-05',
    'Visite demandée',
    'A revoir',
    'a131',
    299
  ),
  (603, '2017-03-02', 'zaza', 'zaaza', 'a131', 14),
  (
    604,
    '2017-03-02',
    'Visite annuelle',
    'Positif, à revoir dans 3 mois',
    'a131',
    14
  ),
  (
    605,
    '2016-10-20',
    'Visite annuelle',
    'Positif',
    'a131',
    28
  ),
  (
    607,
    '2017-03-06',
    'Visite annuelle',
    'Positif',
    'a131',
    454
  ),
  (611, '2017-03-01', 'aaa', 'aaaa', 'a131', 577),
  (
    620,
    '2016-12-18',
    'recommandation de confrère',
    'Pas en confiance',
    'c14',
    1
  ),
  (
    621,
    '2017-02-07',
    'recommandation de confrère',
    'Sur sa réserve',
    'b13',
    2
  ),
  (
    622,
    '2017-03-28',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'd51',
    3
  ),
  (
    623,
    '2017-02-24',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'a93',
    4
  ),
  (
    624,
    '2016-10-18',
    'Prise de contact',
    'Pas en confiance',
    'b4',
    5
  ),
  (
    625,
    '2017-03-24',
    'Installation nouvelle',
    'Pas en confiance',
    'a131',
    6
  ),
  (
    626,
    '2016-11-06',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'a131',
    7
  ),
  (
    627,
    '2016-12-18',
    'recommandation de confrère',
    'Trop pressé',
    'b25',
    8
  ),
  (
    628,
    '2017-03-29',
    'Visite annuelle',
    'Pas en confiance',
    'b13',
    9
  ),
  (
    629,
    '2016-10-31',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b25',
    10
  ),
  (
    630,
    '2017-02-28',
    'Prise de contact',
    'Visite positive',
    'e39',
    11
  ),
  (
    631,
    '2016-10-15',
    'recommandation de confrère',
    'Trop pressé',
    'c3',
    12
  ),
  (
    632,
    '2017-03-08',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'c3',
    13
  ),
  (
    633,
    '2017-03-07',
    'Demande du médecin',
    'Peu bavard',
    'e22',
    14
  ),
  (
    634,
    '2016-11-21',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'b13',
    15
  ),
  (
    635,
    '2017-02-05',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'a55',
    16
  ),
  (
    636,
    '2017-02-12',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'c3',
    17
  ),
  (
    637,
    '2017-02-15',
    'recommandation de confrère',
    'Peu bavard',
    'f39',
    18
  ),
  (
    638,
    '2017-02-06',
    'Prise de contact',
    'Trop pressé',
    'b50',
    19
  ),
  (
    639,
    '2017-03-22',
    'recommandation de confrère',
    'Peu bavard',
    'b25',
    20
  ),
  (
    640,
    '2017-03-10',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b13',
    21
  );

INSERT INTO
  `rapport` (
    `id`,
    `date`,
    `motif`,
    `bilan`,
    `idVisiteur`,
    `idMedecin`
  )
VALUES
  (
    641,
    '2016-11-24',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c3',
    22
  ),
  (
    642,
    '2016-11-10',
    'Visite annuelle',
    'Peu intéressé',
    'b59',
    23
  ),
  (
    643,
    '2017-03-05',
    'Installation nouvelle',
    'Trop pressé',
    'd13',
    24
  ),
  (
    644,
    '2017-02-06',
    'Installation nouvelle',
    'Sur sa réserve',
    'b25',
    25
  ),
  (
    645,
    '2016-10-25',
    'Visite annuelle',
    'Peu intéressé',
    'e5',
    26
  ),
  (
    646,
    '2016-11-18',
    'Prise de contact',
    'Peu intéressé',
    'b34',
    27
  ),
  (
    647,
    '2017-02-14',
    'Prise de contact',
    'Visite positive',
    'b28',
    28
  ),
  (
    648,
    '2017-02-27',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'e49',
    29
  ),
  (
    649,
    '2017-03-27',
    'Installation nouvelle',
    'Visite positive',
    'c54',
    30
  ),
  (
    650,
    '2016-12-01',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'd13',
    31
  ),
  (
    651,
    '2016-10-01',
    'Prise de contact',
    'A revoir assez rapidement',
    'a131',
    32
  ),
  (
    652,
    '2017-02-27',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'a93',
    33
  ),
  (
    653,
    '2017-03-09',
    'Installation nouvelle',
    'Sur sa réserve',
    'd51',
    34
  ),
  (
    654,
    '2017-04-01',
    'Demande du médecin',
    'Peu intéressé',
    'e22',
    35
  ),
  (
    655,
    '2016-11-08',
    'Visite annuelle',
    'Peu intéressé',
    'd51',
    36
  ),
  (
    656,
    '2016-11-07',
    'Installation nouvelle',
    'Pas en confiance',
    'e24',
    37
  ),
  (
    657,
    '2016-11-23',
    'recommandation de confrère',
    'Pas en confiance',
    'a131',
    38
  ),
  (
    658,
    '2017-04-02',
    'Prise de contact',
    'Peu bavard',
    'e52',
    39
  ),
  (
    659,
    '2017-03-06',
    'Demande du médecin',
    'Visite positive',
    'e22',
    40
  ),
  (
    660,
    '2016-12-09',
    'recommandation de confrère',
    'Trop pressé',
    'd51',
    41
  ),
  (
    661,
    '2017-02-24',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'a55',
    42
  ),
  (
    662,
    '2017-03-26',
    'Installation nouvelle',
    'Peu intéressé',
    'c14',
    43
  ),
  (
    663,
    '2017-02-13',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b13',
    44
  ),
  (
    664,
    '2016-12-05',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'b4',
    45
  ),
  (
    665,
    '2017-03-09',
    'Prise de contact',
    'Pas en confiance',
    'f21',
    46
  ),
  (
    666,
    '2016-11-24',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b19',
    47
  ),
  (
    667,
    '2017-02-19',
    'Demande du médecin',
    'Peu intéressé',
    'd51',
    48
  ),
  (
    668,
    '2017-01-10',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b25',
    49
  ),
  (
    669,
    '2017-01-07',
    'Demande du médecin',
    'Peu intéressé',
    'b59',
    50
  ),
  (
    670,
    '2016-10-16',
    'Installation nouvelle',
    'Visite positive',
    'c3',
    51
  ),
  (
    671,
    '2017-03-28',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e49',
    52
  ),
  (
    672,
    '2016-11-02',
    'Installation nouvelle',
    'Pas très aimable',
    'a55',
    53
  ),
  (
    673,
    '2017-03-02',
    'Prise de contact',
    'Peu intéressé',
    'e5',
    54
  ),
  (
    674,
    '2016-10-30',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'f39',
    55
  ),
  (
    675,
    '2017-01-08',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'd13',
    56
  ),
  (
    676,
    '2017-03-11',
    'Demande du médecin',
    'RAS',
    'b59',
    57
  ),
  (
    677,
    '2017-02-23',
    'Visite annuelle',
    'Pas en confiance',
    'a55',
    58
  ),
  (
    678,
    '2017-02-28',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b13',
    59
  ),
  (
    679,
    '2017-02-02',
    'Visite annuelle',
    'RAS',
    'a17',
    60
  ),
  (
    680,
    '2016-12-23',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'f21',
    61
  ),
  (
    681,
    '2017-02-10',
    'Installation nouvelle',
    'Peu intéressé',
    'a17',
    62
  ),
  (
    682,
    '2016-11-25',
    'Prise de contact',
    'Sur sa réserve',
    'e39',
    63
  ),
  (
    683,
    '2017-03-14',
    'recommandation de confrère',
    'Peu bavard',
    'e39',
    64
  ),
  (
    684,
    '2016-11-23',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'd13',
    65
  ),
  (
    685,
    '2016-11-11',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'a55',
    66
  ),
  (
    686,
    '2016-10-17',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e39',
    67
  ),
  (
    687,
    '2016-10-30',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'f39',
    68
  ),
  (
    688,
    '2017-02-11',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'a55',
    69
  ),
  (
    689,
    '2016-11-08',
    'Prise de contact',
    'Peu bavard',
    'a131',
    70
  ),
  (
    690,
    '2016-12-04',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b16',
    71
  ),
  (
    691,
    '2017-04-05',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e39',
    72
  ),
  (
    692,
    '2016-10-03',
    'Prise de contact',
    'Peu intéressé',
    'b4',
    73
  ),
  (
    693,
    '2016-12-22',
    'Demande du médecin',
    'Visite positive',
    'c14',
    74
  ),
  (
    694,
    '2016-12-01',
    'Visite annuelle',
    'Visite positive',
    'b16',
    75
  ),
  (
    695,
    '2016-12-28',
    'Visite annuelle',
    'Peu intéressé',
    'c14',
    76
  ),
  (
    696,
    '2016-11-19',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b59',
    77
  ),
  (
    697,
    '2016-12-24',
    'recommandation de confrère',
    'Pas très aimable',
    'e49',
    78
  ),
  (
    698,
    '2016-11-19',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'b19',
    79
  ),
  (
    699,
    '2017-02-14',
    'recommandation de confrère',
    'Sur sa réserve',
    'b13',
    80
  ),
  (
    700,
    '2016-11-05',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'd13',
    81
  ),
  (
    701,
    '2017-03-27',
    'recommandation de confrère',
    'Pas très aimable',
    'b25',
    82
  ),
  (
    702,
    '2017-01-08',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b13',
    83
  ),
  (
    703,
    '2017-01-26',
    'Installation nouvelle',
    'Pas très aimable',
    'b13',
    84
  ),
  (
    704,
    '2016-10-17',
    'Installation nouvelle',
    'Peu bavard',
    'e24',
    85
  ),
  (
    705,
    '2017-03-05',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'a93',
    86
  ),
  (
    706,
    '2017-03-31',
    'Visite annuelle',
    'Sur sa réserve',
    'd51',
    87
  ),
  (
    707,
    '2016-10-14',
    'Installation nouvelle',
    'Visite positive',
    'b50',
    88
  ),
  (
    708,
    '2017-03-21',
    'Installation nouvelle',
    'RAS',
    'e5',
    89
  ),
  (
    709,
    '2016-12-16',
    'Demande du médecin',
    'Pas très aimable',
    'b4',
    90
  ),
  (
    710,
    '2017-01-31',
    'recommandation de confrère',
    'Peu bavard',
    'b4',
    91
  ),
  (
    711,
    '2016-10-18',
    'Prise de contact',
    'A revoir assez rapidement',
    'b59',
    92
  ),
  (
    712,
    '2016-11-03',
    'Visite annuelle',
    'Sur sa réserve',
    'f39',
    93
  ),
  (
    713,
    '2017-03-25',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b34',
    94
  ),
  (
    714,
    '2016-11-10',
    'Installation nouvelle',
    'Pas en confiance',
    'e49',
    95
  ),
  (
    715,
    '2017-02-15',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'e52',
    96
  ),
  (
    716,
    '2016-11-01',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e52',
    97
  ),
  (
    717,
    '2017-03-02',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'e49',
    98
  ),
  (
    718,
    '2016-10-17',
    'Prise de contact',
    'Sur sa réserve',
    'f21',
    99
  ),
  (
    719,
    '2017-03-16',
    'recommandation de confrère',
    'RAS',
    'b59',
    100
  ),
  (
    720,
    '2017-03-12',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'e52',
    101
  ),
  (
    721,
    '2017-01-01',
    'recommandation de confrère',
    'Pas très aimable',
    'b59',
    102
  ),
  (
    722,
    '2016-11-24',
    'Installation nouvelle',
    'Trop pressé',
    'e24',
    103
  ),
  (
    723,
    '2017-01-14',
    'Installation nouvelle',
    'Pas en confiance',
    'e22',
    104
  ),
  (
    724,
    '2017-02-04',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e24',
    105
  ),
  (
    725,
    '2016-10-20',
    'Demande du médecin',
    'Pas en confiance',
    'b59',
    106
  ),
  (
    726,
    '2016-12-10',
    'Demande du médecin',
    'Peu intéressé',
    'b25',
    107
  ),
  (
    727,
    '2016-11-18',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b19',
    108
  ),
  (
    728,
    '2017-01-26',
    'Demande du médecin',
    'RAS',
    'a131',
    109
  ),
  (
    729,
    '2016-12-20',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    110
  ),
  (
    730,
    '2017-03-03',
    'recommandation de confrère',
    'Trop pressé',
    'a55',
    111
  ),
  (
    731,
    '2016-10-03',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b25',
    112
  ),
  (
    732,
    '2017-03-24',
    'Prise de contact',
    'Pas intéressé du tout',
    'e24',
    113
  ),
  (
    733,
    '2017-02-17',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b59',
    114
  ),
  (
    734,
    '2017-04-15',
    'Visite annuelle',
    'Pas très aimable',
    'a93',
    115
  ),
  (
    735,
    '2017-04-10',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e39',
    116
  ),
  (
    736,
    '2016-10-23',
    'Prise de contact',
    'Sur sa réserve',
    'b25',
    117
  ),
  (
    737,
    '2017-03-01',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b28',
    118
  ),
  (
    738,
    '2017-02-11',
    'recommandation de confrère',
    'Peu bavard',
    'b19',
    119
  ),
  (
    739,
    '2017-02-16',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'b25',
    120
  ),
  (
    740,
    '2016-10-05',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e39',
    121
  ),
  (
    741,
    '2016-11-03',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'b25',
    122
  ),
  (
    742,
    '2017-03-21',
    'Prise de contact',
    'RAS',
    'b34',
    123
  ),
  (
    743,
    '2017-02-23',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b59',
    124
  ),
  (
    744,
    '2017-02-03',
    'recommandation de confrère',
    'RAS',
    'c54',
    125
  ),
  (
    745,
    '2017-03-26',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'b13',
    126
  ),
  (
    746,
    '2016-10-25',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e24',
    127
  ),
  (
    747,
    '2016-12-03',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b4',
    128
  ),
  (
    748,
    '2017-01-21',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'b34',
    129
  ),
  (
    749,
    '2017-03-21',
    'Prise de contact',
    'Trop pressé',
    'b28',
    130
  ),
  (
    750,
    '2017-03-25',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b16',
    131
  ),
  (
    751,
    '2017-02-15',
    'recommandation de confrère',
    'Pas très aimable',
    'b34',
    132
  ),
  (
    752,
    '2017-02-04',
    'Prise de contact',
    'Pas très aimable',
    'e5',
    133
  ),
  (
    753,
    '2017-01-26',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a131',
    134
  ),
  (
    754,
    '2016-10-12',
    'Demande du médecin',
    'Trop pressé',
    'b16',
    135
  ),
  (
    755,
    '2017-02-23',
    'recommandation de confrère',
    'Peu bavard',
    'e22',
    136
  ),
  (
    756,
    '2017-03-01',
    'Installation nouvelle',
    'Visite positive',
    'b59',
    137
  ),
  (
    757,
    '2016-11-02',
    'recommandation de confrère',
    'Trop pressé',
    'b16',
    138
  ),
  (
    758,
    '2016-11-09',
    'Installation nouvelle',
    'Pas en confiance',
    'a131',
    139
  ),
  (
    759,
    '2017-01-25',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b13',
    140
  ),
  (
    760,
    '2016-12-11',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'e49',
    141
  ),
  (
    761,
    '2017-01-17',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'd51',
    142
  ),
  (
    762,
    '2017-03-17',
    'Visite annuelle',
    'Pas intéressé du tout',
    'c54',
    143
  ),
  (
    763,
    '2017-02-26',
    'Prise de contact',
    'Pas très aimable',
    'a17',
    144
  ),
  (
    764,
    '2017-03-28',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'a17',
    145
  ),
  (
    765,
    '2016-10-24',
    'Visite annuelle',
    'A revoir assez rapidement',
    'd51',
    146
  ),
  (
    766,
    '2017-03-20',
    'Prise de contact',
    'Trop pressé',
    'e52',
    147
  ),
  (
    767,
    '2016-11-05',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e22',
    148
  ),
  (
    768,
    '2017-03-05',
    'Prise de contact',
    'Visite positive',
    'a131',
    149
  ),
  (
    769,
    '2017-02-21',
    'Visite annuelle',
    'Sur sa réserve',
    'e49',
    150
  ),
  (
    770,
    '2017-03-15',
    'Visite annuelle',
    'Trop pressé',
    'a17',
    151
  ),
  (
    771,
    '2017-02-14',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e24',
    152
  ),
  (
    772,
    '2016-10-20',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'e5',
    153
  ),
  (
    773,
    '2017-03-24',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b16',
    154
  ),
  (
    774,
    '2017-01-04',
    'Prise de contact',
    'Peu bavard',
    'a93',
    155
  ),
  (
    775,
    '2016-11-23',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'b50',
    156
  ),
  (
    776,
    '2017-02-16',
    'Prise de contact',
    'Visite positive',
    'b19',
    157
  ),
  (
    777,
    '2017-01-27',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e24',
    158
  ),
  (
    778,
    '2017-01-21',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'f39',
    159
  ),
  (
    779,
    '2017-01-10',
    'Visite annuelle',
    'Peu bavard',
    'e49',
    160
  ),
  (
    780,
    '2017-04-06',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'c14',
    161
  ),
  (
    781,
    '2016-11-27',
    'Prise de contact',
    'Visite positive',
    'b34',
    162
  ),
  (
    782,
    '2016-12-23',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'b25',
    163
  ),
  (
    783,
    '2016-11-03',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'f21',
    164
  ),
  (
    784,
    '2017-02-04',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a55',
    165
  ),
  (
    785,
    '2016-11-11',
    'Demande du médecin',
    'Sur sa réserve',
    'c3',
    166
  ),
  (
    786,
    '2016-11-30',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b19',
    167
  ),
  (
    787,
    '2016-11-06',
    'Visite annuelle',
    'Pas en confiance',
    'b28',
    168
  ),
  (
    788,
    '2017-01-02',
    'Visite annuelle',
    'A revoir assez rapidement',
    'b34',
    169
  ),
  (
    789,
    '2016-10-19',
    'recommandation de confrère',
    'Sur sa réserve',
    'a93',
    170
  ),
  (
    790,
    '2017-02-19',
    'Prise de contact',
    'Visite positive',
    'f39',
    171
  ),
  (
    791,
    '2017-04-17',
    'Visite annuelle',
    'Pas très aimable',
    'c3',
    172
  ),
  (
    792,
    '2016-10-16',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b28',
    173
  ),
  (
    793,
    '2017-03-11',
    'recommandation de confrère',
    'Pas très aimable',
    'e22',
    174
  ),
  (
    794,
    '2017-02-24',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e52',
    175
  ),
  (
    795,
    '2016-11-24',
    'Installation nouvelle',
    'Sur sa réserve',
    'b28',
    176
  ),
  (
    796,
    '2017-04-01',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a131',
    177
  ),
  (
    797,
    '2017-03-13',
    'Visite annuelle',
    'Visite positive',
    'd51',
    178
  ),
  (
    798,
    '2016-10-10',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'e24',
    179
  ),
  (
    799,
    '2016-12-17',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'b19',
    180
  ),
  (
    800,
    '2017-03-08',
    'Installation nouvelle',
    'Sur sa réserve',
    'e5',
    181
  ),
  (
    801,
    '2017-02-28',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'c54',
    182
  ),
  (
    802,
    '2017-01-18',
    'Prise de contact',
    'Trop pressé',
    'e49',
    183
  ),
  (
    803,
    '2017-02-24',
    'Demande du médecin',
    'Visite positive',
    'a55',
    184
  ),
  (
    804,
    '2016-11-25',
    'Prise de contact',
    'RAS',
    'e24',
    185
  ),
  (
    805,
    '2016-11-22',
    'Prise de contact',
    'Pas en confiance',
    'e52',
    186
  ),
  (
    806,
    '2017-01-02',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'c3',
    187
  ),
  (
    807,
    '2016-12-31',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'c14',
    188
  ),
  (
    808,
    '2017-02-17',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'c14',
    189
  ),
  (
    809,
    '2017-01-01',
    'Demande du médecin',
    'Pas très aimable',
    'c14',
    190
  ),
  (
    810,
    '2017-02-27',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b28',
    191
  ),
  (
    811,
    '2017-01-18',
    'recommandation de confrère',
    'Peu intéressé',
    'e49',
    192
  ),
  (
    812,
    '2016-12-16',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'e5',
    193
  ),
  (
    813,
    '2016-10-28',
    'recommandation de confrère',
    'Peu bavard',
    'b16',
    194
  ),
  (
    814,
    '2016-10-07',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'a17',
    195
  ),
  (
    815,
    '2016-10-27',
    'recommandation de confrère',
    'Sur sa réserve',
    'd51',
    196
  ),
  (
    816,
    '2016-10-31',
    'Visite annuelle',
    'Sur sa réserve',
    'e22',
    197
  ),
  (
    817,
    '2016-10-23',
    'Demande du médecin',
    'Trop pressé',
    'f39',
    198
  ),
  (
    818,
    '2017-04-06',
    'Prise de contact',
    'Peu bavard',
    'a17',
    199
  ),
  (
    819,
    '2016-10-24',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b59',
    200
  ),
  (
    820,
    '2017-02-26',
    'Prise de contact',
    'A revoir assez rapidement',
    'a93',
    201
  ),
  (
    821,
    '2016-12-18',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    202
  ),
  (
    822,
    '2016-10-08',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b16',
    203
  ),
  (
    823,
    '2017-03-28',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e49',
    204
  ),
  (
    824,
    '2016-10-10',
    'Installation nouvelle',
    'Sur sa réserve',
    'b50',
    205
  ),
  (
    825,
    '2017-03-21',
    'Demande du médecin',
    'Pas en confiance',
    'a17',
    206
  ),
  (
    826,
    '2017-02-15',
    'Prise de contact',
    'Peu bavard',
    'c54',
    207
  ),
  (
    827,
    '2017-03-15',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'd13',
    208
  ),
  (
    828,
    '2017-04-02',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'd51',
    209
  ),
  (
    829,
    '2017-02-26',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e22',
    210
  ),
  (
    830,
    '2017-02-19',
    'Demande du médecin',
    'Pas en confiance',
    'b16',
    211
  ),
  (
    831,
    '2017-03-19',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b50',
    212
  ),
  (
    832,
    '2016-11-03',
    'Visite annuelle',
    'RAS',
    'b28',
    213
  ),
  (
    833,
    '2016-11-10',
    'recommandation de confrère',
    'Pas très aimable',
    'c14',
    214
  ),
  (
    834,
    '2017-02-27',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e52',
    215
  ),
  (
    835,
    '2017-01-11',
    'recommandation de confrère',
    'RAS',
    'a93',
    216
  ),
  (
    836,
    '2017-03-10',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'f21',
    217
  ),
  (
    837,
    '2016-11-04',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'a131',
    218
  ),
  (
    838,
    '2017-01-05',
    'Prise de contact',
    'Pas en confiance',
    'c54',
    219
  ),
  (
    839,
    '2017-01-11',
    'Prise de contact',
    'A revoir assez rapidement',
    'b19',
    220
  ),
  (
    840,
    '2016-12-22',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'd51',
    221
  ),
  (
    841,
    '2017-03-25',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'a131',
    222
  ),
  (
    842,
    '2016-12-03',
    'Installation nouvelle',
    'Peu intéressé',
    'c54',
    223
  ),
  (
    843,
    '2017-01-21',
    'Demande du médecin',
    'Sur sa réserve',
    'e52',
    224
  ),
  (
    844,
    '2016-11-10',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a131',
    225
  ),
  (
    845,
    '2016-10-31',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b59',
    226
  ),
  (
    846,
    '2016-10-19',
    'recommandation de confrère',
    'Visite positive',
    'e22',
    227
  ),
  (
    847,
    '2016-11-02',
    'Visite annuelle',
    'RAS',
    'b19',
    228
  ),
  (
    848,
    '2017-04-05',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a131',
    229
  ),
  (
    849,
    '2016-12-16',
    'Prise de contact',
    'Pas intéressé du tout',
    'a17',
    230
  ),
  (
    850,
    '2016-12-18',
    'Demande du médecin',
    'Trop pressé',
    'b34',
    231
  ),
  (
    851,
    '2017-03-03',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'a55',
    232
  ),
  (
    852,
    '2016-12-01',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'f21',
    233
  ),
  (
    853,
    '2016-10-19',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b25',
    234
  ),
  (
    854,
    '2016-11-18',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e52',
    235
  ),
  (
    855,
    '2017-03-29',
    'Installation nouvelle',
    'Visite positive',
    'b25',
    236
  ),
  (
    856,
    '2017-03-03',
    'Installation nouvelle',
    'Trop pressé',
    'b34',
    237
  ),
  (
    857,
    '2017-03-30',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'e39',
    238
  ),
  (
    858,
    '2016-11-30',
    'Demande du médecin',
    'Pas très aimable',
    'e52',
    239
  ),
  (
    859,
    '2017-01-05',
    'recommandation de confrère',
    'Pas en confiance',
    'd13',
    240
  ),
  (
    860,
    '2017-01-11',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b28',
    241
  ),
  (
    861,
    '2017-02-01',
    'Visite annuelle',
    'Sur sa réserve',
    'e24',
    242
  ),
  (
    862,
    '2016-10-18',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b50',
    243
  ),
  (
    863,
    '2017-03-18',
    'Demande du médecin',
    'Sur sa réserve',
    'd51',
    244
  ),
  (
    864,
    '2016-12-20',
    'Demande du médecin',
    'Pas très aimable',
    'a55',
    245
  ),
  (
    865,
    '2017-03-10',
    'Visite annuelle',
    'Sur sa réserve',
    'a93',
    246
  ),
  (
    866,
    '2016-12-05',
    'Prise de contact',
    'Trop pressé',
    'e24',
    247
  ),
  (
    867,
    '2017-01-25',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b34',
    248
  ),
  (
    868,
    '2016-11-23',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a93',
    249
  ),
  (
    869,
    '2016-12-06',
    'Prise de contact',
    'Trop pressé',
    'e22',
    250
  ),
  (
    870,
    '2017-01-14',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e22',
    251
  ),
  (
    871,
    '2016-12-20',
    'Visite annuelle',
    'Peu bavard',
    'f21',
    252
  ),
  (
    872,
    '2016-11-13',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'a93',
    253
  ),
  (
    873,
    '2016-11-26',
    'Installation nouvelle',
    'Visite positive',
    'b4',
    254
  ),
  (
    874,
    '2017-01-25',
    'Demande du médecin',
    'Peu bavard',
    'a131',
    255
  ),
  (
    875,
    '2016-12-23',
    'Prise de contact',
    'Sur sa réserve',
    'e5',
    256
  ),
  (
    876,
    '2016-12-16',
    'Prise de contact',
    'Sur sa réserve',
    'e52',
    257
  ),
  (
    877,
    '2017-04-17',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'e5',
    258
  ),
  (
    878,
    '2017-02-07',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e5',
    259
  ),
  (
    879,
    '2017-03-14',
    'Prise de contact',
    'Pas en confiance',
    'b19',
    260
  ),
  (
    880,
    '2017-02-05',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    261
  ),
  (
    881,
    '2017-02-19',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'd51',
    262
  ),
  (
    882,
    '2016-10-25',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'a17',
    263
  ),
  (
    883,
    '2017-01-18',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'a55',
    264
  ),
  (
    884,
    '2017-03-05',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'f39',
    265
  ),
  (
    885,
    '2017-04-05',
    'Visite annuelle',
    'Peu bavard',
    'b16',
    266
  ),
  (
    886,
    '2017-02-03',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'b34',
    267
  ),
  (
    887,
    '2016-10-10',
    'recommandation de confrère',
    'Pas très aimable',
    'a55',
    268
  ),
  (
    888,
    '2017-01-14',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e22',
    269
  ),
  (
    889,
    '2017-03-31',
    'Prise de contact',
    'Sur sa réserve',
    'e22',
    270
  ),
  (
    890,
    '2016-12-09',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'a131',
    271
  ),
  (
    891,
    '2017-01-04',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'f39',
    272
  ),
  (
    892,
    '2017-02-04',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b50',
    273
  ),
  (
    893,
    '2016-10-30',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'c54',
    274
  ),
  (
    894,
    '2017-03-03',
    'Demande du médecin',
    'Peu bavard',
    'a17',
    275
  ),
  (
    895,
    '2016-11-04',
    'Installation nouvelle',
    'Pas très aimable',
    'b13',
    276
  ),
  (
    896,
    '2016-12-16',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e39',
    277
  ),
  (
    897,
    '2016-11-27',
    'Prise de contact',
    'A revoir assez rapidement',
    'b19',
    278
  ),
  (
    898,
    '2016-11-14',
    'Installation nouvelle',
    'Trop pressé',
    'b50',
    279
  ),
  (
    899,
    '2016-11-26',
    'recommandation de confrère',
    'Pas en confiance',
    'b34',
    280
  ),
  (
    900,
    '2016-12-04',
    'Prise de contact',
    'Pas en confiance',
    'c54',
    281
  ),
  (
    901,
    '2017-03-21',
    'Visite annuelle',
    'Peu bavard',
    'e39',
    282
  ),
  (
    902,
    '2016-12-27',
    'recommandation de confrère',
    'Peu intéressé',
    'c54',
    283
  ),
  (
    903,
    '2017-01-16',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    284
  ),
  (
    904,
    '2017-03-28',
    'Installation nouvelle',
    'Trop pressé',
    'a131',
    285
  ),
  (
    905,
    '2017-02-22',
    'Prise de contact',
    'Pas en confiance',
    'a17',
    286
  ),
  (
    906,
    '2016-11-22',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'c14',
    287
  ),
  (
    907,
    '2016-10-24',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e5',
    288
  ),
  (
    908,
    '2017-01-29',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'd51',
    289
  ),
  (
    909,
    '2017-04-11',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b16',
    290
  ),
  (
    910,
    '2017-01-05',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'b59',
    291
  ),
  (
    911,
    '2017-02-05',
    'Installation nouvelle',
    'Pas en confiance',
    'a93',
    292
  ),
  (
    912,
    '2016-10-14',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'd51',
    293
  ),
  (
    913,
    '2016-11-25',
    'Installation nouvelle',
    'Trop pressé',
    'e49',
    294
  ),
  (
    914,
    '2017-03-14',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'a131',
    295
  ),
  (
    915,
    '2017-04-09',
    'Prise de contact',
    'Trop pressé',
    'c3',
    296
  ),
  (
    916,
    '2017-01-10',
    'Visite annuelle',
    'Peu bavard',
    'e52',
    297
  ),
  (
    917,
    '2016-12-09',
    'recommandation de confrère',
    'Trop pressé',
    'e5',
    298
  ),
  (
    918,
    '2016-11-26',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'f21',
    299
  ),
  (
    919,
    '2016-10-31',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'd13',
    300
  ),
  (
    920,
    '2016-10-27',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a93',
    301
  ),
  (
    921,
    '2016-12-07',
    'Installation nouvelle',
    'Pas très aimable',
    'e52',
    302
  ),
  (
    922,
    '2017-04-15',
    'recommandation de confrère',
    'Visite positive',
    'b25',
    303
  ),
  (
    923,
    '2017-02-15',
    'Demande du médecin',
    'Pas intéressé du tout',
    'a17',
    304
  ),
  (
    924,
    '2016-10-23',
    'recommandation de confrère',
    'Peu bavard',
    'c3',
    305
  ),
  (
    925,
    '2017-02-04',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'b13',
    306
  ),
  (
    926,
    '2016-12-01',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    307
  ),
  (
    927,
    '2016-10-26',
    'Installation nouvelle',
    'Trop pressé',
    'd13',
    308
  ),
  (
    928,
    '2016-11-21',
    'Installation nouvelle',
    'Peu intéressé',
    'e5',
    309
  ),
  (
    929,
    '2017-04-09',
    'Prise de contact',
    'A revoir assez rapidement',
    'e52',
    310
  ),
  (
    930,
    '2017-01-12',
    'Visite annuelle',
    'Peu intéressé',
    'b4',
    311
  ),
  (
    931,
    '2016-10-11',
    'Prise de contact',
    'Sur sa réserve',
    'f39',
    312
  ),
  (
    932,
    '2016-10-30',
    'Prise de contact',
    'Visite positive',
    'b34',
    313
  ),
  (
    933,
    '2016-11-14',
    'recommandation de confrère',
    'RAS',
    'b28',
    314
  ),
  (
    934,
    '2016-12-01',
    'Demande du médecin',
    'Visite positive',
    'd51',
    315
  ),
  (
    935,
    '2016-11-12',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'b25',
    316
  ),
  (
    936,
    '2016-11-26',
    'Demande du médecin',
    'RAS',
    'a131',
    317
  ),
  (
    937,
    '2016-12-23',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'c54',
    318
  ),
  (
    938,
    '2017-01-25',
    'Visite annuelle',
    'RAS',
    'c3',
    319
  ),
  (
    939,
    '2017-03-25',
    'Demande du médecin',
    'Sur sa réserve',
    'e52',
    320
  ),
  (
    940,
    '2017-01-06',
    'Prise de contact',
    'Pas en confiance',
    'd13',
    321
  ),
  (
    941,
    '2017-03-20',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    322
  ),
  (
    942,
    '2017-02-11',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'd51',
    323
  ),
  (
    943,
    '2017-02-20',
    'Prise de contact',
    'Trop pressé',
    'e49',
    324
  ),
  (
    944,
    '2016-11-23',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'e49',
    325
  ),
  (
    945,
    '2016-12-15',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'e24',
    326
  ),
  (
    946,
    '2016-12-17',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a93',
    327
  ),
  (
    947,
    '2017-03-18',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'f21',
    328
  ),
  (
    948,
    '2016-11-01',
    'recommandation de confrère',
    'Sur sa réserve',
    'e39',
    329
  ),
  (
    949,
    '2016-10-01',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'f39',
    330
  ),
  (
    950,
    '2017-03-14',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'e5',
    331
  ),
  (
    951,
    '2017-03-17',
    'Prise de contact',
    'Visite positive',
    'a131',
    332
  ),
  (
    952,
    '2016-12-21',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b19',
    333
  ),
  (
    953,
    '2016-11-18',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b28',
    334
  ),
  (
    954,
    '2017-03-23',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'c54',
    335
  ),
  (
    955,
    '2017-01-18',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b16',
    336
  ),
  (
    956,
    '2016-10-22',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'e39',
    337
  ),
  (
    957,
    '2016-12-14',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'a55',
    338
  ),
  (
    958,
    '2016-11-07',
    'Visite annuelle',
    'RAS',
    'e24',
    339
  ),
  (
    959,
    '2017-03-17',
    'Installation nouvelle',
    'Peu intéressé',
    'f21',
    340
  ),
  (
    960,
    '2016-12-15',
    'Installation nouvelle',
    'Pas en confiance',
    'd13',
    341
  ),
  (
    961,
    '2016-10-30',
    'Demande du médecin',
    'Pas en confiance',
    'e5',
    342
  ),
  (
    962,
    '2016-12-16',
    'recommandation de confrère',
    'Peu intéressé',
    'a17',
    343
  ),
  (
    963,
    '2017-04-02',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    344
  ),
  (
    964,
    '2016-10-20',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b16',
    345
  ),
  (
    965,
    '2017-04-06',
    'Visite annuelle',
    'Trop pressé',
    'c14',
    346
  ),
  (
    966,
    '2016-12-22',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'a55',
    347
  ),
  (
    967,
    '2016-11-24',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'b13',
    348
  ),
  (
    968,
    '2016-10-10',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e49',
    349
  ),
  (
    969,
    '2017-01-16',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e52',
    350
  ),
  (
    970,
    '2017-04-01',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'c14',
    351
  ),
  (
    971,
    '2017-04-12',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b28',
    352
  ),
  (
    972,
    '2017-02-23',
    'Prise de contact',
    'Trop pressé',
    'e22',
    353
  ),
  (
    973,
    '2017-04-05',
    'Installation nouvelle',
    'RAS',
    'b25',
    354
  ),
  (
    974,
    '2016-10-14',
    'Demande du médecin',
    'A revoir assez rapidement',
    'f21',
    355
  ),
  (
    975,
    '2016-10-28',
    'Installation nouvelle',
    'Pas très aimable',
    'c54',
    356
  ),
  (
    976,
    '2016-12-17',
    'Installation nouvelle',
    'Peu bavard',
    'c54',
    357
  ),
  (
    977,
    '2017-02-02',
    'Installation nouvelle',
    'RAS',
    'b13',
    358
  ),
  (
    978,
    '2016-10-09',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'b25',
    359
  ),
  (
    979,
    '2017-02-08',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'd13',
    360
  ),
  (
    980,
    '2016-10-01',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'e49',
    361
  ),
  (
    981,
    '2016-10-30',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b34',
    362
  ),
  (
    982,
    '2016-11-30',
    'recommandation de confrère',
    'Pas en confiance',
    'b28',
    363
  ),
  (
    983,
    '2017-02-19',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'b25',
    364
  ),
  (
    984,
    '2016-10-08',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'b16',
    365
  ),
  (
    985,
    '2017-03-04',
    'Prise de contact',
    'Pas en confiance',
    'a93',
    366
  ),
  (
    986,
    '2016-12-27',
    'Prise de contact',
    'Trop pressé',
    'a55',
    367
  ),
  (
    987,
    '2016-12-15',
    'Installation nouvelle',
    'Trop pressé',
    'e52',
    368
  ),
  (
    988,
    '2017-02-09',
    'Prise de contact',
    'Peu bavard',
    'b4',
    369
  ),
  (
    989,
    '2016-11-20',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'd13',
    370
  ),
  (
    990,
    '2017-01-11',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'e22',
    371
  ),
  (
    991,
    '2017-03-21',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'e52',
    372
  ),
  (
    992,
    '2016-10-18',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e49',
    373
  ),
  (
    993,
    '2016-10-07',
    'Demande du médecin',
    'Peu intéressé',
    'b50',
    374
  ),
  (
    994,
    '2017-04-18',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'd51',
    375
  ),
  (
    995,
    '2016-10-15',
    'Visite annuelle',
    'Peu bavard',
    'c54',
    376
  ),
  (
    996,
    '2016-11-23',
    'recommandation de confrère',
    'Trop pressé',
    'a93',
    377
  ),
  (
    997,
    '2016-11-03',
    'Demande du médecin',
    'RAS',
    'b19',
    378
  ),
  (
    998,
    '2016-12-18',
    'Prise de contact',
    'Pas en confiance',
    'a93',
    379
  ),
  (
    999,
    '2016-11-24',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e24',
    380
  ),
  (
    1000,
    '2017-04-16',
    'Installation nouvelle',
    'Peu bavard',
    'b34',
    381
  ),
  (
    1001,
    '2016-12-26',
    'recommandation de confrère',
    'Peu intéressé',
    'b28',
    382
  ),
  (
    1002,
    '2017-02-14',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a131',
    383
  ),
  (
    1003,
    '2016-12-22',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'b34',
    384
  ),
  (
    1004,
    '2017-02-07',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'a131',
    385
  ),
  (
    1005,
    '2016-10-05',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'e24',
    386
  ),
  (
    1006,
    '2017-04-13',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    387
  ),
  (
    1007,
    '2017-02-05',
    'Installation nouvelle',
    'Sur sa réserve',
    'f39',
    388
  ),
  (
    1008,
    '2017-04-16',
    'Installation nouvelle',
    'Pas en confiance',
    'b28',
    389
  ),
  (
    1009,
    '2016-11-03',
    'Installation nouvelle',
    'Sur sa réserve',
    'b50',
    390
  ),
  (
    1010,
    '2017-04-08',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'd13',
    391
  ),
  (
    1011,
    '2017-04-04',
    'Visite annuelle',
    'Visite positive',
    'd13',
    392
  ),
  (
    1012,
    '2017-04-04',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'c3',
    393
  ),
  (
    1013,
    '2017-01-25',
    'Demande du médecin',
    'Pas en confiance',
    'd51',
    394
  ),
  (
    1014,
    '2016-10-02',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    395
  ),
  (
    1015,
    '2016-12-20',
    'Demande du médecin',
    'Trop pressé',
    'f21',
    396
  ),
  (
    1016,
    '2016-12-14',
    'Prise de contact',
    'RAS',
    'e39',
    397
  ),
  (
    1017,
    '2016-10-12',
    'Demande du médecin',
    'A revoir assez rapidement',
    'a131',
    398
  ),
  (
    1018,
    '2017-01-14',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'd51',
    399
  ),
  (
    1019,
    '2017-03-24',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'f21',
    400
  ),
  (
    1020,
    '2016-11-05',
    'Installation nouvelle',
    'Pas très aimable',
    'b25',
    401
  ),
  (
    1021,
    '2016-11-20',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e24',
    402
  ),
  (
    1022,
    '2017-04-03',
    'Visite annuelle',
    'Pas intéressé du tout',
    'e52',
    403
  ),
  (
    1023,
    '2016-11-17',
    'Installation nouvelle',
    'RAS',
    'c54',
    404
  ),
  (
    1024,
    '2017-02-12',
    'Prise de contact',
    'Pas intéressé du tout',
    'b59',
    405
  ),
  (
    1025,
    '2016-10-04',
    'Visite annuelle',
    'Pas très aimable',
    'd51',
    406
  ),
  (
    1026,
    '2016-11-01',
    'Prise de contact',
    'RAS',
    'c54',
    407
  ),
  (
    1027,
    '2016-10-31',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'e52',
    408
  ),
  (
    1028,
    '2016-12-28',
    'Prise de contact',
    'A revoir assez rapidement',
    'c54',
    409
  ),
  (
    1029,
    '2017-02-24',
    'Demande du médecin',
    'Pas en confiance',
    'e39',
    410
  ),
  (
    1030,
    '2016-10-11',
    'Demande du médecin',
    'Visite positive',
    'a131',
    411
  ),
  (
    1031,
    '2017-04-07',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'e24',
    412
  ),
  (
    1032,
    '2017-04-10',
    'Prise de contact',
    'Peu bavard',
    'b34',
    413
  ),
  (
    1033,
    '2017-03-18',
    'Demande du médecin',
    'Peu intéressé',
    'a93',
    414
  ),
  (
    1034,
    '2016-11-11',
    'recommandation de confrère',
    'Sur sa réserve',
    'e39',
    415
  ),
  (
    1035,
    '2017-01-17',
    'recommandation de confrère',
    'Pas très aimable',
    'e5',
    416
  ),
  (
    1036,
    '2016-11-21',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'e39',
    417
  ),
  (
    1037,
    '2017-01-14',
    'Prise de contact',
    'Visite positive',
    'b25',
    418
  ),
  (
    1038,
    '2017-03-14',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e24',
    419
  ),
  (
    1039,
    '2016-11-11',
    'Prise de contact',
    'Pas en confiance',
    'e5',
    420
  ),
  (
    1040,
    '2017-02-14',
    'Demande du médecin',
    'Trop pressé',
    'd51',
    421
  ),
  (
    1041,
    '2016-10-09',
    'Prise de contact',
    'RAS',
    'a93',
    422
  ),
  (
    1042,
    '2017-01-17',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'e39',
    423
  ),
  (
    1043,
    '2016-11-19',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b19',
    424
  ),
  (
    1044,
    '2017-02-12',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'c14',
    425
  ),
  (
    1045,
    '2017-03-11',
    'Visite annuelle',
    'A revoir assez rapidement',
    'c14',
    426
  ),
  (
    1046,
    '2017-01-31',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'b34',
    427
  ),
  (
    1047,
    '2017-03-28',
    'Visite annuelle',
    'Peu intéressé',
    'd13',
    428
  ),
  (
    1048,
    '2016-11-07',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'b19',
    429
  ),
  (
    1049,
    '2016-11-04',
    'recommandation de confrère',
    'Visite positive',
    'e49',
    430
  ),
  (
    1050,
    '2016-12-13',
    'Demande du médecin',
    'A revoir assez rapidement',
    'b4',
    431
  ),
  (
    1051,
    '2016-10-05',
    'Visite annuelle',
    'RAS',
    'e52',
    432
  ),
  (
    1052,
    '2016-11-19',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b19',
    433
  ),
  (
    1053,
    '2017-03-12',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'd51',
    434
  ),
  (
    1054,
    '2016-10-08',
    'Visite annuelle',
    'RAS',
    'b28',
    435
  ),
  (
    1055,
    '2017-03-26',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b34',
    436
  ),
  (
    1056,
    '2016-11-11',
    'Installation nouvelle',
    'Pas très aimable',
    'f39',
    437
  ),
  (
    1057,
    '2017-03-10',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e24',
    438
  ),
  (
    1058,
    '2016-10-29',
    'recommandation de confrère',
    'Sur sa réserve',
    'b50',
    439
  ),
  (
    1059,
    '2017-03-04',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'c3',
    440
  ),
  (
    1060,
    '2017-02-11',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'e22',
    441
  ),
  (
    1061,
    '2016-10-18',
    'Installation nouvelle',
    'Visite positive',
    'f39',
    442
  ),
  (
    1062,
    '2016-11-06',
    'Prise de contact',
    'A revoir assez rapidement',
    'a17',
    443
  ),
  (
    1063,
    '2017-03-23',
    'Prise de contact',
    'Peu bavard',
    'd51',
    444
  ),
  (
    1064,
    '2016-10-26',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b19',
    445
  ),
  (
    1065,
    '2016-12-28',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b25',
    446
  ),
  (
    1066,
    '2016-10-22',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'e52',
    447
  ),
  (
    1067,
    '2016-10-10',
    'Installation nouvelle',
    'Peu intéressé',
    'b16',
    448
  ),
  (
    1068,
    '2017-01-26',
    'Prise de contact',
    'Trop pressé',
    'b19',
    449
  ),
  (
    1069,
    '2017-01-24',
    'Prise de contact',
    'Pas intéressé du tout',
    'c14',
    450
  ),
  (
    1070,
    '2017-04-08',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'b34',
    451
  ),
  (
    1071,
    '2017-02-26',
    'recommandation de confrère',
    'Peu intéressé',
    'd13',
    452
  ),
  (
    1072,
    '2017-04-11',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e52',
    453
  ),
  (
    1073,
    '2017-02-04',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'c54',
    454
  ),
  (
    1074,
    '2017-01-09',
    'recommandation de confrère',
    'Pas très aimable',
    'e24',
    455
  ),
  (
    1075,
    '2017-01-25',
    'recommandation de confrère',
    'Peu intéressé',
    'c3',
    456
  ),
  (
    1076,
    '2017-01-14',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b34',
    457
  ),
  (
    1077,
    '2017-03-17',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'c54',
    458
  ),
  (
    1078,
    '2017-01-21',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'e39',
    459
  ),
  (
    1079,
    '2016-11-20',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'a55',
    460
  ),
  (
    1080,
    '2016-12-31',
    'Prise de contact',
    'Peu intéressé',
    'c3',
    461
  ),
  (
    1081,
    '2016-11-28',
    'recommandation de confrère',
    'Pas très aimable',
    'b28',
    462
  ),
  (
    1082,
    '2016-12-20',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'e24',
    463
  ),
  (
    1083,
    '2017-04-01',
    'Prise de contact',
    'Peu bavard',
    'a131',
    464
  ),
  (
    1084,
    '2017-02-20',
    'Demande du médecin',
    'Visite positive',
    'e22',
    465
  ),
  (
    1085,
    '2017-01-10',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b25',
    466
  ),
  (
    1086,
    '2016-12-18',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'f39',
    467
  ),
  (
    1087,
    '2017-04-09',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e24',
    468
  ),
  (
    1088,
    '2016-12-01',
    'Prise de contact',
    'Pas intéressé du tout',
    'a93',
    469
  ),
  (
    1089,
    '2017-04-16',
    'Demande du médecin',
    'Pas intéressé du tout',
    'c3',
    470
  ),
  (
    1090,
    '2016-12-30',
    'Visite annuelle',
    'Peu bavard',
    'e39',
    471
  ),
  (
    1091,
    '2017-04-03',
    'Demande du médecin',
    'Pas en confiance',
    'a131',
    472
  ),
  (
    1092,
    '2017-02-20',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'a131',
    473
  ),
  (
    1093,
    '2017-03-30',
    'recommandation de confrère',
    'Pas très aimable',
    'f21',
    474
  ),
  (
    1094,
    '2017-02-07',
    'Installation nouvelle',
    'Sur sa réserve',
    'c54',
    475
  ),
  (
    1095,
    '2017-02-04',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'a55',
    476
  ),
  (
    1096,
    '2017-02-16',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    477
  ),
  (
    1097,
    '2016-11-19',
    'recommandation de confrère',
    'RAS',
    'b34',
    478
  ),
  (
    1098,
    '2017-04-12',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b34',
    479
  ),
  (
    1099,
    '2017-01-22',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a131',
    480
  ),
  (
    1100,
    '2016-10-02',
    'Demande du médecin',
    'Pas intéressé du tout',
    'd51',
    481
  ),
  (
    1101,
    '2016-11-12',
    'Demande du médecin',
    'Visite positive',
    'b59',
    482
  ),
  (
    1102,
    '2017-03-28',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b28',
    483
  ),
  (
    1103,
    '2016-11-08',
    'Installation nouvelle',
    'Peu intéressé',
    'e5',
    484
  ),
  (
    1104,
    '2017-03-07',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e52',
    485
  ),
  (
    1105,
    '2017-04-04',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'e52',
    486
  ),
  (
    1106,
    '2016-11-19',
    'Installation nouvelle',
    'RAS',
    'c54',
    487
  ),
  (
    1107,
    '2017-01-19',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'd13',
    488
  ),
  (
    1108,
    '2016-12-01',
    'Visite annuelle',
    'Pas très aimable',
    'b25',
    489
  ),
  (
    1109,
    '2016-12-10',
    'Installation nouvelle',
    'Peu intéressé',
    'b34',
    490
  ),
  (
    1110,
    '2016-10-30',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'e52',
    491
  ),
  (
    1111,
    '2016-12-07',
    'Installation nouvelle',
    'Sur sa réserve',
    'b25',
    492
  ),
  (
    1112,
    '2016-12-17',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e22',
    493
  ),
  (
    1113,
    '2017-04-04',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'e22',
    494
  ),
  (
    1114,
    '2017-01-22',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b59',
    495
  ),
  (
    1115,
    '2016-11-29',
    'Demande du médecin',
    'Peu bavard',
    'd13',
    496
  ),
  (
    1116,
    '2017-04-18',
    'recommandation de confrère',
    'RAS',
    'a17',
    497
  ),
  (
    1117,
    '2016-10-23',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'a55',
    498
  ),
  (
    1118,
    '2017-04-11',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'f39',
    499
  ),
  (
    1119,
    '2017-03-01',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'c3',
    500
  ),
  (
    1120,
    '2017-01-25',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'a93',
    501
  ),
  (
    1121,
    '2017-02-16',
    'Installation nouvelle',
    'Pas en confiance',
    'e5',
    502
  ),
  (
    1122,
    '2016-10-06',
    'recommandation de confrère',
    'Pas en confiance',
    'f39',
    503
  ),
  (
    1123,
    '2016-11-26',
    'Prise de contact',
    'RAS',
    'e52',
    504
  ),
  (
    1124,
    '2017-04-17',
    'recommandation de confrère',
    'Peu intéressé',
    'b59',
    505
  ),
  (
    1125,
    '2017-02-12',
    'Visite annuelle',
    'Sur sa réserve',
    'e24',
    506
  ),
  (
    1126,
    '2017-04-02',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b13',
    507
  ),
  (
    1127,
    '2017-02-09',
    'Visite annuelle',
    'Peu bavard',
    'd51',
    508
  ),
  (
    1128,
    '2017-03-12',
    'recommandation de confrère',
    'Peu intéressé',
    'c14',
    509
  ),
  (
    1129,
    '2016-10-08',
    'recommandation de confrère',
    'Peu bavard',
    'b34',
    510
  ),
  (
    1130,
    '2016-11-01',
    'Visite annuelle',
    'RAS',
    'b19',
    511
  ),
  (
    1131,
    '2017-03-28',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'c3',
    512
  ),
  (
    1132,
    '2017-02-17',
    'recommandation de confrère',
    'Peu bavard',
    'e5',
    513
  ),
  (
    1133,
    '2017-04-18',
    'Visite annuelle',
    'Visite positive',
    'b59',
    514
  ),
  (
    1134,
    '2017-01-27',
    'Prise de contact',
    'A revoir assez rapidement',
    'b16',
    515
  ),
  (
    1135,
    '2017-03-28',
    'Prise de contact',
    'A revoir assez rapidement',
    'e52',
    516
  ),
  (
    1136,
    '2017-03-28',
    'Visite annuelle',
    'Sur sa réserve',
    'b4',
    517
  ),
  (
    1137,
    '2017-01-13',
    'Prise de contact',
    'Visite positive',
    'b13',
    518
  ),
  (
    1138,
    '2017-04-08',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'c14',
    519
  ),
  (
    1139,
    '2016-10-15',
    'recommandation de confrère',
    'Peu intéressé',
    'b4',
    520
  ),
  (
    1140,
    '2017-02-13',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'e39',
    521
  ),
  (
    1141,
    '2016-10-24',
    'Visite annuelle',
    'Trop pressé',
    'e24',
    522
  ),
  (
    1142,
    '2016-10-01',
    'Prise de contact',
    'Peu bavard',
    'c54',
    523
  ),
  (
    1143,
    '2017-01-26',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'd13',
    524
  ),
  (
    1144,
    '2017-04-05',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'e49',
    525
  ),
  (
    1145,
    '2016-12-07',
    'Demande du médecin',
    'RAS',
    'b13',
    526
  ),
  (
    1146,
    '2016-10-06',
    'recommandation de confrère',
    'Peu intéressé',
    'b59',
    527
  ),
  (
    1147,
    '2017-03-01',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'd51',
    528
  ),
  (
    1148,
    '2017-01-23',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'd51',
    529
  ),
  (
    1149,
    '2016-10-07',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'e39',
    530
  ),
  (
    1150,
    '2016-12-13',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a55',
    531
  ),
  (
    1151,
    '2017-01-24',
    'Demande du médecin',
    'Pas très aimable',
    'b16',
    532
  ),
  (
    1152,
    '2016-10-15',
    'Installation nouvelle',
    'Pas très aimable',
    'f21',
    533
  ),
  (
    1153,
    '2017-01-19',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b25',
    534
  ),
  (
    1154,
    '2016-11-04',
    'Demande du médecin',
    'Pas en confiance',
    'b28',
    535
  ),
  (
    1155,
    '2016-11-04',
    'Demande du médecin',
    'Peu bavard',
    'd13',
    536
  ),
  (
    1156,
    '2016-10-01',
    'Demande du médecin',
    'RAS',
    'e39',
    537
  ),
  (
    1157,
    '2016-11-10',
    'Installation nouvelle',
    'Pas très aimable',
    'b59',
    538
  ),
  (
    1158,
    '2016-12-05',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'e52',
    539
  ),
  (
    1159,
    '2017-04-16',
    'recommandation de confrère',
    'Pas très aimable',
    'e24',
    540
  ),
  (
    1160,
    '2016-11-12',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'a55',
    541
  ),
  (
    1161,
    '2017-03-01',
    'Prise de contact',
    'Sur sa réserve',
    'c14',
    542
  ),
  (
    1162,
    '2017-02-26',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'e24',
    543
  ),
  (
    1163,
    '2017-02-17',
    'Prise de contact',
    'Trop pressé',
    'a93',
    544
  ),
  (
    1164,
    '2016-12-31',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b28',
    545
  ),
  (
    1165,
    '2016-11-17',
    'recommandation de confrère',
    'RAS',
    'b25',
    546
  ),
  (
    1166,
    '2016-10-15',
    'Visite annuelle',
    'Trop pressé',
    'f39',
    547
  ),
  (
    1167,
    '2017-01-21',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b19',
    548
  ),
  (
    1168,
    '2017-02-16',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'b50',
    549
  ),
  (
    1169,
    '2017-03-14',
    'recommandation de confrère',
    'Peu intéressé',
    'c3',
    550
  ),
  (
    1170,
    '2016-10-26',
    'Prise de contact',
    'RAS',
    'f21',
    551
  ),
  (
    1171,
    '2016-11-23',
    'recommandation de confrère',
    'Demande à me revoir dans un mois',
    'e49',
    552
  ),
  (
    1172,
    '2017-04-05',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b16',
    553
  ),
  (
    1173,
    '2017-03-12',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b4',
    554
  ),
  (
    1174,
    '2017-02-18',
    'Visite annuelle',
    'RAS',
    'd51',
    555
  ),
  (
    1175,
    '2017-03-15',
    'Visite annuelle',
    'Peu bavard',
    'c3',
    556
  ),
  (
    1176,
    '2017-04-09',
    'Demande du médecin',
    'RAS',
    'e22',
    557
  ),
  (
    1177,
    '2016-12-17',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'c3',
    558
  ),
  (
    1178,
    '2017-03-23',
    'Prise de contact',
    'A revoir assez rapidement',
    'e24',
    559
  ),
  (
    1179,
    '2017-03-07',
    'Visite annuelle',
    'RAS',
    'b16',
    560
  ),
  (
    1180,
    '2016-12-02',
    'Installation nouvelle',
    'RAS',
    'b19',
    561
  ),
  (
    1181,
    '2017-02-22',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b4',
    562
  ),
  (
    1182,
    '2016-12-29',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'e22',
    563
  ),
  (
    1183,
    '2017-03-28',
    'Demande du médecin',
    'Pas en confiance',
    'f39',
    564
  ),
  (
    1184,
    '2017-01-11',
    'Prise de contact',
    'Peu bavard',
    'a131',
    565
  ),
  (
    1185,
    '2017-03-16',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e24',
    566
  ),
  (
    1186,
    '2016-10-01',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b19',
    567
  ),
  (
    1187,
    '2016-10-21',
    'Installation nouvelle',
    'Pas très aimable',
    'd13',
    568
  ),
  (
    1188,
    '2016-10-15',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'a17',
    569
  ),
  (
    1189,
    '2016-10-18',
    'Installation nouvelle',
    'Visite positive',
    'e52',
    570
  ),
  (
    1190,
    '2017-03-13',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'd51',
    571
  ),
  (
    1191,
    '2016-12-21',
    'Installation nouvelle',
    'Trop pressé',
    'd13',
    572
  ),
  (
    1192,
    '2017-03-20',
    'Demande du médecin',
    'A revoir assez rapidement',
    'b28',
    573
  ),
  (
    1193,
    '2016-10-14',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b19',
    574
  ),
  (
    1194,
    '2016-12-06',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e49',
    575
  ),
  (
    1195,
    '2017-02-18',
    'Visite annuelle',
    'Pas intéressé du tout',
    'd51',
    576
  ),
  (
    1196,
    '2016-10-19',
    'Visite annuelle',
    'Trop pressé',
    'a55',
    577
  ),
  (
    1197,
    '2017-03-29',
    'Installation nouvelle',
    'Peu intéressé',
    'e39',
    578
  ),
  (
    1198,
    '2017-01-29',
    'Visite annuelle',
    'Sur sa réserve',
    'b16',
    579
  ),
  (
    1199,
    '2017-03-09',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'b4',
    580
  ),
  (
    1200,
    '2016-11-16',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'e52',
    581
  ),
  (
    1201,
    '2017-01-15',
    'Demande du médecin',
    'Pas très aimable',
    'a17',
    582
  ),
  (
    1202,
    '2016-12-28',
    'Visite annuelle',
    'Pas en confiance',
    'e39',
    583
  ),
  (
    1203,
    '2017-01-10',
    'Visite annuelle',
    'A revoir assez rapidement',
    'd13',
    584
  ),
  (
    1204,
    '2016-12-07',
    'Prise de contact',
    'Pas très aimable',
    'b25',
    585
  ),
  (
    1205,
    '2017-04-09',
    'Prise de contact',
    'Pas en confiance',
    'b13',
    586
  ),
  (
    1206,
    '2016-11-29',
    'Prise de contact',
    'Pas en confiance',
    'f21',
    587
  ),
  (
    1207,
    '2017-03-17',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'c3',
    588
  ),
  (
    1208,
    '2017-04-04',
    'recommandation de confrère',
    'Pas très aimable',
    'f39',
    589
  ),
  (
    1209,
    '2017-03-09',
    'Prise de contact',
    'Sur sa réserve',
    'e49',
    590
  ),
  (
    1210,
    '2017-01-18',
    'Prise de contact',
    'Trop pressé',
    'e39',
    591
  ),
  (
    1211,
    '2017-04-11',
    'Visite annuelle',
    'Pas intéressé du tout',
    'c54',
    592
  ),
  (
    1212,
    '2017-04-02',
    'Prise de contact',
    'Visite positive',
    'b16',
    593
  ),
  (
    1213,
    '2016-11-04',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'd51',
    594
  ),
  (
    1214,
    '2016-10-01',
    'Demande du médecin',
    'Pas très aimable',
    'a17',
    595
  ),
  (
    1215,
    '2017-01-21',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b25',
    596
  ),
  (
    1216,
    '2017-02-06',
    'Visite annuelle',
    'Visite positive',
    'd51',
    597
  ),
  (
    1217,
    '2016-12-24',
    'Demande du médecin',
    'Visite positive',
    'f21',
    598
  ),
  (
    1218,
    '2016-12-30',
    'Installation nouvelle',
    'Pas en confiance',
    'b34',
    599
  ),
  (
    1219,
    '2017-04-06',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b16',
    600
  ),
  (
    1220,
    '2016-11-11',
    'Visite annuelle',
    'RAS',
    'b25',
    601
  ),
  (
    1221,
    '2016-12-03',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    602
  ),
  (
    1222,
    '2016-12-17',
    'recommandation de confrère',
    'Peu bavard',
    'c54',
    603
  ),
  (
    1223,
    '2017-03-09',
    'Visite annuelle',
    'A revoir assez rapidement',
    'f21',
    604
  ),
  (
    1224,
    '2016-12-15',
    'Demande du médecin',
    'Sur sa réserve',
    'e49',
    605
  ),
  (
    1225,
    '2016-11-16',
    'Prise de contact',
    'Sur sa réserve',
    'e22',
    606
  ),
  (
    1226,
    '2017-02-23',
    'recommandation de confrère',
    'Pas en confiance',
    'b4',
    607
  ),
  (
    1227,
    '2016-12-06',
    'Visite annuelle',
    'Pas en confiance',
    'a17',
    608
  ),
  (
    1228,
    '2017-04-17',
    'Prise de contact',
    'Visite positive',
    'b4',
    609
  ),
  (
    1229,
    '2017-01-23',
    'recommandation de confrère',
    'Peu bavard',
    'b4',
    610
  ),
  (
    1230,
    '2017-02-28',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b59',
    611
  ),
  (
    1231,
    '2016-11-22',
    'Demande du médecin',
    'Sur sa réserve',
    'b34',
    612
  ),
  (
    1232,
    '2017-01-15',
    'recommandation de confrère',
    'Peu bavard',
    'c3',
    613
  ),
  (
    1233,
    '2017-03-04',
    'Prise de contact',
    'Peu bavard',
    'c54',
    614
  ),
  (
    1234,
    '2017-04-14',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b4',
    615
  ),
  (
    1235,
    '2017-01-10',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'b25',
    616
  ),
  (
    1236,
    '2016-11-15',
    'recommandation de confrère',
    'Pas très aimable',
    'b4',
    617
  ),
  (
    1237,
    '2016-11-16',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b50',
    618
  ),
  (
    1238,
    '2016-12-23',
    'Installation nouvelle',
    'RAS',
    'b16',
    619
  ),
  (
    1239,
    '2016-12-01',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b59',
    620
  ),
  (
    1240,
    '2017-03-06',
    'Demande du médecin',
    'Visite positive',
    'c14',
    621
  ),
  (
    1241,
    '2016-10-24',
    'Visite annuelle',
    'Pas intéressé du tout',
    'c54',
    622
  ),
  (
    1242,
    '2016-12-29',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b19',
    623
  ),
  (
    1243,
    '2016-12-19',
    'Prise de contact',
    'Peu intéressé',
    'e24',
    624
  ),
  (
    1244,
    '2017-01-07',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b34',
    625
  ),
  (
    1245,
    '2017-02-09',
    'Installation nouvelle',
    'Sur sa réserve',
    'e22',
    626
  ),
  (
    1246,
    '2016-12-28',
    'Prise de contact',
    'Sur sa réserve',
    'a131',
    627
  ),
  (
    1247,
    '2016-12-08',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b25',
    628
  ),
  (
    1248,
    '2017-04-01',
    'Visite annuelle',
    'Pas très aimable',
    'a93',
    629
  ),
  (
    1249,
    '2016-10-30',
    'recommandation de confrère',
    'Sur sa réserve',
    'a17',
    630
  ),
  (
    1250,
    '2017-01-26',
    'recommandation de confrère',
    'Peu bavard',
    'f39',
    631
  ),
  (
    1251,
    '2016-12-16',
    'Visite annuelle',
    'RAS',
    'e5',
    632
  ),
  (
    1252,
    '2017-03-26',
    'Demande du médecin',
    'Pas en confiance',
    'b28',
    633
  ),
  (
    1253,
    '2016-12-27',
    'Visite annuelle',
    'Visite positive',
    'a131',
    634
  ),
  (
    1254,
    '2016-11-17',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'c54',
    635
  ),
  (
    1255,
    '2016-10-02',
    'Demande du médecin',
    'A revoir assez rapidement',
    'e22',
    636
  );

INSERT INTO
  `rapport` (
    `id`,
    `date`,
    `motif`,
    `bilan`,
    `idVisiteur`,
    `idMedecin`
  )
VALUES
  (
    1256,
    '2017-04-05',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b28',
    637
  ),
  (
    1257,
    '2017-04-07',
    'Installation nouvelle',
    'Pas très aimable',
    'b59',
    638
  ),
  (
    1258,
    '2017-03-14',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'd51',
    639
  ),
  (
    1259,
    '2017-03-11',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b28',
    640
  ),
  (
    1260,
    '2017-01-07',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'a131',
    641
  ),
  (
    1261,
    '2016-10-02',
    'recommandation de confrère',
    'Visite positive',
    'e5',
    642
  ),
  (
    1262,
    '2016-11-17',
    'Prise de contact',
    'Peu intéressé',
    'f39',
    643
  ),
  (
    1263,
    '2017-03-30',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b25',
    644
  ),
  (
    1264,
    '2017-02-28',
    'Demande du médecin',
    'RAS',
    'b19',
    645
  ),
  (
    1265,
    '2017-03-11',
    'Installation nouvelle',
    'Peu intéressé',
    'a93',
    646
  ),
  (
    1266,
    '2017-02-17',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b19',
    647
  ),
  (
    1267,
    '2016-11-24',
    'Visite annuelle',
    'A revoir assez rapidement',
    'a55',
    648
  ),
  (
    1268,
    '2017-03-15',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'e22',
    649
  ),
  (
    1269,
    '2016-11-03',
    'Demande du médecin',
    'Pas en confiance',
    'f21',
    650
  ),
  (
    1270,
    '2016-11-29',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b34',
    651
  ),
  (
    1271,
    '2017-03-19',
    'Installation nouvelle',
    'Pas très aimable',
    'b16',
    652
  ),
  (
    1272,
    '2016-10-21',
    'Prise de contact',
    'Peu intéressé',
    'c54',
    653
  ),
  (
    1273,
    '2016-10-17',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'e39',
    654
  ),
  (
    1274,
    '2016-12-12',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'e39',
    655
  ),
  (
    1275,
    '2017-01-10',
    'Prise de contact',
    'Pas très aimable',
    'a17',
    656
  ),
  (
    1276,
    '2016-12-11',
    'recommandation de confrère',
    'Sur sa réserve',
    'a93',
    657
  ),
  (
    1277,
    '2017-01-10',
    'Demande du médecin',
    'Sur sa réserve',
    'c3',
    658
  ),
  (
    1278,
    '2017-01-15',
    'Visite annuelle',
    'Peu intéressé',
    'b28',
    659
  ),
  (
    1279,
    '2017-02-01',
    'Prise de contact',
    'Pas intéressé du tout',
    'a55',
    660
  ),
  (
    1280,
    '2017-02-04',
    'Demande du médecin',
    'Sur sa réserve',
    'e39',
    661
  ),
  (
    1281,
    '2016-11-20',
    'Installation nouvelle',
    'RAS',
    'e24',
    662
  ),
  (
    1282,
    '2016-11-23',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b13',
    663
  ),
  (
    1283,
    '2017-03-24',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'e22',
    664
  ),
  (
    1284,
    '2017-03-27',
    'Visite annuelle',
    'RAS',
    'a17',
    665
  ),
  (
    1285,
    '2016-12-27',
    'Prise de contact',
    'Pas en confiance',
    'e24',
    666
  ),
  (
    1286,
    '2016-12-12',
    'Demande du médecin',
    'RAS',
    'f21',
    667
  ),
  (
    1287,
    '2016-11-02',
    'Visite annuelle',
    'Sur sa réserve',
    'e39',
    668
  ),
  (
    1288,
    '2017-02-16',
    'Demande du médecin',
    'Sur sa réserve',
    'b19',
    669
  ),
  (
    1289,
    '2016-12-24',
    'Installation nouvelle',
    'Visite positive',
    'e22',
    670
  ),
  (
    1290,
    '2017-03-09',
    'Prise de contact',
    'Visite positive',
    'b16',
    671
  ),
  (
    1291,
    '2017-04-15',
    'recommandation de confrère',
    'Trop pressé',
    'c54',
    672
  ),
  (
    1292,
    '2017-02-17',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'c54',
    673
  ),
  (
    1293,
    '2017-01-20',
    'Demande du médecin',
    'Trop pressé',
    'b13',
    674
  ),
  (
    1294,
    '2017-01-17',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e5',
    675
  ),
  (
    1295,
    '2017-01-28',
    'Visite annuelle',
    'Pas très aimable',
    'a55',
    676
  ),
  (
    1296,
    '2016-10-28',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'd13',
    677
  ),
  (
    1297,
    '2017-03-05',
    'Visite annuelle',
    'Pas intéressé du tout',
    'a55',
    678
  ),
  (
    1298,
    '2016-11-08',
    'Demande du médecin',
    'A revoir assez rapidement',
    'f39',
    679
  ),
  (
    1299,
    '2017-01-30',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'b4',
    680
  ),
  (
    1300,
    '2017-02-18',
    'Prise de contact',
    'Pas intéressé du tout',
    'f21',
    681
  ),
  (
    1301,
    '2017-02-19',
    'Prise de contact',
    'A revoir assez rapidement',
    'b50',
    682
  ),
  (
    1302,
    '2017-01-27',
    'recommandation de confrère',
    'Pas en confiance',
    'a131',
    683
  ),
  (
    1303,
    '2016-12-15',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e24',
    684
  ),
  (
    1304,
    '2017-03-23',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b50',
    685
  ),
  (
    1305,
    '2016-12-31',
    'Visite annuelle',
    'Visite positive',
    'c14',
    686
  ),
  (
    1306,
    '2017-04-04',
    'Demande du médecin',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    687
  ),
  (
    1307,
    '2016-10-02',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'a131',
    688
  ),
  (
    1308,
    '2017-02-04',
    'Visite annuelle',
    'Sur sa réserve',
    'b13',
    689
  ),
  (
    1309,
    '2017-03-08',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    690
  ),
  (
    1310,
    '2016-12-03',
    'Visite annuelle',
    'RAS',
    'e39',
    691
  ),
  (
    1311,
    '2017-01-04',
    'Demande du médecin',
    'Pas en confiance',
    'b19',
    692
  ),
  (
    1312,
    '2016-11-03',
    'Prise de contact',
    'Sur sa réserve',
    'e5',
    693
  ),
  (
    1313,
    '2016-12-31',
    'Demande du médecin',
    'Peu bavard',
    'd51',
    694
  ),
  (
    1314,
    '2017-01-29',
    'Installation nouvelle',
    'RAS',
    'b28',
    695
  ),
  (
    1315,
    '2016-11-02',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'f21',
    696
  ),
  (
    1316,
    '2016-12-22',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b34',
    697
  ),
  (
    1317,
    '2017-03-03',
    'recommandation de confrère',
    'Peu bavard',
    'b19',
    698
  ),
  (
    1318,
    '2016-12-11',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b4',
    699
  ),
  (
    1319,
    '2016-10-02',
    'Visite annuelle',
    'RAS',
    'd51',
    700
  ),
  (
    1320,
    '2017-02-08',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'c14',
    701
  ),
  (
    1321,
    '2017-01-13',
    'Installation nouvelle',
    'Pas très aimable',
    'b25',
    702
  ),
  (
    1322,
    '2016-10-10',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'a17',
    703
  ),
  (
    1323,
    '2017-02-01',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b34',
    704
  ),
  (
    1324,
    '2017-01-31',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'e39',
    705
  ),
  (
    1325,
    '2017-03-25',
    'Demande du médecin',
    'Très fixé sur les produits utilisés',
    'b16',
    706
  ),
  (
    1326,
    '2017-01-16',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'f21',
    707
  ),
  (
    1327,
    '2016-11-19',
    'Prise de contact',
    'Trop pressé',
    'c3',
    708
  ),
  (
    1328,
    '2017-02-19',
    'Demande du médecin',
    'Trop pressé',
    'a131',
    709
  ),
  (
    1329,
    '2017-03-22',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'e22',
    710
  ),
  (
    1330,
    '2016-10-25',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b19',
    711
  ),
  (
    1331,
    '2016-12-19',
    'recommandation de confrère',
    'Pas très aimable',
    'b25',
    712
  ),
  (
    1332,
    '2016-10-18',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'e52',
    713
  ),
  (
    1333,
    '2017-02-06',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b28',
    714
  ),
  (
    1334,
    '2017-02-13',
    'recommandation de confrère',
    'Peu bavard',
    'd13',
    715
  ),
  (
    1335,
    '2016-11-13',
    'Installation nouvelle',
    'RAS',
    'b59',
    716
  ),
  (
    1336,
    '2017-03-21',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b19',
    717
  ),
  (
    1337,
    '2016-12-13',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'e22',
    718
  ),
  (
    1338,
    '2017-02-12',
    'Installation nouvelle',
    'Trop pressé',
    'e39',
    719
  ),
  (
    1339,
    '2016-10-04',
    'Demande du médecin',
    'Visite positive',
    'd13',
    720
  ),
  (
    1340,
    '2016-11-24',
    'Visite annuelle',
    'Visite positive',
    'b59',
    721
  ),
  (
    1341,
    '2017-03-01',
    'Installation nouvelle',
    'Peu intéressé',
    'b59',
    722
  ),
  (
    1342,
    '2017-01-22',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'f39',
    723
  ),
  (
    1343,
    '2017-04-06',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'c14',
    724
  ),
  (
    1344,
    '2016-10-15',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b4',
    725
  ),
  (
    1345,
    '2017-01-23',
    'Demande du médecin',
    'Peu intéressé',
    'd51',
    726
  ),
  (
    1346,
    '2016-11-22',
    'Visite annuelle',
    'A revoir assez rapidement',
    'f21',
    727
  ),
  (
    1347,
    '2017-01-21',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b50',
    728
  ),
  (
    1348,
    '2016-10-16',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'a131',
    729
  ),
  (
    1349,
    '2017-02-24',
    'Prise de contact',
    'Pas en confiance',
    'a93',
    730
  ),
  (
    1350,
    '2016-10-10',
    'recommandation de confrère',
    'Pas en confiance',
    'f39',
    731
  ),
  (
    1351,
    '2016-10-15',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'e52',
    732
  ),
  (
    1352,
    '2016-11-09',
    'Visite annuelle',
    'Pas en confiance',
    'b13',
    733
  ),
  (
    1353,
    '2017-03-17',
    'Demande du médecin',
    'RAS',
    'e52',
    734
  ),
  (
    1354,
    '2016-11-20',
    'Visite annuelle',
    'A revoir assez rapidement',
    'd51',
    735
  ),
  (
    1355,
    '2017-01-07',
    'recommandation de confrère',
    'Peu intéressé',
    'c3',
    736
  ),
  (
    1356,
    '2016-10-17',
    'recommandation de confrère',
    'Peu intéressé',
    'c54',
    737
  ),
  (
    1357,
    '2016-12-25',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'c14',
    738
  ),
  (
    1358,
    '2016-10-19',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e22',
    739
  ),
  (
    1359,
    '2017-02-09',
    'recommandation de confrère',
    'Pas très aimable',
    'e24',
    740
  ),
  (
    1360,
    '2016-12-06',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b4',
    741
  ),
  (
    1361,
    '2016-12-02',
    'Visite annuelle',
    'Pas très aimable',
    'd51',
    742
  ),
  (
    1362,
    '2016-11-30',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'c3',
    743
  ),
  (
    1363,
    '2016-12-01',
    'Visite annuelle',
    'Trop pressé',
    'a17',
    744
  ),
  (
    1364,
    '2017-04-11',
    'Visite annuelle',
    'Peu intéressé',
    'b16',
    745
  ),
  (
    1365,
    '2017-02-04',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'e24',
    746
  ),
  (
    1366,
    '2016-12-13',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'c3',
    747
  ),
  (
    1367,
    '2016-10-07',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b28',
    748
  ),
  (
    1368,
    '2017-01-23',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'a93',
    749
  ),
  (
    1369,
    '2016-11-13',
    'Prise de contact',
    'A revoir assez rapidement',
    'f39',
    750
  ),
  (
    1370,
    '2016-11-24',
    'Demande du médecin',
    'Pas intéressé du tout',
    'f39',
    751
  ),
  (
    1371,
    '2017-02-15',
    'Demande du médecin',
    'A revoir assez rapidement',
    'a131',
    752
  ),
  (
    1372,
    '2017-02-05',
    'Demande du médecin',
    'Pas en confiance',
    'c14',
    753
  ),
  (
    1373,
    '2016-10-07',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'a93',
    754
  ),
  (
    1374,
    '2017-03-29',
    'Visite annuelle',
    'RAS',
    'a93',
    755
  ),
  (
    1375,
    '2016-10-02',
    'Visite annuelle',
    'Trop pressé',
    'f21',
    756
  ),
  (
    1376,
    '2016-11-07',
    'Prise de contact',
    'Peu bavard',
    'e49',
    757
  ),
  (
    1377,
    '2017-02-27',
    'Prise de contact',
    'Visite positive',
    'b59',
    758
  ),
  (
    1378,
    '2017-03-29',
    'recommandation de confrère',
    'Peu intéressé',
    'b50',
    759
  ),
  (
    1379,
    '2017-03-30',
    'Prise de contact',
    'RAS',
    'a93',
    760
  ),
  (
    1380,
    '2017-04-08',
    'Visite annuelle',
    'Peu intéressé',
    'e24',
    761
  ),
  (
    1381,
    '2017-01-30',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b13',
    762
  ),
  (
    1382,
    '2016-12-17',
    'Visite annuelle',
    'A revoir assez rapidement',
    'b16',
    763
  ),
  (
    1383,
    '2017-01-01',
    'Visite annuelle',
    'Peu bavard',
    'b16',
    764
  ),
  (
    1384,
    '2017-01-20',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'b16',
    765
  ),
  (
    1385,
    '2016-11-24',
    'Prise de contact',
    'Pas intéressé du tout',
    'a93',
    766
  ),
  (
    1386,
    '2016-12-28',
    'Demande du médecin',
    'Pas très aimable',
    'a55',
    767
  ),
  (
    1387,
    '2017-01-08',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'b4',
    768
  ),
  (
    1388,
    '2017-04-12',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'f21',
    769
  ),
  (
    1389,
    '2016-10-23',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b50',
    770
  ),
  (
    1390,
    '2016-11-07',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    771
  ),
  (
    1391,
    '2016-11-22',
    'Installation nouvelle',
    'RAS',
    'e39',
    772
  ),
  (
    1392,
    '2017-04-12',
    'Installation nouvelle',
    'Visite positive',
    'c54',
    773
  ),
  (
    1393,
    '2017-02-13',
    'recommandation de confrère',
    'Visite positive',
    'c3',
    774
  ),
  (
    1394,
    '2017-03-12',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b28',
    775
  ),
  (
    1395,
    '2016-10-24',
    'Visite annuelle',
    'Trop pressé',
    'e22',
    776
  ),
  (
    1396,
    '2017-04-04',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'c3',
    777
  ),
  (
    1397,
    '2017-03-29',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'd13',
    778
  ),
  (
    1398,
    '2017-04-15',
    'Demande du médecin',
    'RAS',
    'b50',
    779
  ),
  (
    1399,
    '2017-04-15',
    'Installation nouvelle',
    'Visite positive',
    'e39',
    780
  ),
  (
    1400,
    '2016-11-24',
    'recommandation de confrère',
    'Sur sa réserve',
    'e39',
    781
  ),
  (
    1401,
    '2017-03-11',
    'Installation nouvelle',
    'Pas en confiance',
    'a93',
    782
  ),
  (
    1402,
    '2016-10-12',
    'Installation nouvelle',
    'Très intéressé par les produits présentés',
    'b28',
    783
  ),
  (
    1403,
    '2017-02-03',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a131',
    784
  ),
  (
    1404,
    '2016-11-02',
    'Installation nouvelle',
    'Trop pressé',
    'b50',
    785
  ),
  (
    1405,
    '2016-12-24',
    'Prise de contact',
    'Peu intéressé',
    'e52',
    786
  ),
  (
    1406,
    '2017-01-24',
    'Demande du médecin',
    'Pas très aimable',
    'b28',
    787
  ),
  (
    1407,
    '2017-03-10',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'a55',
    788
  ),
  (
    1408,
    '2017-04-02',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b25',
    789
  ),
  (
    1409,
    '2016-10-11',
    'recommandation de confrère',
    'Peu intéressé',
    'b19',
    790
  ),
  (
    1410,
    '2016-10-16',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b19',
    791
  ),
  (
    1411,
    '2017-04-05',
    'Installation nouvelle',
    'RAS',
    'f39',
    792
  ),
  (
    1412,
    '2016-10-04',
    'Visite annuelle',
    'Pas intéressé du tout',
    'b19',
    793
  ),
  (
    1413,
    '2016-10-10',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'e49',
    794
  ),
  (
    1414,
    '2017-04-04',
    'Demande du médecin',
    'A revoir assez rapidement',
    'c3',
    795
  ),
  (
    1415,
    '2016-10-14',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'd13',
    796
  ),
  (
    1416,
    '2016-10-21',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'a93',
    797
  ),
  (
    1417,
    '2017-04-08',
    'Visite annuelle',
    'Peu bavard',
    'b28',
    798
  ),
  (
    1418,
    '2017-03-13',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'b28',
    799
  ),
  (
    1419,
    '2017-04-11',
    'Installation nouvelle',
    'Peu bavard',
    'e39',
    800
  ),
  (
    1420,
    '2016-11-14',
    'Installation nouvelle',
    'Très aimable maintenir un contact régulier',
    'e39',
    801
  ),
  (
    1421,
    '2016-10-22',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'b59',
    802
  ),
  (
    1422,
    '2016-10-26',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e5',
    803
  ),
  (
    1423,
    '2017-02-02',
    'Demande du médecin',
    'A revoir assez rapidement',
    'd51',
    804
  ),
  (
    1424,
    '2017-03-02',
    'recommandation de confrère',
    'Sur sa réserve',
    'f21',
    805
  ),
  (
    1425,
    '2016-12-18',
    'recommandation de confrère',
    'RAS',
    'f39',
    806
  ),
  (
    1426,
    '2016-10-16',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'd51',
    807
  ),
  (
    1427,
    '2016-10-14',
    'Visite annuelle',
    'Visite positive',
    'b19',
    808
  ),
  (
    1428,
    '2016-11-13',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'b50',
    809
  ),
  (
    1429,
    '2016-10-20',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'e39',
    810
  ),
  (
    1430,
    '2017-04-05',
    'recommandation de confrère',
    'RAS',
    'e22',
    811
  ),
  (
    1431,
    '2017-02-13',
    'Visite annuelle',
    'Trop pressé',
    'b59',
    812
  ),
  (
    1432,
    '2016-11-09',
    'Installation nouvelle',
    'Pas très aimable',
    'a93',
    813
  ),
  (
    1433,
    '2017-01-13',
    'Visite annuelle',
    'Jeune médecin découvrant les visiteurs',
    'b28',
    814
  ),
  (
    1434,
    '2017-01-29',
    'Demande du médecin',
    'Pas en confiance',
    'a93',
    815
  ),
  (
    1435,
    '2017-03-20',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'a55',
    816
  ),
  (
    1436,
    '2016-12-19',
    'Visite annuelle',
    'Trop pressé',
    'b13',
    817
  ),
  (
    1437,
    '2017-04-12',
    'Installation nouvelle',
    'Pas très aimable',
    'b16',
    818
  ),
  (
    1438,
    '2016-11-29',
    'Demande du médecin',
    'Peu bavard',
    'b59',
    819
  ),
  (
    1439,
    '2017-03-26',
    'Demande du médecin',
    'Pas intéressé du tout',
    'f39',
    820
  ),
  (
    1440,
    '2016-11-29',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b34',
    821
  ),
  (
    1441,
    '2017-01-03',
    'Installation nouvelle',
    'Pas en confiance',
    'b13',
    822
  ),
  (
    1442,
    '2016-10-12',
    'Visite annuelle',
    'Visite positive',
    'e24',
    823
  ),
  (
    1443,
    '2017-03-20',
    'Prise de contact',
    'Peu bavard',
    'c14',
    824
  ),
  (
    1444,
    '2017-01-07',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'c54',
    825
  ),
  (
    1445,
    '2017-01-03',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b50',
    826
  ),
  (
    1446,
    '2016-10-24',
    'Demande du médecin',
    'Visite positive',
    'b13',
    827
  ),
  (
    1447,
    '2016-10-14',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b25',
    828
  ),
  (
    1448,
    '2016-10-08',
    'Installation nouvelle',
    'Visite positive',
    'e52',
    829
  ),
  (
    1449,
    '2017-04-08',
    'Visite annuelle',
    'Pas très aimable',
    'd51',
    830
  ),
  (
    1450,
    '2016-12-11',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'f21',
    831
  ),
  (
    1451,
    '2017-04-01',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'e5',
    832
  ),
  (
    1452,
    '2016-12-15',
    'Prise de contact',
    'Peu bavard',
    'f39',
    833
  ),
  (
    1453,
    '2016-10-05',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'e39',
    834
  ),
  (
    1454,
    '2016-12-23',
    'Visite annuelle',
    'Pas intéressé du tout',
    'a55',
    835
  ),
  (
    1455,
    '2017-03-30',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'a93',
    836
  ),
  (
    1456,
    '2017-01-22',
    'Prise de contact',
    'Pas en confiance',
    'a93',
    837
  ),
  (
    1457,
    '2017-01-27',
    'Visite annuelle',
    'Pas très aimable',
    'b50',
    838
  ),
  (
    1458,
    '2016-11-30',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'f39',
    839
  ),
  (
    1459,
    '2016-12-18',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b25',
    840
  ),
  (
    1460,
    '2016-10-02',
    'recommandation de confrère',
    'Visite positive',
    'c54',
    841
  ),
  (
    1461,
    '2017-04-03',
    'Prise de contact',
    'Pas intéressé du tout',
    'b28',
    842
  ),
  (
    1462,
    '2016-11-15',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'f21',
    843
  ),
  (
    1463,
    '2017-03-08',
    'Prise de contact',
    'Demande à me revoir dans un mois',
    'e39',
    844
  ),
  (
    1464,
    '2016-12-16',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b34',
    845
  ),
  (
    1465,
    '2016-10-21',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b28',
    846
  ),
  (
    1466,
    '2017-03-27',
    'Prise de contact',
    'Trop pressé',
    'b34',
    847
  ),
  (
    1467,
    '2017-01-08',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'e49',
    848
  ),
  (
    1468,
    '2017-01-04',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'f21',
    849
  ),
  (
    1469,
    '2017-02-26',
    'Prise de contact',
    'A revoir assez rapidement',
    'a55',
    850
  ),
  (
    1470,
    '2016-11-30',
    'Demande du médecin',
    'Peu intéressé',
    'c3',
    851
  ),
  (
    1471,
    '2017-01-22',
    'Installation nouvelle',
    'Trop pressé',
    'e39',
    852
  ),
  (
    1472,
    '2017-03-25',
    'Prise de contact',
    'Pas très aimable',
    'b50',
    853
  ),
  (
    1473,
    '2016-11-11',
    'Visite annuelle',
    'A revoir assez rapidement',
    'e39',
    854
  ),
  (
    1474,
    '2017-02-10',
    'Prise de contact',
    'Pas en confiance',
    'b34',
    855
  ),
  (
    1475,
    '2017-03-14',
    'recommandation de confrère',
    'Visite positive',
    'e22',
    856
  ),
  (
    1476,
    '2017-02-08',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'e49',
    857
  ),
  (
    1477,
    '2016-12-18',
    'recommandation de confrère',
    'RAS',
    'e52',
    858
  ),
  (
    1478,
    '2017-02-26',
    'Demande du médecin',
    'RAS',
    'e22',
    859
  ),
  (
    1479,
    '2016-12-05',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'b19',
    860
  ),
  (
    1480,
    '2017-03-28',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'a55',
    861
  ),
  (
    1481,
    '2017-03-26',
    'recommandation de confrère',
    'Trop pressé',
    'b25',
    862
  ),
  (
    1482,
    '2017-03-01',
    'Demande du médecin',
    'Pas intéressé du tout',
    'b19',
    863
  ),
  (
    1483,
    '2017-03-07',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'b50',
    864
  ),
  (
    1484,
    '2017-01-24',
    'Visite annuelle',
    'Peu intéressé',
    'e52',
    865
  ),
  (
    1485,
    '2016-11-07',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'a17',
    866
  ),
  (
    1486,
    '2016-12-12',
    'Installation nouvelle',
    'Trop pressé',
    'e52',
    867
  ),
  (
    1487,
    '2016-10-27',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'f21',
    868
  ),
  (
    1488,
    '2017-02-24',
    'Prise de contact',
    'Très fixé sur les produits utilisés',
    'f21',
    869
  ),
  (
    1489,
    '2016-12-13',
    'Installation nouvelle',
    'Visite positive',
    'd51',
    870
  ),
  (
    1490,
    '2016-10-05',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'a17',
    871
  ),
  (
    1491,
    '2017-01-10',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e52',
    872
  ),
  (
    1492,
    '2016-10-08',
    'Installation nouvelle',
    'Sur sa réserve',
    'b13',
    873
  ),
  (
    1493,
    '2017-03-18',
    'recommandation de confrère',
    'RAS',
    'a17',
    874
  ),
  (
    1494,
    '2016-12-29',
    'Prise de contact',
    'Pas en confiance',
    'a93',
    875
  ),
  (
    1495,
    '2016-11-25',
    'Installation nouvelle',
    'Sur sa réserve',
    'b19',
    876
  ),
  (
    1496,
    '2017-03-22',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'b28',
    877
  ),
  (
    1497,
    '2016-12-11',
    'Demande du médecin',
    'RAS',
    'e49',
    878
  ),
  (
    1498,
    '2016-12-05',
    'Demande du médecin',
    'Peu intéressé',
    'a131',
    879
  ),
  (
    1499,
    '2017-02-25',
    'Demande du médecin',
    'Pas très aimable',
    'c3',
    880
  ),
  (
    1500,
    '2017-02-03',
    'Installation nouvelle',
    'Visite positive',
    'c14',
    881
  ),
  (
    1501,
    '2016-12-13',
    'Demande du médecin',
    'Très intéressé par les produits présentés',
    'e52',
    882
  ),
  (
    1502,
    '2016-12-22',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'f21',
    883
  ),
  (
    1503,
    '2016-10-06',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    884
  ),
  (
    1504,
    '2017-04-18',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'a93',
    885
  ),
  (
    1505,
    '2016-11-26',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'e24',
    886
  ),
  (
    1506,
    '2017-01-20',
    'Demande du médecin',
    'Visite positive',
    'd13',
    887
  ),
  (
    1507,
    '2017-04-07',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a55',
    888
  ),
  (
    1508,
    '2017-03-22',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'b59',
    889
  ),
  (
    1509,
    '2017-03-19',
    'Installation nouvelle',
    'Peu intéressé',
    'c3',
    890
  ),
  (
    1510,
    '2016-11-27',
    'Installation nouvelle',
    'Peu intéressé',
    'f21',
    891
  ),
  (
    1511,
    '2017-03-06',
    'Visite annuelle',
    'Demande à me revoir dans un mois',
    'd13',
    892
  ),
  (
    1512,
    '2017-03-11',
    'Prise de contact',
    'RAS',
    'f21',
    893
  ),
  (
    1513,
    '2016-10-27',
    'Prise de contact',
    'Pas intéressé du tout',
    'e5',
    894
  ),
  (
    1514,
    '2016-11-22',
    'Visite annuelle',
    'Peu bavard',
    'a55',
    895
  ),
  (
    1515,
    '2017-01-02',
    'Prise de contact',
    'Peu bavard',
    'b4',
    896
  ),
  (
    1516,
    '2016-10-16',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'e5',
    897
  ),
  (
    1517,
    '2016-11-03',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'b34',
    898
  ),
  (
    1518,
    '2017-04-01',
    'Installation nouvelle',
    'Visite positive',
    'd51',
    899
  ),
  (
    1519,
    '2017-03-24',
    'Prise de contact',
    'Peu bavard',
    'b50',
    900
  ),
  (
    1520,
    '2017-01-04',
    'Visite annuelle',
    'Visite positive',
    'b34',
    901
  ),
  (
    1521,
    '2016-10-01',
    'Prise de contact',
    'Peu bavard',
    'b50',
    902
  ),
  (
    1522,
    '2017-03-26',
    'Installation nouvelle',
    'A revoir assez rapidement',
    'e22',
    903
  ),
  (
    1523,
    '2017-02-15',
    'recommandation de confrère',
    'Très intéressé par les produits présentés',
    'e49',
    904
  ),
  (
    1524,
    '2017-02-11',
    'Prise de contact',
    'Visite positive',
    'b34',
    905
  ),
  (
    1525,
    '2016-10-10',
    'recommandation de confrère',
    'Très fixé sur les produits utilisés',
    'e52',
    906
  ),
  (
    1526,
    '2016-10-28',
    'Installation nouvelle',
    'RAS',
    'b59',
    907
  ),
  (
    1527,
    '2017-01-24',
    'Installation nouvelle',
    'Peu bavard',
    'd51',
    908
  ),
  (
    1528,
    '2016-11-07',
    'Prise de contact',
    'Pas très aimable',
    'b25',
    909
  ),
  (
    1529,
    '2017-02-03',
    'Installation nouvelle',
    'Jeune médecin découvrant les visiteurs',
    'd51',
    910
  ),
  (
    1530,
    '2016-12-27',
    'Installation nouvelle',
    'Peu bavard',
    'b59',
    911
  ),
  (
    1531,
    '2017-02-17',
    'Installation nouvelle',
    'Trop pressé',
    'a55',
    912
  ),
  (
    1532,
    '2017-01-17',
    'Visite annuelle',
    'Peu bavard',
    'b34',
    913
  ),
  (
    1533,
    '2017-02-21',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'c3',
    914
  ),
  (
    1534,
    '2017-02-22',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b28',
    915
  ),
  (
    1535,
    '2016-12-18',
    'Prise de contact',
    'Visite positive',
    'b19',
    916
  ),
  (
    1536,
    '2017-02-18',
    'Prise de contact',
    'A beaucoup appécié notre rencontre',
    'b13',
    917
  ),
  (
    1537,
    '2016-11-14',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'a17',
    918
  ),
  (
    1538,
    '2016-10-28',
    'Demande du médecin',
    'Peu intéressé',
    'b4',
    919
  ),
  (
    1539,
    '2017-04-08',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'b4',
    920
  ),
  (
    1540,
    '2016-10-02',
    'recommandation de confrère',
    'Peu bavard',
    'c3',
    921
  ),
  (
    1541,
    '2017-02-01',
    'Installation nouvelle',
    'Peu bavard',
    'c54',
    922
  ),
  (
    1542,
    '2016-10-28',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'd51',
    923
  ),
  (
    1543,
    '2016-12-20',
    'Visite annuelle',
    'Pas intéressé du tout',
    'f21',
    924
  ),
  (
    1544,
    '2017-03-05',
    'Installation nouvelle',
    'Demande à me revoir dans un mois',
    'a93',
    925
  ),
  (
    1545,
    '2016-11-15',
    'Prise de contact',
    'Visite positive',
    'e22',
    926
  ),
  (
    1546,
    '2017-03-10',
    'recommandation de confrère',
    'A revoir assez rapidement',
    'c14',
    927
  ),
  (
    1547,
    '2017-02-05',
    'recommandation de confrère',
    'Pas très aimable',
    'e24',
    928
  ),
  (
    1548,
    '2017-02-28',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'b59',
    929
  ),
  (
    1549,
    '2017-01-15',
    'Demande du médecin',
    'Trop pressé',
    'a55',
    930
  ),
  (
    1550,
    '2017-01-27',
    'recommandation de confrère',
    'RAS',
    'b13',
    931
  ),
  (
    1551,
    '2016-11-23',
    'Prise de contact',
    'Trop pressé',
    'a55',
    932
  ),
  (
    1552,
    '2017-04-06',
    'recommandation de confrère',
    'Trop pressé',
    'b16',
    933
  ),
  (
    1553,
    '2016-11-09',
    'Visite annuelle',
    'Sur sa réserve',
    'b59',
    934
  ),
  (
    1554,
    '2016-10-13',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'd51',
    935
  ),
  (
    1555,
    '2016-12-21',
    'Prise de contact',
    'Peu bavard',
    'b13',
    936
  ),
  (
    1556,
    '2017-01-02',
    'recommandation de confrère',
    'Peu intéressé',
    'c54',
    937
  ),
  (
    1557,
    '2017-02-25',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b59',
    938
  ),
  (
    1558,
    '2016-10-15',
    'Installation nouvelle',
    'A beaucoup appécié notre rencontre',
    'b28',
    939
  ),
  (
    1559,
    '2017-01-07',
    'Installation nouvelle',
    'Très fixé sur les produits utilisés',
    'b25',
    940
  ),
  (
    1560,
    '2016-11-26',
    'Visite annuelle',
    'Pas très aimable',
    'd51',
    941
  ),
  (
    1561,
    '2016-12-10',
    'Demande du médecin',
    'A beaucoup appécié notre rencontre',
    'e22',
    942
  ),
  (
    1562,
    '2017-02-09',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    943
  ),
  (
    1563,
    '2017-01-16',
    'recommandation de confrère',
    'Trop pressé',
    'a93',
    944
  ),
  (
    1564,
    '2017-04-05',
    'recommandation de confrère',
    'Pas en confiance',
    'b50',
    945
  ),
  (
    1565,
    '2017-01-26',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'a93',
    946
  ),
  (
    1566,
    '2017-01-18',
    'Visite annuelle',
    'Sur sa réserve',
    'b59',
    947
  ),
  (
    1567,
    '2017-01-06',
    'recommandation de confrère',
    'RAS',
    'b34',
    948
  ),
  (
    1568,
    '2017-03-03',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'b25',
    949
  ),
  (
    1569,
    '2017-03-25',
    'Demande du médecin',
    'Demande à me revoir dans un mois',
    'a55',
    950
  ),
  (
    1570,
    '2016-11-25',
    'Demande du médecin',
    'Peu intéressé',
    'e52',
    951
  ),
  (
    1571,
    '2016-12-19',
    'Visite annuelle',
    'Peu bavard',
    'a55',
    952
  ),
  (
    1572,
    '2016-10-07',
    'Prise de contact',
    'Jeune médecin découvrant les visiteurs',
    'd13',
    953
  ),
  (
    1573,
    '2016-10-02',
    'Visite annuelle',
    'Pas en confiance',
    'b16',
    954
  ),
  (
    1574,
    '2017-03-09',
    'Prise de contact',
    'Très intéressé par les produits présentés',
    'b16',
    955
  ),
  (
    1575,
    '2016-11-14',
    'Visite annuelle',
    'A revoir assez rapidement',
    'e49',
    956
  ),
  (
    1576,
    '2017-03-13',
    'Visite annuelle',
    'A beaucoup appécié notre rencontre',
    'a17',
    957
  ),
  (
    1577,
    '2017-01-23',
    'Demande du médecin',
    'Pas intéressé du tout',
    'd13',
    958
  ),
  (
    1578,
    '2016-10-11',
    'Prise de contact',
    'Sur sa réserve',
    'b34',
    959
  ),
  (
    1579,
    '2016-10-30',
    'Prise de contact',
    'Pas en confiance',
    'b50',
    960
  ),
  (
    1580,
    '2016-11-10',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a17',
    961
  ),
  (
    1581,
    '2016-12-31',
    'Demande du médecin',
    'Très aimable maintenir un contact régulier',
    'e24',
    962
  ),
  (
    1582,
    '2017-03-06',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'b50',
    963
  ),
  (
    1583,
    '2016-11-09',
    'Prise de contact',
    'Peu intéressé',
    'b19',
    964
  ),
  (
    1584,
    '2016-10-01',
    'Visite annuelle',
    'Très intéressé par les produits présentés',
    'b34',
    965
  ),
  (
    1585,
    '2017-01-25',
    'recommandation de confrère',
    'A beaucoup appécié notre rencontre',
    'd13',
    966
  ),
  (
    1586,
    '2016-10-31',
    'Installation nouvelle',
    'Pas très aimable',
    'b4',
    967
  ),
  (
    1587,
    '2017-03-17',
    'Demande du médecin',
    'RAS',
    'b34',
    968
  ),
  (
    1588,
    '2017-02-18',
    'Installation nouvelle',
    'RAS',
    'b13',
    969
  ),
  (
    1589,
    '2017-01-25',
    'Visite annuelle',
    'Très aimable maintenir un contact régulier',
    'b50',
    970
  ),
  (
    1590,
    '2017-02-16',
    'Installation nouvelle',
    'Pas intéressé du tout',
    'b34',
    971
  ),
  (
    1591,
    '2017-04-03',
    'recommandation de confrère',
    'Jeune médecin découvrant les visiteurs',
    'b50',
    972
  ),
  (
    1592,
    '2017-02-22',
    'recommandation de confrère',
    'Très aimable maintenir un contact régulier',
    'a131',
    973
  ),
  (
    1593,
    '2016-12-04',
    'Demande du médecin',
    'Visite positive',
    'b28',
    974
  ),
  (
    1594,
    '2017-01-10',
    'recommandation de confrère',
    'Peu intéressé',
    'e22',
    975
  ),
  (
    1595,
    '2017-03-08',
    'recommandation de confrère',
    'Peu intéressé',
    'b50',
    976
  ),
  (
    1596,
    '2016-10-26',
    'Visite annuelle',
    'Pas en confiance',
    'c14',
    977
  ),
  (
    1597,
    '2017-01-28',
    'Installation nouvelle',
    'Trop pressé',
    'e5',
    978
  ),
  (
    1598,
    '2017-03-01',
    'Installation nouvelle',
    'Trop pressé',
    'e39',
    979
  ),
  (
    1599,
    '2017-01-29',
    'Visite annuelle',
    'Pas en confiance',
    'b28',
    980
  ),
  (
    1600,
    '2016-12-06',
    'Visite annuelle',
    'Trop pressé',
    'e52',
    981
  ),
  (
    1601,
    '2017-04-16',
    'Visite annuelle',
    'RAS',
    'b28',
    982
  ),
  (
    1602,
    '2017-03-18',
    'Installation nouvelle',
    'Trop pressé',
    'e24',
    983
  ),
  (
    1603,
    '2016-11-17',
    'Installation nouvelle',
    'Trop pressé',
    'e24',
    984
  ),
  (
    1604,
    '2017-03-20',
    'recommandation de confrère',
    'Pas intéressé du tout',
    'e49',
    985
  ),
  (
    1605,
    '2016-10-18',
    'recommandation de confrère',
    'Visite positive',
    'a131',
    986
  ),
  (
    1606,
    '2016-11-27',
    'Prise de contact',
    'Pas intéressé du tout',
    'd51',
    987
  ),
  (
    1607,
    '2017-02-20',
    'Visite annuelle',
    'Pas en confiance',
    'b34',
    988
  ),
  (
    1608,
    '2016-10-25',
    'Prise de contact',
    'Très aimable maintenir un contact régulier',
    'd51',
    989
  ),
  (
    1609,
    '2016-11-21',
    'Visite annuelle',
    'Très fixé sur les produits utilisés',
    'a55',
    990
  ),
  (
    1610,
    '2016-10-11',
    'Prise de contact',
    'Trop pressé',
    'e52',
    991
  );

-- --------------------------------------------------------
--
-- Structure de la table `visiteur`
--
CREATE TABLE
  `visiteur` (
    `id` char(4) NOT NULL,
    `nom` char(30) DEFAULT NULL,
    `prenom` char(30) DEFAULT NULL,
    `login` char(20) DEFAULT NULL,
    `mdp` char(20) DEFAULT NULL,
    `adresse` char(30) DEFAULT NULL,
    `cp` char(5) DEFAULT NULL,
    `ville` char(30) DEFAULT NULL,
    `dateEmbauche` date DEFAULT NULL,
    `timespan` bigint (20) NOT NULL,
    `ticket` varchar(50) DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Contenu de la table `visiteur`
--
INSERT INTO
  `visiteur` (
    `id`,
    `nom`,
    `prenom`,
    `login`,
    `mdp`,
    `adresse`,
    `cp`,
    `ville`,
    `dateEmbauche`,
    `timespan`,
    `ticket`
  )
VALUES
  (
    'a131',
    'Aribi',
    'Alain',
    'aribiA',
    'aaaa',
    '8 rue des Charmes',
    '46000',
    'Cahors',
    '2005-12-21',
    1491751241,
    'MAQTNXcz8pBL8Jw91uRX'
  ),
  (
    'a17',
    'Andre',
    'David',
    'dandre',
    'oppg5',
    '1 rue Petit',
    '46200',
    'Lalbenque',
    '1998-11-23',
    0,
    NULL
  ),
  (
    'a55',
    'Bedos',
    'Christian',
    'cbedos',
    'gmhxd',
    '1 rue Peranud',
    '46250',
    'Montcuq',
    '1995-01-12',
    0,
    NULL
  ),
  (
    'a93',
    'Tusseau',
    'Louis',
    'ltusseau',
    'ktp3s',
    '22 rue des Ternes',
    '46123',
    'Gramat',
    '2000-05-01',
    0,
    NULL
  ),
  (
    'b13',
    'Bentot',
    'Pascal',
    'pbentot',
    'doyw1',
    '11 allée des Cerises',
    '46512',
    'Bessines',
    '1992-07-09',
    0,
    NULL
  ),
  (
    'b16',
    'Bioret',
    'Luc',
    'lbioret',
    'hrjfs',
    '1 Avenue gambetta',
    '46000',
    'Cahors',
    '1998-05-11',
    0,
    NULL
  ),
  (
    'b19',
    'Bunisset',
    'Francis',
    'fbunisset',
    '4vbnd',
    '10 rue des Perles',
    '93100',
    'Montreuil',
    '1987-10-21',
    0,
    NULL
  ),
  (
    'b25',
    'Bunisset',
    'Denise',
    'dbunisset',
    's1y1r',
    '23 rue Manin',
    '75019',
    'paris',
    '2010-12-05',
    0,
    NULL
  ),
  (
    'b28',
    'Cacheux',
    'Bernard',
    'bcacheux',
    'uf7r3',
    '114 rue Blanche',
    '75017',
    'Paris',
    '2009-11-12',
    0,
    NULL
  ),
  (
    'b34',
    'Cadic',
    'Eric',
    'ecadic',
    '6u8dc',
    '123 avenue de la République',
    '75011',
    'Paris',
    '2008-09-23',
    0,
    NULL
  ),
  (
    'b4',
    'Charoze',
    'Catherine',
    'ccharoze',
    'u817o',
    '100 rue Petit',
    '75019',
    'Paris',
    '2005-11-12',
    0,
    NULL
  ),
  (
    'b50',
    'Clepkens',
    'Christophe',
    'cclepkens',
    'bw1us',
    '12 allée des Anges',
    '93230',
    'Romainville',
    '2003-08-11',
    0,
    NULL
  ),
  (
    'b59',
    'Cottin',
    'Vincenne',
    'vcottin',
    '2hoh9',
    '36 rue Des Roches',
    '93100',
    'Monteuil',
    '2001-11-18',
    0,
    NULL
  ),
  (
    'c14',
    'Daburon',
    'François',
    'fdaburon',
    '7oqpv',
    '13 rue de Chanzy',
    '94000',
    'Créteil',
    '2002-02-11',
    0,
    NULL
  ),
  (
    'c3',
    'De',
    'Philippe',
    'pde',
    'gk9kx',
    '13 rue Barthes',
    '94000',
    'Créteil',
    '2010-12-14',
    0,
    NULL
  ),
  (
    'c54',
    'Debelle',
    'Michel',
    'mdebelle',
    'od5rt',
    '181 avenue Barbusse',
    '93210',
    'Rosny',
    '2006-11-23',
    0,
    NULL
  ),
  (
    'd13',
    'Debelle',
    'Jeanne',
    'jdebelle',
    'nvwqq',
    '134 allée des Joncs',
    '44000',
    'Nantes',
    '2000-05-11',
    0,
    NULL
  ),
  (
    'd51',
    'Debroise',
    'Michel',
    'mdebroise',
    'sghkb',
    '2 Bld Jourdain',
    '44000',
    'Nantes',
    '2001-04-17',
    0,
    NULL
  ),
  (
    'e22',
    'Desmarquest',
    'Nathalie',
    'ndesmarquest',
    'f1fob',
    '14 Place d Arc',
    '45000',
    'Orléans',
    '2005-11-12',
    0,
    NULL
  ),
  (
    'e24',
    'Desnost',
    'Pierre',
    'pdesnost',
    '4k2o5',
    '16 avenue des Cèdres',
    '23200',
    'Guéret',
    '2001-02-05',
    0,
    NULL
  ),
  (
    'e39',
    'Dudouit',
    'Frédéric',
    'fdudouit',
    '44im8',
    '18 rue de l église',
    '23120',
    'GrandBourg',
    '2000-08-01',
    0,
    NULL
  ),
  (
    'e49',
    'Duncombe',
    'Claude',
    'cduncombe',
    'qf77j',
    '19 rue de la tour',
    '23100',
    'La souteraine',
    '1987-10-10',
    0,
    NULL
  ),
  (
    'e5',
    'Enault-Pascreau',
    'Céline',
    'cenault',
    'y2qdu',
    '25 place de la gare',
    '23200',
    'Gueret',
    '1995-09-01',
    0,
    NULL
  ),
  (
    'e52',
    'Eynde',
    'Valérie',
    'veynde',
    'i7sn3',
    '3 Grand Place',
    '13015',
    'Marseille',
    '1999-11-01',
    0,
    NULL
  ),
  (
    'f21',
    'Finck',
    'Jacques',
    'jfinck',
    'mpb3t',
    '10 avenue du Prado',
    '13002',
    'Marseille',
    '2001-11-10',
    0,
    NULL
  ),
  (
    'f39',
    'Frémont',
    'Fernande',
    'ffremont',
    'xs5tq',
    '4 route de la mer',
    '13012',
    'Allauh',
    '1998-10-01',
    0,
    NULL
  ),
  (
    'f4',
    'Gest',
    'Alain',
    'agest',
    'dywvt',
    '30 avenue de la mer',
    '13025',
    'Berre',
    '1985-11-01',
    0,
    NULL
  );

--
-- Index pour les tables exportées
--
--
-- Index pour la table `famille`
--
ALTER TABLE `famille` ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin` ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament` ADD PRIMARY KEY (`id`),
ADD KEY `medicament_fk` (`idFamille`);

--
-- Index pour la table `offrir`
--
ALTER TABLE `offrir` ADD PRIMARY KEY (`idRapport`, `idMedicament`),
ADD KEY `offrir_fk2` (`idMedicament`);

--
-- Index pour la table `rapport`
--
ALTER TABLE `rapport` ADD PRIMARY KEY (`id`),
ADD KEY `rapport_fk1` (`idVisiteur`),
ADD KEY `rapport_fk2` (`idMedecin`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--
--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1001;

--
-- AUTO_INCREMENT pour la table `rapport`
--
ALTER TABLE `rapport` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1613;

--
-- Contraintes pour les tables exportées
--
--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament` ADD CONSTRAINT `medicament_fk` FOREIGN KEY (`idFamille`) REFERENCES `famille` (`id`);

--
-- Contraintes pour la table `offrir`
--
ALTER TABLE `offrir` ADD CONSTRAINT `offrir_fk1` FOREIGN KEY (`idRapport`) REFERENCES `rapport` (`id`),
ADD CONSTRAINT `offrir_fk2` FOREIGN KEY (`idMedicament`) REFERENCES `medicament` (`id`);

--
-- Contraintes pour la table `rapport`
--
ALTER TABLE `rapport` ADD CONSTRAINT `rapport_fk1` FOREIGN KEY (`idVisiteur`) REFERENCES `visiteur` (`id`),
ADD CONSTRAINT `rapport_fk2` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;