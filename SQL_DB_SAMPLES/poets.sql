-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 08:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adeeb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `poets`
--

CREATE TABLE `poets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poets`
--

INSERT INTO `poets` (`id`, `name`, `time_period`, `bio`, `reviewed`, `created_at`, `updated_at`) VALUES
(1, 'عنترة بن شداد', 'العصر الجاهلي', 'عنترة بن عمرو بن شداد بن معاوية بن قراد العبسي (525 م - 608 م) هو أحد أشهر شعراء العرب في فترة ما قبل الإسلام، اشتهر بشعر الفروسية، وله معلقة مشهورة. وهو أشهر فرسان العرب وأشعرهم وشاعر المعلقات والمعروف بشعره الجميل وغزله العفيف بعبلة.', 1, '2022-08-04 12:52:46', '2022-08-04 12:52:46'),
(2, 'عمرو بن كلثوم', 'العصر الجاهلي', 'وكان من أعز الناس نفساً، وهو من الفتاك الشجعان. ساد قومه (تغلب) وهو فتى، وعمر طويلاً. وهو الذي قتل الملك عمرو بن هند.عمرو بن كلثوم بن مالك بن عتّاب، من بني تغلب، أبو الأسود. شاعر جاهلي، من الطبقة الأولى. ولد في شمالي جزيرة العرب في بلاد ربيعة.', 1, '2022-08-04 12:53:09', '2022-08-04 12:53:09'),
(3, 'امرؤ القيس', 'العصر الجاهلي', 'امرؤ القيس بن حجر بن الحارث الكندي، من بني آكل المرار. شاعر يماني الأصل. اشتهر بلقبه،ثم ثار بنو أسد على أبيه فقتلوه وثأر لأبيه من بني أسد وقال في ذلك شعرا كثيراً.', 1, '2022-08-04 12:53:18', '2022-08-04 12:53:18'),
(4, 'أبو تمام', 'العصر العباسي', 'حبيب بن أوس بن الحارث الطائي، أبو تمام. الشاعر، الأديب. أحد أمراء البيان. ولد في جاسم (من قرى حوران بسورية) ورحل إلى مصر، واستقدمه المعتصم إلى بغداد، في شعره قوة وجزالة. واختلف في التفضيل بينه وبين المتنبي', 1, '2022-08-04 12:53:29', '2022-08-04 12:53:29'),
(5, 'التهامي', 'العصر العباسي', 'أبو الحسن علي بن محمد بن فهد التهامي. من كبار شعراء العرب، نعته الذهبي بشاعر وقته. مولده ومنشؤه في اليمن، وأصله من أهل مكة، كان يكتم نسبه، فينتسب مرة للعلوية وأخرى لبني أمية. وانتحل مذهب الاعتزال', 1, '2022-08-04 12:53:41', '2022-08-04 12:53:41'),
(6, 'محمود شاكر (أبو فهر)', 'القرن العشرين', 'رزق عقل الشافعي، وعبقرية الخليل، ولسان ابن حزم، وشجاعة ابن تيمية، وبهذه الأمور الأربعة مجتمعة حصَّل من المعارف والعلوم العربية ما لم يحصله أحد من أبناء جيله، ثم خاض معارك حامية: فحارب الدعوة إلى العامية, و كتابة اللغة العربية بالحروف اللاتينية.', 0, '2022-12-18 14:20:06', '2022-12-18 14:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poets`
--
ALTER TABLE `poets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poets`
--
ALTER TABLE `poets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
