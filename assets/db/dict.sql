CREATE TABLE IF NOT EXISTS [data] (
[id] INT NULL,
[finnish] VARCHAR NULL,
[english] VARCHAR NULL,
[russian] VARCHAR NULL,
[chapter] INT NULL
);

INSERT INTO data VALUES
(1,'Hei!','Hello!','Привет!',1),
(2,'ja','and','и',1),
(3,'Tervetuloa!','Welcome!','Добро пожаловать!',1),
(4,'Moi!','Hi!','Привет!',1),
(5,'Anteeksi!','Excuse me!','Простите!',1),
(6,'onko','is','есть ли',1),
(7,'täällä','here','здесь',1),
(8,'suonien kurssi','course in Finnish','курс финского языка',1),
(9,'joo','yes','Да',1),
(10,'Kuka sinä olet?','Who are you?','Кто ты?',1),
(11,'minä','I','я',1),
(12,'olla','be','быть',1),
(13,'entä','what about','а',1),
(14,'sinä','you','ты',1),
(15,'Hauska tutustua!','Nice to meet you!','Очень приятно познакомиться!',1),
(16,'Kiitos samoin!','Likewise!','Спасибо\, мне тоже!',1),
(17,'Mitä sinulle kuuluu?','How are you?','Как дела?',1),
(18,'Minulle kuuluu hyvää.','I’m fine.','У меня все хорошо.',1),
(19,'Entä sinulle?','And you?','А ты как?',1),
(20,'Ihan hyvää\, kiitos\,','I’m fine\, thank you.','Хорошо\, спасибо\,',1),
(21,'hän','he\,she','он/она',1),
(22,'Kuinka vanha sinä olet?','How old are you?','Сколько тебе лет?',1),
(23,'opettaja','teacher','учитель\,учительница',1),
(24,'tulla','(to) come','прийти\,приехать',1),
(25,'Huomenta!','Good morning!','Доброе утро!',1),
(26,'Mikä sinun nimi on?','What’s your name?','Как тебя зовут?',1),
(27,'Minun nimi on...','My name is...','Меня зовут...',1),
(28,'Miten se kirjoitetaan?','How do you spell it?','Как это пишется?',1),
(29,'etunimi','first name','имя',1),
(30,'sukunimi','last name','фамилия',1),
(31,'Huomenta!','Morning!','Доброе утро!',1),
(32,'Hyvää huomenta!','Good morning!','Доброе утро!',1),
(33,'Päivää!','Afternoon!','Здравствуйте!',1),
(34,'Hyvää päivää!','Good afternoon !','Здравствуйте!',1),
(35,'Iltaa!','Evening!','Добрый вечер!',1),
(36,'Hyvää iltaa!','Good evening!','Добрый вечер!',1),
(37,'Hyvää yötä!','Good night!','Спокойной ночи!',1),
(38,'Nuku hyvin!','Sleep well!','Приятных снов!',1),
(39,'Hei!','Hello!','Привет!',1),
(40,'Moi!','Hi!','Привет!',1),
(41,'Terve!','Hi!','Здорово! Привет!',1),
(42,'Nähdään!','See you!','До встречи!',1),
(43,'Hei hei!','Bye bye!','Пока!',1),
(44,'Nähdään huomenna!','See you tomorrow!','Увидимся завтра!',1),
(45,'Moi moi!','Bye bye!','Пока!',1),
(46,'Moikka!','Bye!','Пока!',1),
(47,'Heippa!','Bye!','Пока!',1),
(48,'Näkemiin!','Goodbye!','Пока!',1),
(49,'Joo.','Yeah.','Да.',1),
(50,'Ei.','No.','Нет.',1),
(51,'Kyllä.','Yes.','Да.',1),
(52,'Ole hyvä!','There you are!','Пожалуйста!',1),
(53,'Kiitos!','Thank you!','Спасибо!',1),
(54,'Ei kestä!','You’re welcome!','Не за что!',1),
(55,'Anteeksi!','Sorry!','Простите!',1),
(56,'Ei se mitään!','It’s all right!','Ничего страшного!',1),
(57,'Tervetuloa!','Welcome!','Добро пожаловать!',1),
(58,'viikonpäivät','days of the week','дни недели',1),
(59,'Mikä päivä tänään on?','What day is it today?','Какой сегодня день?',1),
(60,'milloin','when','когда',1),
(61,'Hauskaa viikonloppua!','Have a nice weekend!','Приятных выходных!',1),
(62,'maanantai','Monday','понедельник',1),
(63,'tiistai','Tuesday','вторник',1),
(64,'keskiviikko','Wednesday','среда',1),
(65,'torstai','Thursday','четверг',1),
(66,'perjantai','Friday','пятница',1),
(67,'lauantai','Saturday','суббота',1),
(68,'sunnuntai','Sunday','воскресенье',1),
(69,'viikonloppu','weekend','конец недели (суббота и воскресенье)',1),
(70,'toissapäivänä','day before yesterday','позавчера',1),
(71,'eilen','yesterday','вчера',1),
(72,'tänään','today','сегодня',1),
(73,'huomenna','tomorrow','завтра',1),
(74,'ylihuomenna','day after tomorrow','послезавтра',1),
(75,'nolla','zero','нуль',1),
(76,'yksi','one','один',1),
(77,'kaksi','two','два',1),
(78,'kolme','three','три',1),
(79,'neljä','four','четыре',1),
(80,'viisi','five','пять',1),
(81,'kuusi','six','шесть',1),
(82,'seitsemän','seven','семь',1),
(83,'kahdeksan','eight','восемь',1),
(84,'yhdeksän','nine','девять',1),
(85,'kymmenen','ten','десять',1),
(86,'yksitoista','eleven','одиннадцать',1),
(87,'kaksitoista','twelve','двенадцать',1),
(88,'kolmetoista','thirteen','тринадцать',1),
(89,'neljätoista','fourteen','четырнадцать',1),
(90,'viisitoista','fifteen','пятнадцать',1),
(91,'kuusitoista','sixteen','шестнадцать',1),
(92,'seitsemäntoista','seventeen','семнадцать',1),
(93,'kahdeksantoista','eighteen','восемнадцать',1),
(94,'yhdeksäntoista','nineteen','девятнадцать',1),
(95,'kaksikymmentä','twenty','двадцать',1),
(96,'kaksikymmentäyksi','twenty-one','двадцать один',1),
(97,'kaksikymmentäkaksi','twenty-two','двадцать два',1),
(98,'kolmekymmentä','thirty','тридцать',1),
(99,'neljäkymmentä','forty','сорок',1),
(100,'viisikymmentä','fifty','пятьдесят',1),
(101,'kuusikymmentä','sixty','шестьдесят',1),
(102,'seitsemänkymmentä','seventy','семьдесят',1),
(103,'kahdeksankymmentä','eighty','восемьдесят',1),
(104,'yhdeksänkymmentä','ninety','девяносто',1),
(105,'sata','hundred','сто',1),
(106,'satayksi','one hundred and one','сто один',1),
(107,'kaksisataa','two hundred','двести',1),
(108,'kolmesataa','three hundred','триста',1),
(109,'tuhat','thousand','тысяча',1),
(110,'kaksituhatta','two thousand','две тысячи',1),
(111,'viisisataatuhatta','five hundred thousand','пятьсот тысяч',1),
(112,'miljoona','million','миллион',1),
(113,'kaksi miljoonaa','two million','два миллиона',1),
(114,'puisto','park','парк',2),
(115,'loppua','(to) end','кончиться',2),
(116,'kello','o’clock; clock','1. часы 2. в (сколько) часов 3. колокол',2),
(117,'muu','other','другой',2),
(118,'opiskelija','student','студент',2),
(119,'mennä','(to) go','идти\,ехать',2),
(120,'koti','home','дом',2),
(121,'mutta','but','но',2),
(122,'kioski','kiosk','киоск',2),
(123,'ostaa','(to) buy','купить',2),
(124,'jäätelö','ice cream','мороженое',2),
(125,'maksaa','(to) cost; (to) pay','1. стоить 2. платить',2),
(126,'euro','euro','евро',2),
(127,'säästää','(to) save','1. экономить 2. копить',2),
(128,'raha','money','деньги',2),
(129,'sitten','then','потом',2),
(130,'istua','(to) sit','сидеть',2),
(131,'puhua','(to) speak','говорить',2),
(132,'nauraa','(to) laugh','смеяться',2),
(133,'minkämaalainen','Where are you from?','из какой страны',2),
(134,'brasilialainen','Brazilian','1. бразилец\, бразильянка 2. бразильский',2),
(135,'venäläinen','russian','русский',2),
(136,'entä','what about','а',2),
(137,'mistä','where','откуда',2),
(138,'kotoisin','from','родом',2),
(139,'Etelä-Afrikka','South Africa','Южная Африка',2),
(140,'ai jaa','okay','ах вот как',2),
(141,'kieli','language; tongue','язык',2),
(142,'minun','my','мой',2),
(143,'äidinkieli','mother tongue','родной язык',2),
(144,'englanti','english','английский язык',2),
(145,'myös','also','тоже',2),
(146,'vähän','a little','немного',2),
(147,'espanja','Spanish','испанский язык',2),
(148,'-ko/kö','(expresses a question)','ли (в вопросе)',2),
(149,'sinun','your','твой',2),
(150,'portugali','Portuguese','португальский язык',2),
(151,'ai niin','right','ах да',2),
(152,'tietysti','of course','конечно',2),
(153,'ajaa','(to) drive','ехать\,водить',2),
(154,'auto','car','автомобиль',2),
(155,'bussipysäkki','bus stop','автобусная остановка',2),
(156,'missä','where','где',2),
(157,'asua','(to) live','жить (где)',2),
(158,'numero','number','номер',2),
(159,'vaan','but','а',2),
(160,'nyt','now','сейчас\,теперь',2),
(161,'maksaa','(to) cost; (to) pay','1. стоить 2. платить',2),
(162,'pallo','ball','шар\, мяч',2),
(163,'ahaa','oh\,I see','ясно\, понятно',2),
(164,'haluaisin','1 would like','я хотел бы',2),
(165,'suklaa','chocolate','шоколад',2),
(166,'okei','okay','окей',2),
(167,'sinulle','for you','тебе',2),
(168,'-kin','also','тоже',2),
(169,'vanilja','vanilla','ваниль',2),
(170,'mansikka','strawberry','клубника\, земляника',2),
(171,'selvä','right','ясный\, ясно',2),
(172,'tuleeko muuta','anything else','хотите еще что-нибудь?',2),
(173,'tässä','here','вот\, здесь',2),
(174,'euro','euro','евро',2),
(175,'maa','country; land','1. страна 2. земля',2),
(176,'kansalaisuus','nationality','гражданство',2),
(177,'kieli','language; tongue','язык',2),
(178,'Suomi','Finland','Финляндия',2),
(179,'Ranska','France','Франция',2),
(180,'Kreikka','Greece','Греция',2),
(181,'Islanti','Iceland','Исландия',2),
(182,'Egypti','Egypt','Египет',2),
(183,'Venäjä','Russia','Россия',2),
(184,'Pakistan','Pakistan','Пакистан',2),
(185,'suomalainen','Finnish','1. финн\, финка 2. финский',2),
(186,'ranskalainen','French','1. француз\, француженка 2. французский',2),
(187,'kreikkalainen','Greek','1.грек\,гречанка 2.греческий',2),
(188,'islantilainen','Icelandic','1. исландец\,исландка 2. исландский',2),
(189,'egyptiläinen','Egyptian','1.египтянин\,египтянка 2.египетский',2),
(190,'venäläinen','russian','русский',2),
(191,'pakistanilainen','Pakistani','1. пакистанец\,пакистанка 2.пакистанский',2),
(192,'suomi','Finnish','финский язык',2),
(193,'ranska','French','французский язык',2),
(194,'kreikka','Greek','греческий язык',2),
(195,'islanti','Icelandic','исландский язык',2),
(196,'arabia','Arabic','арабский язык',2),
(197,'venäjä','russian','русский язык',2),
(198,'urdu','Urdu','УРДУ',2),
(199,'Mistä sinä olet kotoisin?','Where are you from?','Откуда ты родом?',2),
(200,'Minkämaalainen sinä olet?','Which country are you from?','Ты из какой страны?',2),
(201,'Mitä kieltä sinä puhut?','What language do you speak?','На каком языке ты говоришь?',2),
(202,'olla kotoisin','come from','быть родом (откуда)',2),
(203,'puhua','(to) speak','говорить',2),
(204,'maailma','world','мир',2),
(205,'pohjoisnapa','North Pole','Северный полюс',2),
(206,'Pohjois-Amerikka','North America','Северная Америка',2),
(207,'Etelä-Amerikka','South America','Южная Америка',2),
(208,'Eurooppa','Europe','Европа',2),
(209,'Afrikka','Africa','Африка',2),
(210,'Aasia','Asia','Азия',2),
(211,'Australia','Australia','Австралия',2),
(212,'Etelämanner','Antarctica','Антарктида',2),
(213,'ilmansuunnat','points of the compass','страны света\, стороны горизонта',2),
(214,'pohjoinen','north','север',2),
(215,'etelä','south','юг',2),
(216,'itä','east','восток',2),
(217,'länsi','west','запад',2),
(218,'hinta','price','цена',2),
(219,'raha','money','деньги',2),
(220,'Mitä tämä maksaa?','How much does this cost?','Сколько это стоит?',2),
(221,'euro','euro','евро',2),
(222,'sentti','cent','цент',2),
(223,'seteli','note\, bill','денежный знак\, купюра',2),
(224,'kolikko','coin','монета',2),
(225,'halpa','cheap','дешевый',2),
(226,'kallis','expensive','дорогой',2);