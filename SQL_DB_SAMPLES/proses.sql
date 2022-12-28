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
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poet_id` bigint(20) UNSIGNED NOT NULL,
  `tags` set('الفخر','الشجاعة','الغزل','الرثاء','المعلقات','الهجاء','المدح','الحكمة','الحزن') COLLATE utf8mb4_unicode_ci NOT NULL,
  `qoute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proses`
--

INSERT INTO `proses` (`id`, `poet_id`, `tags`, `qoute`, `reviewed`, `created_at`, `updated_at`) VALUES
(1, 6, 'الحكمة', 'واعلم أن السفهاء في الدنيا كثير، فمن كان يغضب لكلّ سفاهةٍ من سفيه فإنّ شقاءه سيطول بغضبه.', 1, '2022-12-18 14:25:40', '2022-12-18 14:25:40'),
(2, 6, 'الحكمة', 'ويزيد الأمر بشاعةً: أن الذين هم هدفٌ للتدمير والتمزيق والنسف، لا يكادون يتوهمون أن ميدان الثقافة والأدب والفكر هو أخطر ميادين هذه الحرب', 1, '2022-12-18 14:25:59', '2022-12-18 14:25:59'),
(3, 6, 'الحكمة', 'وإلفُ القبيحِ مَتلفةٌ للإحساسِ والعقلِ جميعا.', 1, '2022-12-18 14:26:24', '2022-12-18 14:26:24'),
(4, 6, 'الحكمة', 'لا حياة لأمة بغير لسان، واللسان كالنهر الجارف، يجمع كل محصول الأمة، كالغيث منهمر، آلاف القرون يتكون منه هذا النهر، فإذا انقطع تيار هذا النهر فقد وقعت في خيبة.', 1, '2022-12-18 14:26:45', '2022-12-18 14:26:45'),
(5, 6, 'الحكمة', 'الأمم العربيّة الآن تحتاج إلى من يذكّرها بمجد وعزّ وحضارة أجدادها؛ لتجد في نفسها مضض الحسرة، وفي الحسرة الألم، وفي الألم الشعور، وفي الشعور الحياة والطموح والشوق إلى الفوز والغلبة.', 1, '2022-12-18 14:27:03', '2022-12-18 14:27:03'),
(6, 6, 'الرثاء,الحكمة', 'يرحل الراحلون ليبعثوا في القلوب الذكرى، ويجددوا في الأفئدة بنيان الحسرة، ويورثوا المهج نيران الألم.', 1, '2022-12-18 14:27:20', '2022-12-18 14:29:58'),
(7, 6, 'الرثاء,الحكمة', 'إنَّ الجسد ليذهب إلى البِلى، وإنّ الروح لتخلد', 1, '2022-12-18 15:23:22', '2022-12-18 15:23:22'),
(8, 6, 'الرثاء,الحكمة', 'اشتريتُ الكتاب، وكان خسارةً، ولكن أين المفرُّ؟ فكلّ مُحِبٍّ للقراءة مثلي يُوقعه حبُّه مرارًا وتكرارًا في الخسارة بعد الخسارة، ثمّ لا يتوبُ! هكذا كُتُب زماننا..', 1, '2022-12-18 15:23:45', '2022-12-18 15:23:45'),
(9, 6, 'الرثاء,الحكمة', 'وما يفوز القارئ حين يفوز، إلّا بما يفطن إليه ممّا يغفل عنه غيره، ويتجاوزه سواه.', 1, '2022-12-18 15:25:03', '2022-12-18 15:25:03'),
(10, 6, 'الرثاء,الحكمة', 'إنّ حياة الأمم في ألسنتها.', 1, '2022-12-18 15:25:16', '2022-12-18 15:25:16'),
(11, 6, 'الرثاء,الحكمة', 'فاقرأ تاريخك بعينٍ عربيّةٍ بصيرةٍ لا تغفل، لا بعينٍ أوروبيّةٍ تخالطها نزعةٌ وطنيّة.', 1, '2022-12-18 15:25:35', '2022-12-18 15:25:35'),
(12, 6, 'الرثاء,الحكمة', 'أحبُّ أن نبرأ من المبالغة في الحبِّ والبغض، وفي الثناء والقدح، وفي المجاملة والازورار، فإنّها تضرُّ، وهي فوق ذلك متعبة للطّرفين جميعا.', 1, '2022-12-18 15:25:48', '2022-12-18 15:25:48'),
(13, 6, 'الرثاء,الحكمة', 'فأيّما شاعرٍ أو أديبٍ قال، فإنّما بقلبه وجب أن يقول، ومن داخله كُتب عليه أن يتكلّم.', 1, '2022-12-18 15:25:58', '2022-12-18 15:25:58'),
(14, 6, 'الرثاء,الحكمة', 'لا أعلم نكبةً نزلت بالشرق العربيّ والإسلاميّ بلدًا بلدًا كانت أفحش أثرًا وأشأم عاقبةً من نكبة النسيان والغفلة.', 1, '2022-12-18 15:26:10', '2022-12-18 15:26:10'),
(15, 6, 'الرثاء,الحكمة', 'واعلم أنّ العربيّة تعلّم العقل، فمن شاء أن يطلبها بحقّها فليصبر عليها صبر المؤمن.', 1, '2022-12-18 15:26:21', '2022-12-18 15:26:21'),
(16, 6, 'الرثاء,الحكمة', 'وإنّ امرأ يقتل لغته وبيانها وآخر يقتل نفسه لمثلان، والثاني أعقل الرجلين.', 1, '2022-12-18 15:26:33', '2022-12-18 15:26:33'),
(17, 6, 'الرثاء,الحكمة', 'الأندلس، كلمةٌ واحدةٌ توقظ في دم كلّ عربيٍّ تاريخًا من المجد والجمال والعلم والأدب، وتوقِد فيه نيرانًا من الألم والغيظ والغضب والحسرة..', 1, '2022-12-18 15:26:43', '2022-12-18 15:26:43'),
(18, 6, 'الرثاء,الحكمة', 'اذكروا اسمَ عدوّكم فإنّ نسيانه جريمة، واعرفوا عمل عدوّكم فإنّ جهله هو الذلّ، وحرّضوا أنفسكم على أن تقاتلوه بالليل والنهار في تفكيركم وأعمالكم، لا تنسَوا، فإنّ النسيان هو الهلاك.', 1, '2022-12-18 15:27:01', '2022-12-18 15:27:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proses`
--
ALTER TABLE `proses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;