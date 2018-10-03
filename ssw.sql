-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2018 at 11:34 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.2.9-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssw`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_01_130903_create_posts_table', 1),
(4, '2018_10_01_134842_create_tags_table', 1),
(5, '2018_10_01_134946_create_post_tag_table', 1),
(6, '2018_10_02_111012_add_admin_column_to_users_table', 1),
(7, '2018_10_02_122215_drop_column_in_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Indonesia tsunami: Palu hit by \'worst case scenario\'', 'indonesia-tsunami-palu-hit-by-worst-case-scenario', '<p class=\"story-body__introduction\">Indonesia experiences earthquakes every day, but the scale of the quake and tsunami which hit Palu on Friday took local people and scientists by surprise.</p>\r\n<p>More than 1,000 people have died, but the final figure could be much higher, say officials.</p>\r\n<p>As scientists explained to the BBC, a combination of geography, timing and inadequate warnings meant that what happened in Palu was a worst case scenario.</p>\r\n<p>Earthquakes are caused by the Earth\'s tectonic plates sliding against or under each other. This is happening constantly, but sometimes the movement is big enough and close enough to populated areas to have devastating consequences.</p>\r\n<p>Small tremors had been happening throughout Friday in Palu, but in the early evening the Palu-Koru fault suddenly slipped, a short distance off shore and only 10km (6 miles) below the surface, generating a 7.5 magnitude quake.</p>\r\n<p>Hamza Latief, from the Bandung Institute of Technology, has been studying the fault line since 1995 and says the impact of the quake was magnified by the thick layers of sediment on which the city sits.</p>', '2018-10-03 05:22:15', '2018-10-03 05:22:15'),
(2, 'State TV reporter praised in China after ‘slapping Tory\'', 'state-tv-reporter-praised-in-china-after-slapping-tory', '<p class=\"story-body__introduction\">A Chinese reporter who was arrested for allegedly slapping a delegate at the UK\'s Conservative Party conference has been widely praised in mainland China.</p>\r\n<p>State TV reporter Kong Linlin, known as a staunch nationalist, had earlier disrupted an event at the conference in Birmingham which was discussing political freedoms in Hong Kong.</p>\r\n<p>In a confrontation afterwards, which was caught on camera, she was seen shouting at party activist Enoch Lieu.</p>\r\n<p>Ms Kong was held by West Midlands Police overnight on Sunday and they confirmed her release on Monday, as investigations continue. The BBC has contacted Ms Kong for comment on the allegations.</p>\r\n<p>But in China, tens of thousands of users have praised her for defending Chinese sovereignty over Hong Kong. Many of these comments appear to have been left by government-paid propagandists.</p>\r\n<h2 class=\"story-body__crosshead\">What happened?</h2>\r\n<p>On 1 October, a spokesperson for West Midlands police said officers were called to the party conference on Sunday afternoon \"after reports a disturbance had broken out during a talk on Hong Kong\". It said that \"a 48-year-old woman from King\'s Cross, London, was arrested on suspicion of common assault\".</p>\r\n<p>Reports say that Ms Kong, a reporter for China\'s CCTV network, began heckling the activist Benedict Rogers during his speech.</p>\r\n<p>Mr Rogers heads Hong Kong Watch, a UK-based human rights group that is critical of Beijing\'s actions in the territory, which enjoys much more political freedom than the rest of China.</p>\r\n<p>Hong Kong, a former British colony, was returned to China in 1997 following an agreement that the territory would enjoy \"a high degree of autonomy, except in foreign and defence affairs\", for 50 years.</p>\r\n<ul class=\"story-body__unordered-list\">\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.co.uk/news/uk-politics-41586529\">UK \'concerned\' as Hong Kong denies Benedict Rogers entry</a></li>\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.com/news/world-asia-china-45426882\">Vanished China star gets 0% \'goodness\' rating</a></li>\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.co.uk/news/world-asia-china-45635646\">Why China and Sweden have fallen out so badly</a></li>\r\n</ul>\r\n<p><a class=\"story-body__link-external\" href=\"https://www.hongkongwatch.org/all-posts/2018/10/1/volunteer-assaulted-a-conservative-party-conference-fringe-event-on-human-rights-in-hong-kong\">Hong Kong Watch says that Ms Kong started shouting and called Mr Rogers a \"liar\" and \"anti-China\"</a> when he told the room that he was \"pro-China\" despite being a government critic. She is also said to have called pro-democracy activists from Hong Kong who spoke at the event \"traitors\".</p>\r\n<p>Enoch Lieu, a student party volunteer, alleged on his Twitter page that he was \"slapped in the face\" by Ms Kong when he asked her to leave.</p>', '2018-10-03 05:23:26', '2018-10-03 05:23:26'),
(3, 'Donna Strickland: The \'laser jock\' Nobel prize winner', 'donna-strickland-the-laser-jock-nobel-prize-winner', '<p class=\"story-body__introduction\">Canadian scientist Donna Strickland calls herself a \"laser jock\".</p>\r\n<p>The physics professor used the description in an interview with a Canadian newspaper, where she discussed efforts to get young people interested in the realm of physics.</p>\r\n<p>Dr Strickland has spent much of her life studying and teaching physics, and describes her research as \"fun\".</p>\r\n<p>Now she shares the distinction of being one of three women to ever win the Nobel Prize for physics.</p>\r\n<ul class=\"story-body__unordered-list\">\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.com/news/science-environment-45655151\">First woman Physics Nobel winner in 55 years</a></li>\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.com/news/science-environment-41861232\">Seven trailblazing women in science</a></li>\r\n<li class=\"story-body__list-item\"><a class=\"story-body__link\" href=\"https://www.bbc.com/news/uk-45717060\">The women standing up for science</a></li>\r\n</ul>\r\n<p>Dr Strickland, along with Arthur Ashkin, from the US and G&eacute;rard Mourou, from France, were awarded the prize on Tuesday \"for groundbreaking inventions in the field of laser physics\".</p>\r\n<p>The scientist was born in 1959 in Guelph, Ontario.</p>\r\n<p>She went on to receive her first degree in the field of physics in 1981, graduating from McMaster University.</p>\r\n<p>She studied optics at the University of Rochester, in New York state, working towards her PhD under Dr Mourou.</p>', '2018-10-03 05:24:25', '2018-10-03 05:24:25'),
(4, 'Architectural Photography Awards 2018 shortlist revealed', 'architectural-photography-awards-2018-shortlist-revealed', '<p><strong>The shortlist for the Architectural Photography Awards 2018 has been revealed.</strong></p>\r\n<p>Entries came from 47 countries, with the overall winner to be announced on 30 November.</p>\r\n<p>James Timberlake, one of the judges, said: \"I\'ve had so much fun and so enjoyed looking at these images and soaking them in - some incredible work.\"</p>\r\n<p>&nbsp;</p>', '2018-10-03 05:25:55', '2018-10-03 05:25:55'),
(5, 'Тон Вейс: индекс доминирования биткоина со временем превысит 90%', 'ton-veys-indeks-dominirovaniya-bitkoina-so-vremenem-prevysit-90', '<p>Многие новички и старожилы рынка неустанно твердят, что технический анализ неприменим к цифровым валютам. Свои доводы они зачастую аргументируют тем, что вся власть сосредоточена в руках китов, которые манипулируют рынком и обогащаются за счет наивных хомяков. Также они уверены в том, что выход громких новостей рушит &laquo;занимательную геометрию&raquo; на графиках аналитиков.<span id=\"more-58608\"></span></p>\r\n<p>Среди таких непримиримых скептиков не только биткоин-максималисты и сторонники долгосрочного портфельного инвестирования, но и так называемые <a href=\"https://www.urbandictionary.com/define.php?term=nocoiner\" target=\"_blank\" rel=\"noopener\">нокоинеры</a> &mdash; упустившие возможность купить BTC по низкой цене, либо слившие все, испугавшись стремительного обвала.</p>\r\n<p>Во время конференции Baltic Honeybadger 2018 в Риге известный трейдер и аналитик Тон Вейс поделился с ForkLog своим мнением о теханализе, дав ценные советы начинающим криптоинвесторам. Также он рассказал о перспективах стейблкоинов, влиянии Lightning Network на цену биткоина и о том, когда закончится медвежий рынок.</p>\r\n<p><strong>ForkLog: Новички мира криптовалют часто говорят, что теханализ на рынке криптовалют не работает. Так ли это? Если да, то он не работает вообще или только на криптовалютах?</strong></p>\r\n<p><strong>Тон Вейс:</strong> Я думаю, технический анализ работает на любых валютах. Есть понятие ликвидности, которое предполагает, что на рынке торгует много людей. Этих людей объединяет психологический фактор. Это значит что по крайней мере в 50% случаев они могут делать подобные вещи. Технический анализ многое может рассказать о ситуации и настроениях на рынке, он помогает трейдить.</p>', '2018-10-03 05:26:47', '2018-10-03 05:26:47'),
(6, 'Binance инвестирует $2,5 млн в платежный стартап TravelbyBit', 'binance-investiruet-25-mln-v-platezhnyy-startap-travelbybit', '<p>Крупнейшая по объему торгов криптовалютная биржа Binance инвестирует $2,5 млн в платежный стартап TravelbyBit из Австралии. Об этом ForkLog сообщили представители биржи.<span id=\"more-58652\"></span></p>\r\n<p>Совместными усилиями компании намерены продвигать блокчейн-технологии в глобальном масштабе. На привлеченные средства TravelbyBit внедрит системы криптовалютных платежей в аэропортах по всему миру и наладит операционные процессы.</p>\r\n<blockquote>\r\n<p><strong>&laquo;Реальные примеры использования &mdash; это ключевой фактор на пути к внедрению криптовалют. И сложно придумать пример для использования криптовалют лучше, чем путешествия, поскольку сразу после приземления в зарубежной стране у вас может не оказаться местной валюты&raquo;,</strong> &mdash; заявил CEO Binance Чанпэн Чжао.</p>\r\n</blockquote>\r\n<p>Платформа TravelbyBit принимает платежи в биткоине, Ethereum и Litecoin. Скоро посетители аэропортов, сотрудничающих со стартапом, смогут использовать Binance Coin (BNB).</p>\r\n<p>Отметим, власти Квинсленда выделили TravelbyBit грант на 100 000 австралийских долларов для развития бизнеса. Ожидается, что платежная компания предоставит рабочие места жителям региона.</p>\r\n<p>В январе администрация аэропорта Брисбена <a href=\"https://forklog.com/aeroport-brisbena-pervym-v-mire-anonsiroval-podderzhku-kriptovalyut/\" target=\"_blank\" rel=\"noopener\">объявила</a> о партнерстве с платформой TravelbyBit. В июне аптека в австралийском городе Люгарно также <a href=\"https://forklog.com/avstralijskaya-apteka-nachala-prinimat-k-oplate-kriptovalyuty/\" target=\"_blank\" rel=\"noopener\">присоединилась</a> к стартапу.</p>\r\n<p>Ранее ForkLog сообщал, что блокчейн-инкубатор Binance Labs <a href=\"https://forklog.com/binance-labs-investiroval-neskolko-millionov-dollarov-v-blokchejn-platformu-contentos/\" target=\"_blank\" rel=\"noopener\">инвестировал</a> несколько миллионов долларов в децентрализованный проект по развитию цифрового контента Contentos.</p>', '2018-10-03 05:28:02', '2018-10-03 05:28:02'),
(7, 'Прокуратура не смогла подтвердить или опровергнуть слухи о возбуждении дела на Илмиянова', 'prokuratura-ne-smogla-podtverdit-ili-oprovergnut-slukhi-o-vozbuzhdenii-dela-na-ilmiyanova', '<p>Генпрокуратура Кыргызстана не смогла подтвердить или опровергнуть информацию о возбуждении дела на бывшего водителя, экс-советника президента КР, руководителя аппарата президента КР Алмазбека Атамбаева - Икрама Илмиянова.</p>\r\n<p>Однако редакции <strong>Kaktus.media</strong> стало известно, что в самое ближайшее время в прокуратуре решат, возбуждать ли уголовное дело в отношении Илмиянова или нет.</p>\r\n<p>По некоторым данным, с заявлением в силовые структуры обратился некий бизнесмен, который указал, что Илмиянов якобы отобрал у него $150 тыс. Это произошло, когда Илмиянов был руководителем аппарата президента КР.</p>\r\n<p>Отметим, что Икрам Илмиянов многие годы был водителем Алмазбека Атамбаева. Во время президентства Атамбаева Илмиянова резко сделал карьеру на госслужбе.</p>', '2018-10-03 05:30:02', '2018-10-03 05:30:02'),
(8, 'Не работает Instagram в Кыргызстане и в других странах', 'ne-rabotaet-instagram-v-kyrgyzstane-i-v-drugikh-stranakh', '<p>В социальной сети Instagram произошел сбой, что подтвердил и сервис <a class=\"link\" href=\"https://downdetector.com/status/instagram\" target=\"_blank\" rel=\"noopener\" data-stat=\"link\">Downdetector.</a></p>\r\n<p>Согласно данным, пользователи начали жаловаться на работу приложения около 13:00 по бишкекскому времени.</p>\r\n<p>Приложение выдает ошибку \"5хх Server Error\" при попытке войти с компьютера, а с телефона просто не обновляет публикации и не выполняет никаких действий.</p>\r\n<p>Пока не сообщается, с чем связаны перебои в Instagram и когда наладится его работа.</p>', '2018-10-03 05:31:26', '2018-10-03 05:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 1, 6, NULL, NULL),
(7, 1, 7, NULL, NULL),
(8, 2, 4, NULL, NULL),
(9, 2, 5, NULL, NULL),
(10, 2, 8, NULL, NULL),
(11, 2, 9, NULL, NULL),
(12, 3, 4, NULL, NULL),
(13, 3, 5, NULL, NULL),
(14, 3, 10, NULL, NULL),
(15, 3, 11, NULL, NULL),
(16, 3, 12, NULL, NULL),
(17, 4, 4, NULL, NULL),
(18, 4, 5, NULL, NULL),
(19, 4, 13, NULL, NULL),
(20, 4, 14, NULL, NULL),
(21, 4, 15, NULL, NULL),
(22, 5, 5, NULL, NULL),
(23, 5, 16, NULL, NULL),
(24, 5, 17, NULL, NULL),
(25, 5, 18, NULL, NULL),
(26, 6, 5, NULL, NULL),
(27, 6, 16, NULL, NULL),
(28, 6, 17, NULL, NULL),
(29, 6, 19, NULL, NULL),
(30, 6, 20, NULL, NULL),
(31, 7, 21, NULL, NULL),
(32, 7, 22, NULL, NULL),
(33, 7, 23, NULL, NULL),
(34, 8, 3, NULL, NULL),
(35, 8, 5, NULL, NULL),
(36, 8, 24, NULL, NULL),
(37, 8, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Indonesia', 'indonesia', '2018-10-03 05:22:16', '2018-10-03 05:22:16'),
(2, 'Palu', 'palu', '2018-10-03 05:22:16', '2018-10-03 05:22:16'),
(3, 'World', 'world', '2018-10-03 05:22:16', '2018-10-03 05:22:16'),
(4, 'bbc', 'bbc', '2018-10-03 05:22:17', '2018-10-03 05:22:17'),
(5, 'news', 'news', '2018-10-03 05:22:17', '2018-10-03 05:22:17'),
(6, 'earth', 'earth', '2018-10-03 05:22:17', '2018-10-03 05:22:17'),
(7, 'earthquake', 'earthquake', '2018-10-03 05:22:17', '2018-10-03 05:22:17'),
(8, 'China', 'china', '2018-10-03 05:23:27', '2018-10-03 05:23:27'),
(9, 'reporter', 'reporter', '2018-10-03 05:23:27', '2018-10-03 05:23:27'),
(10, 'nobel', 'nobel', '2018-10-03 05:24:25', '2018-10-03 05:24:25'),
(11, 'physics', 'physics', '2018-10-03 05:24:26', '2018-10-03 05:24:26'),
(12, 'laser jock', 'laser-jock', '2018-10-03 05:24:26', '2018-10-03 05:24:26'),
(13, 'architecture', 'architecture', '2018-10-03 05:25:55', '2018-10-03 05:25:55'),
(14, 'photograhy awards', 'photograhy-awards', '2018-10-03 05:25:55', '2018-10-03 05:25:55'),
(15, '2018', '2018', '2018-10-03 05:25:56', '2018-10-03 05:25:56'),
(16, 'bitcoin', 'bitcoin', '2018-10-03 05:26:47', '2018-10-03 05:26:47'),
(17, 'forklog', 'forklog', '2018-10-03 05:26:47', '2018-10-03 05:26:47'),
(18, 'Ton Vains', 'ton-vains', '2018-10-03 05:26:47', '2018-10-03 05:26:47'),
(19, 'Binance', 'binance', '2018-10-03 05:28:03', '2018-10-03 05:28:03'),
(20, 'startup', 'startup', '2018-10-03 05:28:03', '2018-10-03 05:28:03'),
(21, 'Илмиянов', 'ilmiyanov', '2018-10-03 05:30:02', '2018-10-03 05:30:02'),
(22, 'Бишкек', 'bishkek', '2018-10-03 05:30:02', '2018-10-03 05:30:02'),
(23, 'kaktus', 'kaktus', '2018-10-03 05:30:02', '2018-10-03 05:30:02'),
(24, 'instagram', 'instagram', '2018-10-03 05:31:26', '2018-10-03 05:31:26'),
(25, 'KG', 'kg', '2018-10-03 05:31:26', '2018-10-03 05:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `admin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@admin.com', NULL, '$2y$10$ZVV4rQQiKW7eRqqcEMRf2euxsfIqlJGasouaMPlOdIzKcAratJlOO', NULL, '2018-10-03 05:19:40', '2018-10-03 05:19:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
