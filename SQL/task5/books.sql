DROP database if exists library;
CREATE DATABASE library CHAR SET utf8;
USE library;
 DROP database if exists books;

CREATE TABLE `books` (
  `id` int(3) NOT NULL,
  `book-name` char(125) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date-of-publication` date NOT NULL DEFAULT '2018-01-01',
  `category` varchar(30) NOT NULL,
  `price` double not null default '0.00', 
  `isbn` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number-of-pages` int(11) NOT NULL,
  `author-name` char(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author-surname` char(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` char(125) NOT NULL,
  `age` int(5) NOT NULL,
  `author-birthday` date NOT NULL DEFAULT '2018-01-01',
  `author-awards` int(120) DEFAULT NULL
);

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `book-name`, `description`, `date-of-publication`, `category`, `isbn`, `number-of-pages`, `author-name`, `author-surname`, `email`, `age`, `author-birthday`, `author-awards`) VALUES
(1, 'The Busy Coder`s Guide to Advanced Android \nDevelopment', 'Опис відсутній', '2011-07-24', 'ANDROID', ' 978-0-9816780-1-6', 555, 'Mark L.', 'Murphy', 'markmarphy@gmail.com', 58, '1961-04-12', NULL),
(2, 'The Definitive Guide to\nSQLite', 'Опис відсутній', '2010-04-18', 'SQLite', ' 978-1-4302-3225-4', 369, 'Grant', 'Allen', 'allengrant@info.com', 47, '1972-12-16', NULL),
(3, 'The Android \nDeveloper’s Cookbook\nBuilding Applications with \nthe Android SDK', 'Many of the designations used by manufacturers and sellers to distinguish their products \nare claimed as trademarks. Where those designations appear in this book, and the publish-\ner was aware of a trademark claim, the designations have been printed with initial capital \nletters or in all capitals.\nThe authors and publisher have taken care in the preparation of this book, but make no \nexpressed or implied warranty of any kind and assume no responsibility for errors or omis-\nsions. No liability is assumed for incidental or consequential damages in connection with or \narising out of the use of the information or programs contained herein.', '2011-09-11', 'ANDROID', '978-0-321-74123-3', 355, 'James', 'Steele', 'jamesteele@info.com', 53, '1965-02-19', NULL),
(4, 'Learn \nJava  for Android \nDevelopment', 'Many of the designations used by manufacturers and sellers to distinguish their products \nare claimed as trademarks. Where those designations appear in this book, and the publish-\ner was aware of a trademark claim, the designations have been printed with initial capital \nletters or in all capitals.\nThe authors and publisher have taken care in the preparation of this book, but make no \nexpressed or implied warranty of any kind and assume no responsibility for errors or omis-\nsions. No liability is assumed for incidental or consequential damages in connection with or \narising out of the use of the information or programs contained herein.', '2010-06-25', 'ANDROID', '978-1-4302-3156-1', 655, 'Paul', 'Connolly', 'rights@apress.com', 59, '1959-08-25', NULL),
(5, 'Android Application Testing \nGuide', 'It doesn`t matter how much time you invest in Android design, or even how careful \nyou are when programming, mistakes are inevitable and bugs will appear. This \nbook will help you minimize the impact of these errors in your Android project and \nincrease your development productivity. It will show you the problems that are \neasily avoided, to help get you quickly to the testing stage.\nAndroid Application Testing Guide is the first and only book providing a practical \nintroduction to the most commonly-available techniques, frameworks, and tools \nto improve the development of your Android applications. Clear, step-by-step \ninstructions show how to write tests for your applications and assure quality control \nusing various methodologies.\nThe author`s experience in applying application testing techniques to real-world \nprojects enables him to share insights on creating professional Android applications.', '2011-06-01', 'ANDROID', '978-1-849513-50-0', 325, 'Diego', 'Torres Milano', 'dtmilano@gmail.com', 49, '1969-09-12', NULL),
(6, 'Программирование в C++Builder 6 и 2006', 'Книга содержит методические и справочные материалы по системам\n визуального объектно-ориентированного программирования C++Builder 6 и 2006, а также по предшествующим версиям C++Builder. Дается методика построения прикладных программ, реализующих текстовые и графические редакторы, мультипликацию и мультимедиа, работу с базами данных, создание отчетов, приложений для Интернета, распределенных приложений, клиентов и серверов. Рассмотрены технологии доступа к данным ADO, InterBase Express, dbExpress, компоненты-серверы COM, технология распределенных приложений СОМ, методика диспетчеризации действий, множество компонентов. Справочная часть книги содержит материалы по языку C++, функциям C++Builder и API Windows (свыше 570 функций), типам и классам C++Builder, их свойствам, методам и событиям.\nКнига рассчитана как на начинающих, владеющих только основами какого-нибудь языка программирования, так и на опытных разработчиков.\n', '2007-05-01', 'C++', '5-9518-0166-4', 1184, 'Александр', 'Архангельский', 'piter@info.ru', 48, '1970-10-07', NULL),
(7, 'ПРОГРАММИРОВАНИЕ НА C++', 'Содержит  систематическое  изложение  основных  приемов  программирования \nна  языке  C++:  описание  типов  данных,  объявление  переменных,  организация \nразветвлений и циклов, описание и использование массивов, указателей, функций. \nРассматриваются  понятия  и  приемы  объектно-ориентированного \nпрограммирования:  определение  классов  и  объектов,  конструкторы  и \nдеструкторы,  инкапсуляция,  полиморфизм,  наследование,  шаблоны,  обработка \nисключений,  пространство  имен,  динамическая  идентификация  типов. \nОписывается  технология  разработки  программ  в  среде  Borland  C++  Builder. \nПриводятся контрольные вопросы и задания.', '2003-05-25', 'C++', '5-7931-0262-0', 263, 'Виктор', 'Аверкин', 'victoraverkin@gmail.com', 52, '1966-03-25', NULL),
(8, 'Самоучитель программирования на языке C++ в  системе Borland  C++Builder  5.0', 'Опис відсутній', '2001-05-30', 'C++', '5-93650-013-6', 273, 'Cергей', 'Бобровский', 'bobrovskiy@gmail.com', 47, '1971-04-18', NULL),
(9, 'Объектно-ориентированный анализ \nи проектирование \nс примерами приложений на С++', 'Эта книга призвана служить практическим руководством по созданию \nобъектно-ориентированных систем. Особое внимание мы уделяем следующим целям: \n•обеспечить отчетливое понимание основных концепций объектной модели; \n•помочь освоить систему обозначений и процесс объектно-ориентированного \nанализа и проектирования; \n•научить читателя практическому применению объектно-ориентированного \nподхода в различных предметных областях. \nИзложенные здесь понятия имеют серьезное теоретическое обоснование, но эта \nкнига прежде всего призвана удовлетворить практические потребности и интересы \nсообщества разработчиков программных продуктов.', '2000-05-30', 'C++', '5-93650-022-0', 359, 'Гради', 'Буч', 'gradibuch@info.com', 58, '1961-03-22', NULL),
(10, 'Технологии программирования С++', 'Рассмотрены объектно-ориентированная и обобщенная\n (с использованием стандартной библиотеки) технологии программирования, \n иллюстрируемые примерами решения классических задач прикладного программирования:\n сортировок массивов и файлов, транспортной задачи, поиска в таблице, обработки списков и работы с очередями.\n В качестве базового используется язык программирования высокого уровня С++. \n Подробно рассматривается стандартная библиотека языка С++. \n В пособие и компакт-диск включены демонстрационные программы, вопросы и упражнения для самопроверки с ответами,\n тесты и задания для курсового проектирования, а также справочная информация по С++', '2005-10-16', 'C++', '5-94157-605-6', 672, 'Владимир', 'Давыдов', 'davidov@gmail.com', 51, '1967-06-19', NULL),
(11, 'РНР:  настольная книга программиста', 'В удобной наглядной форме описаны все элементы РНР — популярного языка создания\nCGI-сценариев.  Рассмотрены  не только особенности синтаксиса языка,  но и редактирова-\nние кода в программах EditPlus и  UltraEdit, а также установка РНР и сервера Apache.  Мате-\nриал  систематизирован  таким  образом,  что  читатель  может  использовать  книгу  и  как  учеб-\nник,  и  как справочник.  Примеры,  взятые из реальной  практики  Web-программирования,\nпозволяют  лучше  усвоить  теоретический  материал.\nКнига рассчитана на самую широкую аудиторию —  не только на новичков,  но и на\nопытных  программистов.', '2003-11-21', 'PHP', '985-475-014-0', 480, 'Александр', 'Мазуркевич', 'mazurkevich@info.com', 41, '1977-08-30', NULL),
(12, 'Создание  Web-caйmoB\nна  бесплатном  движке\nPHP-NUKE', 'Как  быстро  и легко  создать  свой Web-сайт? Какие при этом  использовать  техно-\nлогии  и  какими  правилами  руководствоваться  при  оформлении  сайта?  Прочитав  эту\nкнигу, вы  сможете  ответить  не только  на эти вопросы, но  и на многие другие,  которые\nмогут возникнуть у вас в процессе разработки собственной Интернет-странички.\nОтличительная  особенность  этой  книги -  доступный  и очень  дружественный  чи-\nтателю  стиль  изложения, а также  полнота  охвата  тем  и ориентированность  на  достиже-\nние  практического  результата.  В  книге  содержатся  все  необходимые  сведения  для  соз-\nдания  готовых  проектов  с  помощью  программы  PHP-NUKE, а также  множество  приме-\nров сайтов различной тематической направленности.', '2005-10-31', 'PHP', '5-89392-119-4', 304, 'Дон', 'Джонс', 'donjons@gmail.com', 52, '1966-10-22', NULL),
(13, 'Профессиональное РНР программирование, 2-е издание', 'О чем эта книга и для кого она? О языке РНР, его истории, задачах, достоинст-\nвах и недостатках. О том, как, для чего и в каких ОС применяется этот язык.\nЕсли говорить подробнее, то об установке РНР на платформах UNIX, Windows\nи Mac OS X, о сеансах и cookies, клиентах FTP, о функциях для работы в сети и\nслужбе каталогов. Кроме того, рассматриваются поддержка LDAP в РНР, раз-\nработка многозвенных приложений в РНР, интеграция РНР с XML, средства,\nпредоставляемые РНР для работы с базами данных (на примере MySQL и Post-\ngreSQL).  Обсуждаются  безопасность,  оптимизация  и  интернационализация\nприложений,  библиотеки  расширений  РНР,  приводятся  примеры  системы\nпредоставления  прав  пользователям  и  многозвенного  приложения  корзины\nпокупок для WML. Книга адресована всем РНР-программистам.', '2003-02-02', 'PHP', ' 5-93286-049-9', 1048, 'Люк', 'Аргерих', 'argerih@gmail.com', 52, '1966-10-22', NULL),
(14, 'РНР глазами  хакера', 'Рассмотрены  вопросы  безопасности  и оптимизации  сценариев  на языке РНР.\nБольшое  внимание  уделено  описанию типичных  ошибок  программистов,  благодаря\nкоторым  хакеры  проникают на сервер, а также  представлены  методы  и приведены\nпрактические  рекомендации  противостояния  внешним  атакам.  Показаны реапь-\nные  примеры  взлома  Web-серверов.  На компакт-диске  приведены  исходные тек-\nсты  примеров, рассмотренных  в книге, а также  полезные  программы и утилиты', '2005-03-19', 'PHP', '5-94157-673-0', 304, 'Михаил', 'Фленов', 'mihflenov@mail.ru', 50, '1968-02-29', NULL),
(15, 'AJAX и РНР: разработка динамических веб-приложений', 'Книга «AJAX и РНР: разработка динамических веб-приложений» - самый удобный и полезный ресурс, который поможет вам войти в захватывающий мир AJAX. Вы научитесь писать более эффективные веб-приложения на РНР за счет использования всего спектра возможностей технологий AJAX. Применение AJAX в связке с РНР и MySQL описывается на многочисленных примерах, которые читатель сможет использовать в собственных проектах. Рассмотрены следующие темы: верификация заполнения форм на стороне сервера; чат-приложение, основанное на технологии AJAX; реализация подсказок и функции автодополнения; построение диаграмм в реальном времени средствами SVG; настраиваемые и редактируемые таблицы на основе баз данных; реализация RSS-агрегатора; построение сортируемых списков с поддержкой механизма drag-and-drop. Издание предназначено тем, кто владеет базовыми знаниями РНР, XML, JavaScript и MySQL и хочет узнать все тонкости функционирования AJAX и взаимодействия составляющих этой технологии.', '2006-08-20', 'PHP', '5-93286-077-4', 336, 'Кристиан', 'Дари', 'kristydari@mail.ru', 40, '1978-07-21', NULL),
(16, 'Adobe Illustrator CC. Официальный учебный курс', 'Официальный учебный курс по программе Adobe Illustrator CC, входящий в знаменитую серию \"Classroom in a Book\". Книга предназначена как начинающим, так и опытным пользователям, желающим получить от Adobe Illustrator CC максимум возможного. \nСерии простых, прекрасно подобранных пошаговых инструкций позволят вам на практике освоить все инструменты Adobe Illustrator CC. На диске представлены файлы для уроков. С их помощью вы быстро и легко станете настоящим мастером работы с Adobe Illustrator CC. ', '2014-12-11', 'Web-Design', '978-5-699-69310-8', 592, 'Брайан', 'Вуд', 'brayanvud@gmail.com', 46, '1972-09-16', NULL),
(17, '100% Photoshop. Уроки всемирно известного мастера', 'Всемирно знаменитый мастер цифровой живописи и фотомонтажа Стив Кэплин демонстрирует читателям, как можно получить полноценные живописные полотна, сделанные средствами одной компьютерной программы. Для этого вам не понадобится никаких исходных материалов, фотографий, или файлов, записанных в других пакетах.', '2012-03-19', 'Web-Design', '978-5-4252-0695-4', 256, 'Стив', 'Кеплин', 'stivekeplin@gmail.com', 46, '1972-09-16', NULL),
(18, 'Adobe Photoshop CC. Книга для цифровых фотографов', 'Вы готовы к новой, удивительной книге по Photoshop, которая ломает все правила?\n Скотт Келби, автор и издатель нескольких бестселлеров по Photoshop, вновь поднимает планку книг\n этой тематики на новый уровень, он раскрывает огромное количество секретов, самых важных и самых полезных нововведений в\n Adobe Photoshop СС для фотографов в своей новой работе «Adobe Photoshop CC. Книга для цифровых фотографов». \nВ обновленном издании книги, которая завоевала множество престижных наград и получила признание у профессионалов всего мира,\n Скотт Келби отбрасывает все лишнее и сосредоточивается на практических приемах, рассказывая только о том, что и как нужно\n делать. Он не углубляется в теорию и не дает расплывчатых описаний, после которых читателю самостоятельно приходится\n догадываться о том, какие настройки и в каких случаях следует выбирать. Вместо этого автор детально описывает самые\n современные методы обработки цифровых изображений, которыми пользуются профессиональные фотографы. \n Он приводит точные значения параметров, объясняя, когда и почему их нужно использовать. \n Не зря предыдущие издания книги широко применялись в качестве обучающих пособий на курсах по цифровой фотографии\n по всему миру. ', '2015-11-25', 'Web-Design', '978-0-321-70356-7', 392, 'Скотт', 'Келби', 'skottkelbi@gmail.com', 36, '1982-03-28', NULL),
(19, 'Adobe Photoshop CS5 для фотографов. Вершины мастерства', 'Если вы уже владеете Photoshop, но хотели бы усовершенствовать свои навыки, эта книга — для вас. Авторы, не вдаваясь в объяснение основ, на практических примерах демонстрируют читателям широкие возможности Photoshop. \nЭта книга написана Мартином Ивнингом и Джефом Шеве, признанными во всем мире экспертами, которые делятся уникальными приемами профессиональной обработки изображений в Photoshop и на примерах собственных фотографий раскрывают секреты ретуширования фотографий, создания оригинальных коллажей и рационального планирования фотосъемки. \nКнига содержит сотни полезных советов, которые помогут вам: планировать процесс создания изображений; воспроизводить в Photoshop фотолабораторные эффекты; профессионально ретушировать фотографии и создавать коллажи; \nоптимизировать изображения; вести цифровой фотоархив. \nЭта книга — идеальное приложение к основному руководству, \nAdobe Photoshop CS5 для фотографов, которое должно быть в библиотеке каждого профессионального пользователя Photoshop.', '2011-02-28', 'Web-Design', '976-0-316-70362-7', 506, 'Ивнинг', 'Майс', 'maysivning@gmail.com', 41, '1977-05-11', NULL),
(20, 'Adobe Photoshop CC. Самое необходимое', 'Рассмотрены инструменты программы Adobe Photoshop CC и основные приемы работы с ними:\n выделение и редактирование фрагментов изображения; ретушь и коррекция; создание различных эффектов,\n включая текстовые; работа с контурами и векторными фигурами; операции со слоями, альфа-каналами,\n масками и смарт-объектами и т.д. Показано создание монтажей и коллажей, панорамных и HDR-изображений,\n \"пластическая хирургия\" лица и тела. Рассмотрены приемы, ускоряющие работу, и возможные пути выхода\n из затруднительных ситуаций, возникающих у новичков. ', '2014-10-26', 'Web-Design', '978-5-9775-3332-4', 512, 'Софья', 'Скрылина', 'sofia@info.com', 48, '1970-08-19', NULL),
(21, 'Внутреннее устройство Microsoft Windows. Основные подсистемы ОС. 6-е издание. Часть 2', 'Шестое издание этой легендарной книги посвящено внутреннему устройству и алгоритмам работы основных\n компонентов операционной системы Microsoft Windows 7, а также Windows Server 2008 R2. \nВторая часть книги охватывает основные подсистемы Windows: ввод-вывод, хранение данных, \nуправление памятью, диспетчер кэша и файловые системы. Рассмотрены процессы запуска и завершения работы\n и дано описание анализа аварийного дампа. Книга предназначена для системных администраторов, разработчиков\n сложных приложений и всех, кто хочет понять, как устроена операционная система Windows.', '2014-07-01', 'Windows', '978-5-496-00791-7', 672, 'Дэвид', 'Соломон', 'devidsol@info.com', 38, '1980-06-22', NULL),
(22, 'Архитектура компьютера. 6-е издание', 'Книга Эндрю Таненбаума, всемирно известного специалиста в области информационных технологий, \nписателя и преподавателя, выходящая уже в шестом издании, посвящена структурной организации компьютера.\n В ее основе лежит идея иерархической структуры, в которой каждый уровень выполняет вполне определенную функцию.\n В рамках этого нетрадиционного подхода подробно описываются цифровой логический уровень, уровень архитектуры команд,\n уровень операционной системы и уровень языка ассемблера. В шестое издание внесены многочисленные изменения, которые приводят\n книгу в соответствие со стремительным развитием компьютерной отрасли. В частности, была обновлена информация о машинах,\n представленных в качестве примеров: Intel Core i7, Texas Instrument OMAP4430 и Atmel ATmega168.', '2013-12-13', 'Windows', '978-5-496-00337-7', 816, 'Эндрю', 'Таненбаума', 'endriutanenbaum@gmail.com', 40, '1978-01-03', NULL),
(23, 'Windows 8. Полное руководство', 'Эта книга представляет собой превосходное современное руководство по использованию Windows 8 и ее настройке.\n Отличается большой разносторонностью изложения, практическими решениями и проверенными рекомендациями.\n Помимо стандартных, но необходимых тем (работа с файлами и папками, оформление Windows 8, Интернет и проч.)\n в книге вы найдете также: рассмотрение реестра Windows 8 и работы с ним, описание управления загрузчиком системы и контроля\n производительности, настройки сетевого принтера, работу с Metro-приложениями и многое другое. К изюминкам книги также можно\n отнести такие разделы, как создание резервных копий файлов, рассмотрение приложений Windows Live, работа с новым\n Metro-интерфейсом и его приложениями, установка Windows 8 паралелльно с другой операционной системой на одном компьютере,\n справочник по службам Windows 8 с рекомендациями, что надо отключать, а что нет (приведены готовые конфигурации),\n использование консоли и оснасток Windows 8. Отдельные главы посвящены решению проблем с Windows 8: восстановление Windows 8\n в случае краха, встроенные механизмы антивирусной защиты и т.п. По всему ходу изложения приводятся всевозможные трюки\n и недокументированные возможности (типа как включить \"режим бога\" в Windows 8 и проч.). Книга написана простым и доступным\n языком признанными авторами-профессионалами (например, их книги по Windows ХР и Window 7 уже выдержали более 11 изданий\n и пользуются заслуженным спросом).', '2013-09-19', 'Windows', '978-5-94387-935-7', 816, 'Майкл', 'Юдин', 'udin@gmail.com', 51, '1988-01-26', NULL),
(24, 'Microsoft Windows Server 2012. Полное руководство', 'Microsoft Windows Server 2012. Полное руководство - Книга представляет собой наиболее полное руководство по планированию,\n проектированию, прототипированию,  реализации, переносу, администрированию и сопровождению Windows Server 2012. \n В значительной мере переработанная,  она содержит непревзойденное независимое и объективное изложение основных новшеств \n Windows Server 2012, включая  улучшенные компоненты виртуализации, усовершенствованные средства защиты, новые источники\n управления и интеграции с Windows 8.  Книга основана на богатейшем опыте авторов по внедрению Windows Server 2012 в средах\n разнообразных масштабов с самых первых  альфа-версий, т.е. более двух лет до официального выпуска. Рэнд Моримото \n (Microsoft MVP) и его коллеги всесторонне рассмотрели  каждый аспект развертывания и использования Windows Server 2012 -\n Active Directory, прикладные сетевые и локальные службы,  безопасность, переход с Windows Server 2003/2008, администрирование,\n отказоустойчивость, оптимизация, устранение неполадок  и многое другое. Книга \"Microsoft Windows Server 2012. \n Полное руководство\" полезна специалистам по Windows всех уровней  подготовки, но особенно важна для профессионалов\n среднего и высокого уровней, которым нужны обоснованные и полные решения. Каждая глава содержит советы, приемы, \n практические рекомендации и выводы, сделанные на основе реальных развертываний - т.е.  реальную информацию по \n применению Windows Server 2012 для решения реальных производственных задач. ', '2013-11-22', 'Windows', ' 978-5-8459-1848-2', 1456, 'Рэнд', 'Моримото', 'morimoto@gmail.com', 35, '1983-04-26', NULL),
(25, 'Самоучитель Windows 7', 'Если вы только что купили новый компьютер и пока не знакомы с понятием операционной системы, знайте: \"операционка\" - \nэто то, без чего компьютер становится бесполезной грудой проводов, железок и микросхем. Эта книга поможет вам быстро\n и легко изучить Windows 7 - новую версию самой популярной в мире операционной системы. Вы узнаете, \n что такое интерфейс Windows Aero, освоите основные программы и принципы работы в Интернете, то есть сможете самостоятельно\n постичь все тайны персонального компьютера.', '2010-05-11', 'Windows', '978-5-49807-500-6', 272, 'Сергей', 'Вавилов', 'sergeivavilov@gmail.com', 48, '1970-11-11', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;