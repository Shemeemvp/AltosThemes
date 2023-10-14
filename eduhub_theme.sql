-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 09:41 AM
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
-- Database: `eduhub_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categorie', 7, 'add_categorie'),
(26, 'Can change categorie', 7, 'change_categorie'),
(27, 'Can delete categorie', 7, 'delete_categorie'),
(28, 'Can view categorie', 7, 'view_categorie'),
(29, 'Can add templates', 8, 'add_templates'),
(30, 'Can change templates', 8, 'change_templates'),
(31, 'Can delete templates', 8, 'delete_templates'),
(32, 'Can view templates', 8, 'view_templates'),
(33, 'Can add admin_data', 9, 'add_admin_data'),
(34, 'Can change admin_data', 9, 'change_admin_data'),
(35, 'Can delete admin_data', 9, 'delete_admin_data'),
(36, 'Can view admin_data', 9, 'view_admin_data'),
(37, 'Can add client', 10, 'add_client'),
(38, 'Can change client', 10, 'change_client'),
(39, 'Can delete client', 10, 'delete_client'),
(40, 'Can view client', 10, 'view_client'),
(41, 'Can add connect', 11, 'add_connect'),
(42, 'Can change connect', 11, 'change_connect'),
(43, 'Can delete connect', 11, 'delete_connect'),
(44, 'Can view connect', 11, 'view_connect'),
(45, 'Can add testimonials', 12, 'add_testimonials'),
(46, 'Can change testimonials', 12, 'change_testimonials'),
(47, 'Can delete testimonials', 12, 'delete_testimonials'),
(48, 'Can view testimonials', 12, 'view_testimonials'),
(49, 'Can add uploaded file', 13, 'add_uploadedfile'),
(50, 'Can change uploaded file', 13, 'change_uploadedfile'),
(51, 'Can delete uploaded file', 13, 'delete_uploadedfile'),
(52, 'Can view uploaded file', 13, 'view_uploadedfile'),
(53, 'Can add categorie_features', 14, 'add_categorie_features'),
(54, 'Can change categorie_features', 14, 'change_categorie_features'),
(55, 'Can delete categorie_features', 14, 'delete_categorie_features'),
(56, 'Can view categorie_features', 14, 'view_categorie_features'),
(57, 'Can add categorie_details', 15, 'add_categorie_details'),
(58, 'Can change categorie_details', 15, 'change_categorie_details'),
(59, 'Can delete categorie_details', 15, 'delete_categorie_details'),
(60, 'Can view categorie_details', 15, 'view_categorie_details');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$KBLTOKhk46mN3R5Tia3xDz$3zgzPFJwWHy75PRtNqnVLNlo0jd85hlKih4cRjhqgvU=', '2023-10-14 07:40:43.248492', 1, 'altostheme', '', '', 'altostheme@gmail.com', 1, 1, '2023-07-11 08:28:18.514750');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'Theme', 'admin_data'),
(7, 'Theme', 'categorie'),
(15, 'Theme', 'categorie_details'),
(14, 'Theme', 'categorie_features'),
(10, 'Theme', 'client'),
(11, 'Theme', 'connect'),
(8, 'Theme', 'templates'),
(12, 'Theme', 'testimonials'),
(13, 'Theme', 'uploadedfile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Theme', '0001_initial', '2023-07-07 14:35:41.785627'),
(2, 'contenttypes', '0001_initial', '2023-07-07 14:35:41.836962'),
(3, 'auth', '0001_initial', '2023-07-07 14:35:42.368580'),
(4, 'admin', '0001_initial', '2023-07-07 14:35:42.495900'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-07-07 14:35:42.507907'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-07 14:35:42.519545'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-07-07 14:35:42.579714'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-07-07 14:35:42.635312'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-07-07 14:35:42.656031'),
(10, 'auth', '0004_alter_user_username_opts', '2023-07-07 14:35:42.665983'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-07-07 14:35:42.712600'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-07-07 14:35:42.716858'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-07-07 14:35:42.724213'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-07-07 14:35:42.744603'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-07-07 14:35:42.768111'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-07-07 14:35:42.788622'),
(17, 'auth', '0011_update_proxy_permissions', '2023-07-07 14:35:42.801949'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-07-07 14:35:42.840068'),
(19, 'sessions', '0001_initial', '2023-07-07 14:35:42.892776'),
(20, 'Theme', '0002_alter_categorie_categorie_image', '2023-07-08 07:09:48.051758'),
(21, 'Theme', '0003_templates', '2023-07-10 08:02:35.880695'),
(22, 'Theme', '0004_admin_data', '2023-07-11 09:24:25.535463'),
(23, 'Theme', '0005_remove_categorie_time_remove_templates_template_time', '2023-07-12 13:34:44.976818'),
(24, 'Theme', '0006_client', '2023-07-12 15:30:16.944373'),
(25, 'Theme', '0007_alter_client_client_image', '2023-07-12 15:32:24.544500'),
(26, 'Theme', '0008_connect_testimonials', '2023-07-13 04:23:21.359876'),
(27, 'Theme', '0009_connect_connect_date', '2023-07-13 06:09:03.923954'),
(28, 'Theme', '0010_connect_connect_time', '2023-07-13 06:33:15.104463'),
(29, 'Theme', '0011_testimonials_testimonial_tag', '2023-07-13 09:15:04.251814'),
(30, 'Theme', '0012_admin_data_u_username_alter_admin_data_u_password', '2023-07-13 13:08:21.569863'),
(31, 'Theme', '0013_uploadedfile', '2023-07-27 11:56:57.631113'),
(32, 'Theme', '0014_remove_uploadedfile_categori_templates_template_code_and_more', '2023-07-27 14:46:23.536750'),
(33, 'Theme', '0015_uploadedfile_temp_filename', '2023-07-27 15:29:39.662630'),
(34, 'Theme', '0016_uploadedfile_temp_devname', '2023-07-28 13:54:20.802652'),
(35, 'Theme', '0017_categorie_features_categorie_details', '2023-08-03 10:26:21.617955'),
(36, 'Theme', '0018_rename_custome_feature_categorie_features_feature_and_more', '2023-08-03 11:58:19.948154');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3mdpib89x3i3phogmh8sul8jj3ffk9dj', 'eyJ1aWQiOjF9:1qJwGi:CaBOfroTp_ke0u5r7psvH7XpD16ST0Z7wYtXRHobrUU', '2023-07-27 13:22:04.131787'),
('a0bn7tb0sr8skw6p69rbos1r9bpgkm98', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qrZGN:JH9eAWo80MHPF--ISrCIQc3PXJ0cHMwHcQZvHrMMABQ', '2023-10-28 07:40:43.255376'),
('gt0zjaz3ejik7i4g4wg15j85kxrwru2b', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qPcD8:yjPW9F1Wjohr0V0RHeKXHnfFIE_MUkLlwhO_TA9NGJg', '2023-08-12 05:09:50.522894'),
('kdmuoujgm4iv6feg7p9m3scusu90rr10', 'eyJ1aWQiOjF9:1qJzk4:VUOITts3kuVY4kYJ0UY4W-5HQsnmX-FRdV59Ss8vIPw', '2023-07-27 17:04:36.482149'),
('lm7786u19e9f76vf6slpl2i07rt3xr3q', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qKZgY:BdUdg7OH86hOvTUu5YxEMu8hF4f205l4Fg5K0EXvzNc', '2023-07-29 07:27:22.754608'),
('m05a4ck34u3zzhu9fi68n4z3lzzo8klx', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qLfzF:gISRSSrBUslvzAGMM2yP90H7SwK50R8VZVcI2XTuln8', '2023-08-01 08:23:13.927944'),
('pif1dvtdym7csaoond9sgqo5za47d87z', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qRU30:kmu_Pouz-xOuBALEFYQ7O9BZUafOjtWPlcvSeRHyfmk', '2023-08-17 08:51:06.992272'),
('q3i2y0luhm4rumxlghhvgccfakjf2v5v', '.eJxVjDsOwyAQRO-ydYS8fAykTJ8zID6b4CQCyZgqyt1jJDee8s2b-UJfElzxAs73LbveaHWDAMKJBR_fVEaRXr48K4u1bOsS2FDY0TZ2r4k-t8M9HWTf8r4Oe6I2Cq2RFFScBD24UD56qQxaIa0MRGQkakQZDXGRJkOJz0ro2Vr4_QFjRDme:1qPJE8:aX5WGxRjRZTCm5tX1N9A3IvzBgRHfl1E_zt5rwtFi2I', '2023-08-11 08:53:36.236460');

-- --------------------------------------------------------

--
-- Table structure for table `theme_admin_data`
--

CREATE TABLE `theme_admin_data` (
  `id` bigint(20) NOT NULL,
  `u_image` varchar(100) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_desig` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_id_id` int(11) DEFAULT NULL,
  `u_username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_admin_data`
--

INSERT INTO `theme_admin_data` (`id`, `u_image`, `u_name`, `u_desig`, `u_password`, `u_id_id`, `u_username`) VALUES
(4, 'categorie/bth3_l6rSRUs.jpg', 'Shebin Shaji', 'Admin', '123', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `theme_categorie`
--

CREATE TABLE `theme_categorie` (
  `id` bigint(20) NOT NULL,
  `categorie_image` varchar(100) DEFAULT NULL,
  `categorie_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `img_alttag` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_categorie`
--

INSERT INTO `theme_categorie` (`id`, `categorie_image`, `categorie_name`, `status`, `publish_date`, `img_alttag`) VALUES
(8, 'categorie/res1.jpg', 'hospital', '1', '2023-07-18', 'hospital');

-- --------------------------------------------------------

--
-- Table structure for table `theme_categorie_details`
--

CREATE TABLE `theme_categorie_details` (
  `id` bigint(20) NOT NULL,
  `details` longtext DEFAULT NULL,
  `content_position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `categori_details_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_categorie_details`
--

INSERT INTO `theme_categorie_details` (`id`, `details`, `content_position`, `status`, `categori_details_id_id`) VALUES
(1, 'The responsive hospital theme is designed to provide medical institutions and healthcare\r\nprofessionals with a powerful and visually appealing online presence. This theme offers a perfect\r\nblend of functionality, aesthetics, and user-friendliness, making it an ideal choice for hospitals,\r\nclinics, medical centers, doctors, and other healthcare-related websites. With its extensive\r\ncustomization options, The theme enables you to tailor your website to suit your specific\r\nbranding and content needs, allowing you to create a unique and professional online platform for\r\nyour medical services.', 1, '0', 8),
(3, 'It is an exceptional hospital theme that combines functionality, flexibility, and aesthetics to provide\r\nhealthcare institutions with a strong online presence. Its responsive design, appointment booking\r\nsystem, doctors and departments management, and various customization options make it an\r\nexcellent choice for hospitals, clinics, and medical centers aiming to stand out in the digital\r\nlandscape. With this theme, create a unique and professional website that inspires trust and confidence in your medical services.\r\n\r\n', 2, '0', 8);

-- --------------------------------------------------------

--
-- Table structure for table `theme_categorie_features`
--

CREATE TABLE `theme_categorie_features` (
  `id` bigint(20) NOT NULL,
  `feature` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `categori_feature_id_id` bigint(20) DEFAULT NULL,
  `type_feature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_categorie_features`
--

INSERT INTO `theme_categorie_features` (`id`, `feature`, `status`, `categori_feature_id_id`, `type_feature`) VALUES
(1, 'Responsive Design: It ensures a seamless user experience across various devices, from\r\ndesktops to smartphones, making your website accessible to a wider audience.\r\n', '0', 8, '1'),
(2, 'Appointment Booking System: The built-in appointment booking system simplifies the\r\nscheduling process for patients, enabling them to book appointments with doctors and\r\nhealthcare specialists directly from the website', '0', 8, '1'),
(3, 'Doctors and Departments Management: Display your medical staff and various\r\ndepartments with ease using dedicated management modules, making it convenient for\r\nvisitors to find relevant information.', '0', 8, '1'),
(4, 'Medical Services Showcase: Present your medical services and treatments with\r\ncaptivating layouts, helping patients understand the range of  care you offer.\r\n', '0', 8, '1'),
(5, 'Testimonials and Reviews: Build trust and credibility by showcasing patient testimonials\r\nand positive reviews, demonstrating the quality of your healthcare services.', '0', 8, '1'),
(6, 'Blogging Platform: Educate your audience with insightful healthcare articles and news\r\nupdates through the integrated blogging platform.\r\n', '0', 8, '1'),
(7, 'Timetable and Opening Hours: Display your hospital\'s working hours and doctor\r\nschedules using an intuitive timetable feature.\r\n', '0', 8, '1'),
(8, 'Gallery and Video Support: Engage visitors with visual content through image galleries\r\nand video integration, allowing you to highlight medical facilities, equipment, and success\r\nstories.', '0', 8, '1'),
(9, 'Contact Forms and Location Maps: Intuitive contact forms simplify communication\r\nbetween patients and your hospital, while location maps help visitors find your facility\r\neasily.\r\n', '0', 8, '1'),
(11, 'Color Schemes: Customize the color palette to match your hospital\'s branding and create\r\na consistent look across your website.', '0', 8, '2'),
(12, 'Typography: Choose from a wide range of fonts to enhance readability and match your\r\nhospital\'s identity.', '0', 8, '2'),
(13, 'Page Layouts: Effortlessly customize the layout of each page, tailoring it to your specific\r\ncontent requirements.', '0', 8, '2'),
(14, 'Header and Footer Styles: Customize header and footer designs to reflect your hospital\'s\r\npersonality and display essential information effectively.\r\n', '0', 8, '2'),
(15, 'Logo and Favicon: Easily upload your hospital\'s logo and favicon to maintain brand\r\nconsistency.\r\n', '0', 8, '2');

-- --------------------------------------------------------

--
-- Table structure for table `theme_client`
--

CREATE TABLE `theme_client` (
  `id` bigint(20) NOT NULL,
  `client_image` varchar(100) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_alttag` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `theme_connect`
--

CREATE TABLE `theme_connect` (
  `id` bigint(20) NOT NULL,
  `messages` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `connect_date` date DEFAULT NULL,
  `connect_time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_connect`
--

INSERT INTO `theme_connect` (`id`, `messages`, `name`, `contact_no`, `email`, `status`, `connect_date`, `connect_time`) VALUES
(5, 'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing,', 'Shebin Shaji', '7898656453', 'shebinshaji@gmail.com', '0', '2023-07-13', '10:43:15.077502'),
(6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', 'Sebin John', '8987656478', 'sebinjohn@gmail.com', '0', '2023-07-13', '12:03:15.077502');

-- --------------------------------------------------------

--
-- Table structure for table `theme_templates`
--

CREATE TABLE `theme_templates` (
  `id` bigint(20) NOT NULL,
  `template_image` varchar(100) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `template_discription` longtext DEFAULT NULL,
  `template_status` varchar(255) DEFAULT NULL,
  `template_publish_date` date DEFAULT NULL,
  `template_img_alttag` longtext DEFAULT NULL,
  `template_price` varchar(255) DEFAULT NULL,
  `template_rating` varchar(255) DEFAULT NULL,
  `video_file` varchar(100) NOT NULL,
  `categori_id_id` bigint(20) DEFAULT NULL,
  `template_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_templates`
--

INSERT INTO `theme_templates` (`id`, `template_image`, `template_name`, `template_discription`, `template_status`, `template_publish_date`, `template_img_alttag`, `template_price`, `template_rating`, `video_file`, `categori_id_id`, `template_code`) VALUES
(10, 'templates_images/it.jpg', 'HOSPITAL', 'fvbgdfgdfgdfgffdgdfgfdgfdgfdgfdgfgfgtytyuyiouoikyuiukyiyuiuuyiryuryuytutyuytuyuyutyuytutytyuuiruiuurruyiyiuyiuy', '1', '2023-07-18', 'dfdgdgdgdsg', '5000', '5', 'tempvideo/post_1b.mp4', 8, 'ALTS0010'),
(11, 'templates_images/it.jpg', 'Hospital', 'fvbgdfgdfgdfgffdgdfgfdgfdgfdgfdgfgfgtytyuyiouoikyuiukyiyuiuuyiryuryuytutyuytuyuyutyuytutytyuuiruiuurruyiyiuyiuy', '1', '2023-07-18', 'dfdgdgdgdsg', '5000', '5', 'tempvideo/post_1b.mp4', 8, 'ALTS0011');

-- --------------------------------------------------------

--
-- Table structure for table `theme_testimonials`
--

CREATE TABLE `theme_testimonials` (
  `id` bigint(20) NOT NULL,
  `testimonial_image` varchar(100) DEFAULT NULL,
  `testimonial_name` varchar(255) DEFAULT NULL,
  `testimonial_position` varchar(255) DEFAULT NULL,
  `testimonial_discription` longtext DEFAULT NULL,
  `testimonial_status` varchar(255) DEFAULT NULL,
  `testimonial_tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `theme_uploadedfile`
--

CREATE TABLE `theme_uploadedfile` (
  `id` bigint(20) NOT NULL,
  `zip_file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `temp_code_id` bigint(20) DEFAULT NULL,
  `temp_filename` varchar(255) DEFAULT NULL,
  `temp_devname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_uploadedfile`
--

INSERT INTO `theme_uploadedfile` (`id`, `zip_file`, `uploaded_at`, `temp_code_id`, `temp_filename`, `temp_devname`) VALUES
(11, 'uploads/DMcore_3_q3N1zUd.zip', '2023-07-29 17:32:38.318548', 11, 'Hospital_ALTS0011', 'Shebin Shaji');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `theme_admin_data`
--
ALTER TABLE `theme_admin_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Theme_admin_data_u_id_id_cb187276_fk_auth_user_id` (`u_id_id`);

--
-- Indexes for table `theme_categorie`
--
ALTER TABLE `theme_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_categorie_details`
--
ALTER TABLE `theme_categorie_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Theme_categorie_deta_categori_details_id__aeeb7948_fk_Theme_cat` (`categori_details_id_id`);

--
-- Indexes for table `theme_categorie_features`
--
ALTER TABLE `theme_categorie_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Theme_categorie_feat_categori_feature_id__35936335_fk_Theme_cat` (`categori_feature_id_id`);

--
-- Indexes for table `theme_client`
--
ALTER TABLE `theme_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_connect`
--
ALTER TABLE `theme_connect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_templates`
--
ALTER TABLE `theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Theme_templates_categori_id_id_1a3ae807_fk_Theme_categorie_id` (`categori_id_id`);

--
-- Indexes for table `theme_testimonials`
--
ALTER TABLE `theme_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_uploadedfile`
--
ALTER TABLE `theme_uploadedfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Theme_uploadedfile_temp_code_id_6907b0a7_fk_Theme_templates_id` (`temp_code_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `theme_admin_data`
--
ALTER TABLE `theme_admin_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theme_categorie`
--
ALTER TABLE `theme_categorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `theme_categorie_details`
--
ALTER TABLE `theme_categorie_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theme_categorie_features`
--
ALTER TABLE `theme_categorie_features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `theme_client`
--
ALTER TABLE `theme_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `theme_connect`
--
ALTER TABLE `theme_connect`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theme_templates`
--
ALTER TABLE `theme_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `theme_testimonials`
--
ALTER TABLE `theme_testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theme_uploadedfile`
--
ALTER TABLE `theme_uploadedfile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `theme_admin_data`
--
ALTER TABLE `theme_admin_data`
  ADD CONSTRAINT `Theme_admin_data_u_id_id_cb187276_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `theme_categorie_details`
--
ALTER TABLE `theme_categorie_details`
  ADD CONSTRAINT `Theme_categorie_deta_categori_details_id__aeeb7948_fk_Theme_cat` FOREIGN KEY (`categori_details_id_id`) REFERENCES `theme_categorie` (`id`);

--
-- Constraints for table `theme_categorie_features`
--
ALTER TABLE `theme_categorie_features`
  ADD CONSTRAINT `Theme_categorie_feat_categori_feature_id__35936335_fk_Theme_cat` FOREIGN KEY (`categori_feature_id_id`) REFERENCES `theme_categorie` (`id`);

--
-- Constraints for table `theme_templates`
--
ALTER TABLE `theme_templates`
  ADD CONSTRAINT `Theme_templates_categori_id_id_1a3ae807_fk_Theme_categorie_id` FOREIGN KEY (`categori_id_id`) REFERENCES `theme_categorie` (`id`);

--
-- Constraints for table `theme_uploadedfile`
--
ALTER TABLE `theme_uploadedfile`
  ADD CONSTRAINT `Theme_uploadedfile_temp_code_id_6907b0a7_fk_Theme_templates_id` FOREIGN KEY (`temp_code_id`) REFERENCES `theme_templates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
