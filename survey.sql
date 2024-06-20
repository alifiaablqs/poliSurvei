-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2024 at 12:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` int NOT NULL,
  `kategori_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Kualitas Pendidikan'),
(2, 'Kualitas Fasilitas'),
(3, 'Kualitas Pelayanan'),
(4, 'Kualitas Lulusan');

-- --------------------------------------------------------

--
-- Table structure for table `m_survey`
--

CREATE TABLE `m_survey` (
  `survey_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `survey_kode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `survey_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `survey_jenis` enum('Mahasiswa','Dosen','Tenaga Pendidik','Orang Tua / Wali','Alumni','Industri') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `survey_deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `survey_tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_survey`
--

INSERT INTO `m_survey` (`survey_id`, `user_id`, `survey_kode`, `survey_nama`, `survey_jenis`, `survey_deskripsi`, `survey_tanggal`) VALUES
(1, 1, 'M', 'KSP', 'Mahasiswa', 'Survey Ini menilai Kondisi Sarana Prasarana', '2024-06-05 08:25:04'),
(2, 1, 'M', 'KTPUKA', 'Mahasiswa', 'Survey Ini menilai Kemampuan Tenaga Pengajar', '2024-06-05 08:25:04'),
(3, 1, 'M', 'LMANA', 'Mahasiswa', 'Survey Ini menilai Layanan Masalah Akademin dan on Akademik', '2024-06-05 08:25:04'),
(4, 1, 'M', 'KPA', 'Mahasiswa', 'Survey Ini menilai Keadilan Perlakuan Akademik', '2024-06-05 08:25:04'),
(5, 1, 'M', 'LKPM', 'Mahasiswa', 'Survey Ini menilai Layanan Keuangan dan Prestasi Mahasiswa', '2024-06-05 08:25:04'),
(6, 1, 'M', 'TILA', 'Mahasiswa', 'Survey Ini menilai Transparasi Informasi dan Layanan Akademik', '2024-06-05 08:25:04'),
(7, 1, 'O', 'KSP', 'Orang Tua / Wali', 'Ditujukan untuk meningkatkan efisiensi sarana dan prasarana Polinema', '2024-06-03 10:11:20'),
(8, 1, 'O', 'LIP', 'Orang Tua / Wali', 'Ditujukan untuk meningkatkan layanan informasi Polinema', '2024-06-03 10:11:20'),
(9, 1, 'O', 'KMP', 'Orang Tua / Wali', 'Ditujukan untuk mengevaluasi kemajuan mahasiswa sebagai hasil pengajaran di Polinema', '2024-06-03 10:11:20'),
(10, 1, 'O', 'LKP', 'Orang Tua / Wali', 'Ditujukan untuk menangani layanan keluhan akademik dan pasca kelulusan', '2024-06-03 10:11:20'),
(11, 1, 'I', 'PPLP', 'Industri', 'Pelacakan Pengguna Lulusan Polinema', '2024-06-03 10:11:20'),
(12, 1, 'D', 'PSDM', 'Dosen', 'Survey ini bertujuan untuk meningkatkan efisiensi dan Transparansi dalam pengelolaan sumber daya manusia di Politeknik Negeri Malang', '2024-06-02 13:25:47'),
(13, 1, 'D', 'PK', 'Dosen', 'Survey ini bertujuan untuk meningkatkan efisiensi dan transparansi dalam pengelolaan keuangan di politeknik Negeri Malang.', '2024-06-03 10:11:20'),
(14, 1, 'D', 'PSP', 'Dosen', 'Survey ini bertujuan untuk  meningkatkan efisiensi dan transparansi dalam pengelolaan sarana dan prasarana di politeknik Negeri Malang.', '2024-06-03 10:11:20'),
(15, 1, 'D', 'PKP', 'Dosen', 'Survey ini bertujuan untuk meningkatkan efisiensi dan transparansi dalam pengelolaan kegiatan penelitian di politeknik Negeri Malang.', '2024-06-03 10:11:20'),
(16, 1, 'D', 'PKPM', 'Dosen', 'Survey ini bertujuan untuk  meningkatkan efisiensi dan transparansi dalam pengelolaan kegiatan pengabdian kepada masyarakat di politeknik Negeri Malang.', '2024-06-03 10:11:20'),
(17, 1, 'T', 'PSDM', 'Tenaga Pendidik', 'survey ini untuk menilai kepuasan dosen terhadap kinerja kampus', '2024-06-02 13:25:47'),
(18, 1, 'T', 'PKU', 'Tenaga Pendidik', 'Mengevaluasi dan meningkatkan efektivitas manajemen keuangan di Politeknik Negeri Malang.', '2024-06-05 01:13:00'),
(19, 1, 'T', 'PSP', 'Tenaga Pendidik', 'Ditujukan untuk meningkatkan efisiensi sarana dan prasarana Politeknik Negeri Malang.', '2024-06-05 01:15:00'),
(20, 1, 'T', 'PKP', 'Tenaga Pendidik', 'Bertujuan untuk meningkatkan kualitas dan efektivitas penelitian yang dilakukan di Politeknik Negeri Malang.', '2024-06-05 01:18:00'),
(21, 1, 'T', 'PKM', 'Tenaga Pendidik', 'Mengevaluasi dan meningkatkan kualitas, efektivitas, dan dampak kegiatan PkM di Politeknik Negeri Malang.', '2024-06-05 01:21:00'),
(22, 1, 'A', 'IKA', 'Alumni', 'pengembangan institusi pendidikan dan pemeliharaan hubungan dengan alumni Politeknik Negeri Malang', '2024-06-06 10:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `m_survey_soal`
--

CREATE TABLE `m_survey_soal` (
  `soal_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `kategori_id` int DEFAULT NULL,
  `no_urut` int DEFAULT NULL,
  `soal_jenis` enum('Pilihan Ganda','Isian') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soal_nama` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_survey_soal`
--

INSERT INTO `m_survey_soal` (`soal_id`, `survey_id`, `kategori_id`, `no_urut`, `soal_jenis`, `soal_nama`) VALUES
(1, 1, 2, 1, 'Pilihan Ganda', 'Ruang kuliah tertata dengan bersih dan rapi'),
(2, 1, 2, 2, 'Pilihan Ganda', 'Ruang kuliah sejuk dan nyaman'),
(3, 1, 2, 3, 'Pilihan Ganda', 'Sarana pembelajaran yang tersedia di ruangan kuliah'),
(4, 1, 2, 4, 'Pilihan Ganda', 'Kelengkapan sarana di Perpustakaan Polinema'),
(5, 1, 2, 5, 'Pilihan Ganda', 'Kelengkapan sarana di laboratorium/bengkel/studio Polinema yang sesuai dengan kebutuhan keilmuan bagi mahasiswa'),
(6, 1, 2, 6, 'Pilihan Ganda', 'Ketersediaan buku referensi yang di perpustakaan Polinema'),
(7, 1, 2, 7, 'Pilihan Ganda', 'Kondisi fasilitas kamar kecil yang bersih dan cukup'),
(8, 1, 2, 8, 'Pilihan Ganda', 'Kondisi fasilitas parkir yang aman dan cukup'),
(9, 1, 2, 9, 'Pilihan Ganda', 'Kondisi fasilitas parkir yang aman dan cukup'),
(10, 1, 2, 10, 'Pilihan Ganda', 'Kondisi fasilitas ibadah yang dapat dipergunakan oleh mahasiswa Polinema'),
(11, 2, 1, 1, 'Pilihan Ganda', 'Kejelasan materi perkuliahan yang diberikan dosen'),
(12, 2, 1, 2, 'Pilihan Ganda', 'Ketersediaan waktu tanya jawab pada saat perkuliahan yang diberikan dosen'),
(13, 2, 1, 3, 'Pilihan Ganda', 'Kualitas bahan ajar suplemen yang diberikan kepada mahasiswa untuk melengkapi materi perkuliahan'),
(14, 2, 1, 4, 'Pilihan Ganda', 'Dosen memberikan hasil ujian dengan nilai yang objektif'),
(15, 2, 1, 5, 'Pilihan Ganda', 'Dosen datang tepat waktu saat perkuliahan'),
(16, 2, 1, 6, 'Pilihan Ganda', 'Dosen memiliki keahlian yang memadai'),
(17, 2, 1, 7, 'Pilihan Ganda', 'Kualitas Rencana Pembelajaran Semester yang dibuat oleh Dosen'),
(18, 2, 1, 8, 'Pilihan Ganda', 'Kemampuan dosen dalam membimbing PKL, LA, dan atau Skripsi'),
(19, 2, 1, 9, 'Pilihan Ganda', 'Kemampuan staf akademik dalam memberikan pelayanan administrasi kemahasiswaan\r\n'),
(20, 2, 1, 10, 'Pilihan Ganda', 'Kualitas staf akademik dalam memenuhi kepentingan mahasiswa'),
(21, 3, 3, 1, 'Pilihan Ganda', 'Pelayanan dosen pembina akademik kepada mahasiswa'),
(22, 3, 3, 2, 'Pilihan Ganda', 'Penyediaan beasiswa bagi mahasiswa yang tidak mampu'),
(23, 3, 3, 3, 'Pilihan Ganda', 'Pelayanan bantuan masalah akademik oleh Polinema kepada mahasiswa'),
(24, 3, 3, 4, 'Pilihan Ganda', 'Penyediaan waktu oleh Direktur Polinema beserta jajarannya kepada orang tua mahasiswa untuk berkonsultasi'),
(25, 3, 3, 5, 'Pilihan Ganda', 'Pelayanan bantuan pengobatan bagi mahasiswa yang sakit oleh Polinema'),
(26, 3, 3, 6, 'Pilihan Ganda', 'Pelayanan bantuan asuransi kecelakaan oleh Polinema kepada mahasiswa'),
(27, 3, 3, 7, 'Pilihan Ganda', 'Pelayanan yang santun oleh staf administrasi akademik kepada mahasiswa'),
(28, 3, 3, 8, 'Pilihan Ganda', 'Pelayanan dosen Pembimbing Akademik yang ditugaskan oleh Polinema untuk penanganan masalah/keluhan yang bersifat akademik dan non-akademik'),
(29, 3, 3, 9, 'Pilihan Ganda', 'Pengembalian hasil pekerjaan atau tugas oleh dosen kepada mahasiswa'),
(30, 3, 3, 10, 'Pilihan Ganda', 'Efektivitas dosen dalam mengelola waktu pengajaran'),
(31, 4, 3, 1, 'Pilihan Ganda', 'Keadilan pemberian sanksi bagi mahasiswa yang melanggar aturan Polinema'),
(32, 4, 3, 2, 'Pilihan Ganda', 'Kepedulian Polinema dalam memahami kepentingan dan kesulitan mahasiswa\r\n'),
(33, 4, 3, 3, 'Pilihan Ganda', 'Sosialisasi transparansi besaran UKT'),
(34, 5, 3, 1, 'Pilihan Ganda', 'Sosialisasi transparansi perkembangan dan penerimaan beasiswa bidikmisi'),
(35, 5, 3, 2, 'Pilihan Ganda', 'Layanan monitoring oleh Polinema terhadap kemajuan prestasi mahasiswa melalui dosen pembina akademik'),
(36, 5, 3, 3, 'Pilihan Ganda', 'Kesediaan dosen dalam membantu mahasiswa yang mengalami kesulitan bidang akademik/mata kuliah'),
(37, 5, 3, 4, 'Pilihan Ganda', 'Keterbukaan dan sikap kooperatif oleh dosen kepada mahasiswa'),
(38, 5, 3, 5, 'Pilihan Ganda', 'Upaya Polinema dalam pengembangan minat dan bakat mahasiswa'),
(39, 5, 3, 6, 'Pilihan Ganda', 'Fasilitas Polinema dalam bentuk uji kompetensi profesi'),
(40, 5, 3, 7, 'Pilihan Ganda', 'Layanan informasi sistem perkuliahan oleh Polinema dalam bentuk buku pedoman akademik'),
(41, 6, 3, 1, 'Pilihan Ganda', 'Layanan informasi terkait pelaksanaan PKL, LA, atau Skripsi dalam bentuk buku pedoman'),
(42, 6, 3, 2, 'Pilihan Ganda', 'Layanan informasi akademik dan layanan non-akademik dalam bentuk website (online)'),
(43, 6, 3, 3, 'Pilihan Ganda', 'Transparansi layanan informasi akademik dan non-akademik'),
(44, 6, 3, 4, 'Pilihan Ganda', 'Pemberian informasi terkait peluang karir/lowongan pekerjaan'),
(45, 6, 3, 5, 'Pilihan Ganda', 'Polinema memberikan respon positif pada setiap pengaduan mahasiswa'),
(46, 6, 3, 6, 'Pilihan Ganda', 'Polinema berusaha transparan dalam menjelaskan penggunaan dana kemahasiswaan'),
(47, 6, 3, 7, 'Pilihan Ganda', 'Dosen pengajar mata kuliah selalu mengajar sesuai jadwal yang telah diatur'),
(48, 7, 2, 1, 'Pilihan Ganda', 'Ketersediaan sarana dan prasarana Polinema'),
(49, 7, 2, 2, 'Pilihan Ganda', 'Keramahan pegawai Polinema'),
(50, 7, 2, 3, 'Pilihan Ganda', 'Kemudahan dalam administrasi keuangan'),
(51, 8, 3, 1, 'Pilihan Ganda', 'Penjelasan yang diberikan pihak Polinema atas pertanyaan dari orang tua atau wali mahasiswa'),
(52, 8, 3, 2, 'Pilihan Ganda', 'Komunikasi yang diberikan pihak Polinema (khususnya Ketua Jurusan/Koordinator Program Studi/Dosen Pembina Akademik) dengan orang tua atau wali mahasiswa'),
(53, 8, 3, 3, 'Pilihan Ganda', 'Informasi tentang hasil pembelajaran di Polinema'),
(54, 9, 1, 1, 'Pilihan Ganda', 'Kurikulum dan sistem pembelajaran di Polinema'),
(55, 9, 1, 2, 'Pilihan Ganda', 'Suasana kehidupan kampus yang berakhlak'),
(56, 9, 1, 3, 'Pilihan Ganda', 'Penjamin keamanan dan keselamatan mahasiswa'),
(57, 9, 1, 4, 'Pilihan Ganda', 'Kesesuaian biaya pendidikan dengan kualitas belajar mahasiswa'),
(58, 10, 3, 1, 'Pilihan Ganda', 'Ketersediaan informasi tentang peluang mendapatkan pekerjaan setelah lulus kuliah'),
(59, 10, 3, 2, 'Pilihan Ganda', 'Tanggapan dan kecepatan menangani keluhan dari orang tua atau wali'),
(60, 11, 4, 1, 'Pilihan Ganda', 'Alumni Polinema memiliki etika yang baik dan sesuai di lingkungan kerja'),
(61, 11, 4, 2, 'Pilihan Ganda', 'Alumni Polinema memiliki jiwa kepemimpinan yang kuat dan mampu menerapkannya di lingkungan kerja'),
(62, 11, 4, 3, 'Pilihan Ganda', 'Alumni Polinema memiliki etos kerja yang kuat dan bermanfaat di lingkungan kerja'),
(63, 11, 4, 4, 'Pilihan Ganda', 'Alumni Polinema memiliki kemampuan berkomunikasi yang baik dan efektif di lingkungan pekerjaan'),
(64, 11, 4, 5, 'Pilihan Ganda', 'Alumni Polinema mampu melakukan kerjasama tim yang baik dalam melakukan pekerjaan'),
(65, 11, 4, 6, 'Pilihan Ganda', 'Alumni Polinema memiliki kemampuan teknis yang baik sesuai bidang ilmu dari kuliah di Polinema'),
(66, 11, 4, 7, 'Pilihan Ganda', 'Alumni Polinema menggunakan keahlian teknis sesuai bidang ilmu kuliah yang dipelajari di Polinema untuk menunjang pekerjaan'),
(67, 11, 4, 8, 'Pilihan Ganda', 'Alumni Polinema memiliki keterampilan berbahasa asing yang baik dalam menunjang kegiatan yang terkait pekerjaan'),
(68, 11, 4, 9, 'Pilihan Ganda', 'Alumni Polinema memiliki keterampilan dalam menggunakan perangkat teknologi informasi yang baik untuk menunjang pekerjaan'),
(69, 11, 4, 10, 'Pilihan Ganda', 'Alumni Polinema selalu melakukan pengembangan diri dan mampu menerapkannya untuk peningkatan kualitas pekerjaan mereka'),
(70, 12, 3, 1, 'Pilihan Ganda', 'Pengelola sumber daya manusia mempunyai keterampilan dalam menggunakan sumber daya alat yang tersedia'),
(71, 12, 3, 2, 'Pilihan Ganda', 'Pengelola sumber daya manusia dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(72, 12, 3, 3, 'Pilihan Ganda', 'Pengelola sumber daya manusia ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(73, 12, 3, 4, 'Pilihan Ganda', 'Pengelola sumber daya manusia dapat dipercaya dalam menjaga data pelanggan'),
(74, 12, 3, 5, 'Pilihan Ganda', 'Pengelola sumber daya manusia mudah ditemui'),
(75, 12, 3, 6, 'Pilihan Ganda', 'Pengelola sumber daya manusia memberikan informasi yang cepat dan akurat'),
(76, 12, 3, 7, 'Pilihan Ganda', 'Pengelola sumber daya manusia tanggap mendengarkan saran dan keluhan pelanggan'),
(77, 12, 3, 8, 'Pilihan Ganda', 'Pengelola sumber daya manusia jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(78, 12, 3, 9, 'Pilihan Ganda', 'Pengelola sumber daya manusia menggunakan bahasa yang mudah dipahami dan sopan dalam memberikan pelayanan sesuai dengan kebutuhan'),
(79, 12, 3, 10, 'Pilihan Ganda', 'Pengelola sumber daya melaksanakan pengelolaan dan layanan kepegawaian sesuai dengan sistem dan prosedur yang ditetapkan'),
(80, 13, 3, 1, 'Pilihan Ganda', 'Pengelola keuangan mempunyai keterampilan dalam menggunakan sumber daya alat yang tersedia'),
(81, 13, 3, 2, 'Pilihan Ganda', 'Pengelola keuangan dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(82, 13, 3, 3, 'Pilihan Ganda', 'Pengelola keuangan ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(83, 13, 3, 4, 'Pilihan Ganda', 'Pengelola keuangan dapat dipercaya dalam menjaga data pelanggan'),
(84, 13, 3, 5, 'Pilihan Ganda', 'Pengelola keuangan mudah ditemui'),
(85, 13, 3, 6, 'Pilihan Ganda', 'Pengelola keuangan memberikan informasi yang cepat dan akurat'),
(86, 13, 3, 7, 'Pilihan Ganda', 'Pengelola keuangan tanggap mendengarkan saran dan keluhan pelanggan'),
(87, 13, 3, 8, 'Pilihan Ganda', 'Pengelola keuangan jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(88, 13, 3, 9, 'Pilihan Ganda', 'Pengelola keuangan menggunakan bahasa yang mudah dipahami dan sopan dalam memberikan pelayanan sesuai dengan kebutuhan'),
(89, 13, 3, 10, 'Pilihan Ganda', 'Pengelola keuangan melaksanakan pengelolaan dan layanan keuangan sesuai dengan sistem dan prosedur yang ditetapkan'),
(90, 14, 2, 1, 'Pilihan Ganda', 'Pengelola sarana dan prasarana mempunyai keterampilan dalam menggunakan sumber daya alat yang tersedia'),
(91, 14, 2, 2, 'Pilihan Ganda', 'Pengelola sarana dan prasarana dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(92, 14, 2, 3, 'Pilihan Ganda', 'Pengelola sarana dan prasarana ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(93, 14, 2, 4, 'Pilihan Ganda', 'Pengelola sarana dan prasarana dapat dipercaya dalam menjaga data pelanggan'),
(94, 14, 2, 5, 'Pilihan Ganda', 'Pengelola sarana dan prasarana mudah ditemui'),
(95, 14, 2, 6, 'Pilihan Ganda', 'Pengelola sarana dan prasarana memberikan informasi yang cepat dan akurat'),
(96, 14, 2, 7, 'Pilihan Ganda', 'Pengelola sarana dan prasarana tanggap mendengarkan saran dan keluhan pelanggan'),
(97, 14, 2, 8, 'Pilihan Ganda', 'Pengelola sarana dan prasarana jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(98, 14, 2, 9, 'Pilihan Ganda', 'Sarana dan prasarana di Polinema sangat mendukung pelaksanaan aktivitas pembelajaran dan perkantoran'),
(99, 15, 3, 1, 'Pilihan Ganda', 'P3M Polinema menyediakan informasi tentang kegiatan penelitian'),
(100, 15, 3, 2, 'Pilihan Ganda', 'P3M Polinema menyediakan pelayanan untuk melakukan kegiatan penelitian'),
(101, 15, 3, 3, 'Pilihan Ganda', 'P3M Polinema menyediakan buku panduan dan renstra penelitian'),
(102, 15, 3, 4, 'Pilihan Ganda', 'P3M Polinema menyediakan Sistem Informasi untuk melaksanakan penelitian'),
(103, 15, 3, 5, 'Pilihan Ganda', 'P3M Polinema melakukan monitoring dan evaluasi terhadap pelaksanaan penelitian'),
(104, 15, 3, 6, 'Pilihan Ganda', 'P3M Polinema melakukan evaluasi terhadap hasil penelitian'),
(105, 15, 3, 7, 'Pilihan Ganda', 'P3M melakukan pengelolaan dana penelitian dan dengan mempertimbangkan jurusan-jurusan dan dosen-dosen yang ada di Polinema'),
(106, 15, 3, 8, 'Pilihan Ganda', 'P3M Polinema memberikan beberapa skema penelitian yang berbeda sebagai alternatif pilihan untuk para peneliti dengan anggaran yang disesuaikan setiap skema penelitian'),
(107, 15, 3, 9, 'Pilihan Ganda', 'P3M Polinema menyediakan kesempatan bimbingan penyusunan proposal penelitian dan laporan akhir'),
(108, 15, 3, 10, 'Pilihan Ganda', 'P3M Polinema memberikan pelatihan dan pendampingan penulisan proposal penelitian tingkat nasional'),
(109, 15, 3, 11, 'Pilihan Ganda', 'P3M Polinema menyelenggarakan konferensi nasional/internasional sebagai salah satu media diseminasi luaran penelitian'),
(110, 15, 3, 12, 'Pilihan Ganda', 'P3M Polinema mendorong partisipasi aktif para peneliti untuk mempublikasikan artikel di jurnal, pengajuan HKI (Hak Kekayaan Intelektual) melalui sentra KI'),
(111, 15, 3, 13, 'Pilihan Ganda', 'Polinema melalui Bidang 1 mendanai konferensi nasional/internasional bagi peneliti untuk mendiseminasi hasil penelitian'),
(112, 16, 3, 1, 'Pilihan Ganda', 'P3M Polinema menyediakan informasi tentang kegiatan PkM'),
(113, 16, 3, 2, 'Pilihan Ganda', 'P3M Polinema menyediakan pelayanan untuk melakukan kegiatan PkM'),
(114, 16, 3, 3, 'Pilihan Ganda', 'P3M Polinema menyediakan buku panduan dan renstra PkM'),
(115, 16, 3, 4, 'Pilihan Ganda', 'P3M Polinema menyediakan Sistem Informasi untuk melaksanakan PkM'),
(116, 16, 3, 5, 'Pilihan Ganda', 'P3M Polinema melakukan monitoring dan evaluasi terhadap pelaksanaan PkM'),
(117, 16, 3, 6, 'Pilihan Ganda', 'P3M Polinema melakukan evaluasi terhadap hasil pelaksanaan PkM'),
(118, 16, 3, 7, 'Pilihan Ganda', 'P3M Polinema melakukan pengelolaan dana PkM dengan mempertimbangkan jurusan-jurusan dan dosen-dosen yang ada di Polinema'),
(119, 16, 3, 8, 'Pilihan Ganda', 'P3M Polinema memberikan beberapa skema PkM yang berbeda sebagai alternatif pilihan untuk para pelaksana kegiatan dengan anggaran yang disesuaikan setiap skema PkM'),
(120, 16, 3, 9, 'Pilihan Ganda', 'P3M Polinema menyediakan kesempatan bimbingan penyusunan proposal PkM dan laporan akhir'),
(121, 16, 3, 10, 'Pilihan Ganda', 'P3M Polinema memberikan pelatihan dan pendampingan penulisan proposal PkM kompetisi tingkat nasional'),
(122, 16, 3, 11, 'Pilihan Ganda', 'P3M Polinema menyelenggarakan konferensi nasional/internasional sebagai salah satu media diseminasi luaran PkM'),
(123, 16, 3, 12, 'Pilihan Ganda', 'P3M Polinema mendorong partisipasi aktif para pelaksana PkM untuk mempublikasikan artikel di jurnal, pengajuan HKI (Hak Kekayaan Intelektual) melalui sentra KI'),
(124, 16, 3, 13, 'Pilihan Ganda', 'Polinema melalui Bidang 1 mendanai konferensi nasional/internasional bagi pelaksana kegiatan PkM untuk mendiseminasi hasil PkM'),
(125, 17, 3, 1, 'Pilihan Ganda', 'Pengelola sumber daya manusia mempunyai keterampilan dalam menggunakan sumber daya alat yang tersedia'),
(126, 17, 3, 2, 'Pilihan Ganda', 'Pengelola sumber daya manusia dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(127, 17, 3, 3, 'Pilihan Ganda', 'Pengelola sumber daya manusia ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(128, 17, 3, 4, 'Pilihan Ganda', 'Pengelola sumber daya manusia dapat dipercaya dalam menjaga data pelanggan'),
(129, 17, 3, 5, 'Pilihan Ganda', 'Pengelola sumber daya manusia mudah ditemui'),
(130, 17, 3, 6, 'Pilihan Ganda', 'Pengelola sumber daya manusia memberikan informasi yang cepat dan akurat'),
(131, 17, 3, 7, 'Pilihan Ganda', 'Pengelola sumber daya manusia tanggap mendengarkan saran dan keluhan pelanggan'),
(132, 17, 3, 8, 'Pilihan Ganda', 'Pengelola sumber daya manusia jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(133, 17, 3, 9, 'Pilihan Ganda', 'Pengelola sumber daya manusia menggunakan bahasa yang mudah dipahami dan sopan dalam memberikan pelayanan sesuai dengan kebutuhan'),
(134, 17, 3, 10, 'Pilihan Ganda', 'Pengelola sumber daya melaksanakan pengelolaan dan layanan kepegawaian sesuai dengan sistem dan prosedur yang ditetapkan'),
(135, 18, 2, 1, 'Pilihan Ganda', 'Pengelola keuangan mempunyai keterampilan dalam menggunakan sumber daya alat yang tersedia'),
(136, 18, 2, 2, 'Pilihan Ganda', 'Pengelola keuangan dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(137, 18, 2, 3, 'Pilihan Ganda', 'Pengelola keuangan ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(138, 18, 2, 4, 'Pilihan Ganda', 'Pengelola keuangan dapat dipercaya dalam menjaga data pelanggan'),
(139, 18, 2, 5, 'Pilihan Ganda', 'Pengelola keuangan mudah ditemui'),
(140, 18, 2, 6, 'Pilihan Ganda', 'Pengelola keuangan memberikan informasi yang cepat dan akurat'),
(141, 18, 2, 7, 'Pilihan Ganda', 'Pengelola keuangan tanggap mendengarkan saran dan keluhan pelanggan'),
(142, 18, 2, 8, 'Pilihan Ganda', 'Pengelola keuangan jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(143, 18, 2, 9, 'Pilihan Ganda', 'Pengelola keuangan menggunakan bahasa yang mudah dipahami dan sopan dalam memberikan pelayanan sesuai dengan kebutuhan'),
(144, 18, 2, 10, 'Pilihan Ganda', 'Pengelola keuangan melaksanakan pengelolaan dan layanan keuangan sesuai dengan sistem dan prosedur yang ditetapkan'),
(145, 19, 2, 1, 'Pilihan Ganda', 'Pengelola sarana dan prasarana mempunyai ketrampilan dalam menggunakan sumber daya alat yang tersedia'),
(146, 19, 2, 2, 'Pilihan Ganda', 'Pengelola sarana dan prasarana dibekali pengetahuan dalam menjalankan pelayanan yang diberikan'),
(147, 19, 2, 3, 'Pilihan Ganda', 'Pengelola sarana dan prasarana ramah dalam memberikan pelayanan sesuai dengan kebutuhan'),
(148, 19, 2, 4, 'Pilihan Ganda', 'Pengelola sarana dan prasarana dapat dipercaya dalam menjaga data pelanggan'),
(149, 19, 2, 5, 'Pilihan Ganda', 'Pengelola sarana dan prasarana mudah ditemui'),
(150, 19, 2, 6, 'Pilihan Ganda', 'Pengelola sarana dan prasarana memberikan informasi yang cepat dan akurat'),
(151, 19, 2, 7, 'Pilihan Ganda', 'Pengelola sarana dan prasarana tanggap mendengarkan saran dan keluhan pelanggan'),
(152, 19, 2, 8, 'Pilihan Ganda', 'Pengelola sarana dan prasarana jujur dan bertanggung jawab terhadap pelayanan yang diberikan'),
(153, 19, 2, 9, 'Pilihan Ganda', 'Sarana dan prasarana di Polinema sangat mendukung pelaksanaan aktivitas pembelajaran dan perkantoran'),
(154, 20, 2, 1, 'Pilihan Ganda', 'P3M Polinema menyediakan informasi tentang kegiatan penelitian'),
(155, 20, 2, 2, 'Pilihan Ganda', 'P3M Polinema menyediakan pelayanan untuk melakukan kegiatan penelitian'),
(156, 20, 2, 3, 'Pilihan Ganda', 'P3M Polinema menyediakan buku panduan dan renstra penelitian'),
(157, 20, 2, 4, 'Pilihan Ganda', 'P3M Polinema menyediakan Sistem Informasi untuk melaksanakan penelitian'),
(158, 20, 2, 5, 'Pilihan Ganda', 'P3M Polinema melakukan monitoring dan evaluasi terhadap pelaksanaan penelitian'),
(159, 20, 2, 6, 'Pilihan Ganda', 'P3M Polinema melakukan evaluasi terhadap hasil penelitian'),
(160, 20, 2, 7, 'Pilihan Ganda', 'P3M melakukan pengelolaan dana penelitian dan dengan mempertimbangkan jurusan-jurusan dan dosen-dosen yang ada di Polinema'),
(161, 20, 2, 8, 'Pilihan Ganda', 'P3M Polinema memberikan beberapa skema penelitian yang berbeda sebagai alternatif pilihan untuk para peneliti dengan anggaran yang disesuaikan setiap skema penelitian'),
(162, 20, 2, 9, 'Pilihan Ganda', 'P3M Polinema menyediakan kesempatan bimbingan penyusunan proposal penelitian dan laporan akhir'),
(163, 20, 2, 10, 'Pilihan Ganda', 'P3M Polinema memberikan pelatihan dan pendampingan penulisan proposal penelitian tingkat nasional'),
(164, 20, 2, 11, 'Pilihan Ganda', 'P3M Polinema menyelenggarakan konferensi nasional/internasional sebagai salah satu media diseminasi luaran penelitian'),
(165, 20, 2, 12, 'Pilihan Ganda', 'P3M Polinema mendorong partisipasi aktif para peneliti untuk mempublikasikan artikel di jurnal, pengajuan HKI (Hak Kekayaan Intelektual) melalui sentra KI'),
(166, 20, 2, 13, 'Pilihan Ganda', 'Polinema melalui Bidang 1 mendanai konferensi nasional/internasional bagi peneliti untuk mendiseminasi hasil penelitian'),
(167, 21, 2, 1, 'Pilihan Ganda', 'P3M Polinema menyediakan informasi tentang kegiatan PkM'),
(168, 21, 2, 2, 'Pilihan Ganda', 'P3M Polinema menyediakan pelayanan untuk melakukan kegiatan PkM'),
(169, 21, 2, 3, 'Pilihan Ganda', 'P3M Polinema menyediakan buku panduan dan renstra PkM'),
(170, 21, 2, 4, 'Pilihan Ganda', 'P3M Polinema menyediakan Sistem Informasi untuk melaksanakan PkM'),
(171, 21, 2, 5, 'Pilihan Ganda', 'P3M Polinema melakukan monitoring dan evaluasi terhadap pelaksanaan PkM'),
(172, 21, 2, 6, 'Pilihan Ganda', 'P3M Polinema melakukan evaluasi terhadap hasil pelaksanaan PkM'),
(173, 21, 2, 7, 'Pilihan Ganda', 'P3M Polinema melakukan pengelolaan dana PkM dengan mempertimbangkan jurusan-jurusan dan dosen-dosen yang ada di Polinema'),
(174, 21, 2, 8, 'Pilihan Ganda', 'P3M Polinema memberikan beberapa skema PkM yang berbeda sebagai alternatif pilihan untuk para pelaksana kegiatan dengan anggaran yang disesuaikan setiap skema PkM'),
(175, 21, 2, 9, 'Pilihan Ganda', 'P3M Polinema menyediakan kesempatan bimbingan penyusunan proposal PkM dan laporan akhir'),
(176, 21, 2, 10, 'Pilihan Ganda', 'P3M Polinema memberikan pelatihan dan pendampingan penulisan proposal PkM kompetisi tingkat nasional'),
(177, 21, 2, 11, 'Pilihan Ganda', 'P3M Polinema menyelenggarakan konferensi nasional/internasional sebagai salah satu media diseminasi luaran PkM'),
(178, 21, 2, 12, 'Pilihan Ganda', 'P3M Polinema mendorong partisipasi aktif para pelaksana PkM untuk mempublikasikan artikel di jurnal, pengajuan HKI (Hak Kekayaan Intelektual) melalui sentra KI'),
(179, 21, 2, 13, 'Pilihan Ganda', 'Polinema melalui Bidang 1 mendanai konferensi nasional/internasional bagi pelaksana kegiatan PkM untuk mendiseminasi hasil PkM'),
(180, 22, 2, 1, 'Pilihan Ganda', 'Polinema telah menyediakan Ikatan Keluarga Alumni (IKA) sebagai wadah persatuan alumni secara optimal'),
(181, 22, 2, 2, 'Pilihan Ganda', 'Kegiatan yang dilakukan antara Polinema dengan IKA Polinema telah membawa dampak nyata bagi alumni'),
(182, 22, 2, 3, 'Pilihan Ganda', 'Kegiatan yang dilakukan antara Polinema dengan IKA Polinema telah membawa dampak nyata bagi alumni baru (fresh graduate)'),
(183, 22, 2, 4, 'Pilihan Ganda', 'Kegiatan yang dilakukan antara Polinema dengan IKA Polinema telah membawa dampak nyata bagi mahasiswa yang masih aktif'),
(184, 22, 2, 5, 'Pilihan Ganda', 'Polinema melaksanakan tracer study secara optimal'),
(185, 22, 2, 6, 'Pilihan Ganda', 'Polinema melalui IKA Polinema berperan secara aktif mengajak kepada alumni untuk bergabung ke dalam IKA Polinema\r\n'),
(186, 22, 2, 7, 'Pilihan Ganda', 'Polinema melalui IKA Polinema berperan secara aktif mengajak kepada alumni fresh graduate untuk bergabung ke dalam IKA Polinema'),
(187, 22, 2, 8, 'Pilihan Ganda', 'Polinema melalui IKA Polinema menyediakan website sebagai media informasi alumni'),
(188, 22, 2, 9, 'Pilihan Ganda', 'Polinema memastikan kegiatan IKA Polinema sesuai rencana kerja'),
(189, 22, 2, 10, 'Pilihan Ganda', 'Fasilitas akademik yang diberikan Polinema mendukung alumni dalam berkinerja baik di tempat kerja'),
(190, 22, 2, 11, 'Pilihan Ganda', 'Fasilitas non-akademik yang diberikan Polinema mendukung alumni dalam berkinerja baik di tempat kerja'),
(191, 22, 2, 12, 'Pilihan Ganda', 'Pembelajaran yang diberikan Polinema menunjang alumni dalam mendapatkan pekerjaan baik sebagai pegawai maupun berwirausaha'),
(192, 22, 2, 13, 'Pilihan Ganda', 'Fasilitas layanan alumni berupa legalisir dilaksanakan dengan cara yang efisien dan tidak merepotkan alumni');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `username`, `nama`, `password`) VALUES
(1, 'admin', 'Administrator', '$2y$10$JhEMJ0NEuzKvnfkusO9kMOc8sh5aO4yMw98m2YjJtjW5Pd3QUMJkC');

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_alumni`
--

CREATE TABLE `t_jawaban_alumni` (
  `jawaban_alumni_id` int NOT NULL,
  `responden_alumni_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_dosen`
--

CREATE TABLE `t_jawaban_dosen` (
  `jawaban_dosen_id` int NOT NULL,
  `responden_dosen_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_industri`
--

CREATE TABLE `t_jawaban_industri` (
  `jawaban_industri_id` int NOT NULL,
  `responden_industri_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_mahasiswa`
--

CREATE TABLE `t_jawaban_mahasiswa` (
  `jawaban_mahasiswa_id` int NOT NULL,
  `responden_mahasiswa_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_ortu`
--

CREATE TABLE `t_jawaban_ortu` (
  `jawaban_ortu_id` int NOT NULL,
  `responden_ortu_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jawaban_tendik`
--

CREATE TABLE `t_jawaban_tendik` (
  `jawaban_tendik_id` int NOT NULL,
  `responden_tendik_id` int DEFAULT NULL,
  `soal_id` int DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_alumni`
--

CREATE TABLE `t_responden_alumni` (
  `responden_alumni_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nim` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_prodi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_lulus` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_dosen`
--

CREATE TABLE `t_responden_dosen` (
  `responden_dosen_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_nip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_industri`
--

CREATE TABLE `t_responden_industri` (
  `responden_industri_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_jabatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_perusahaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_kota` varbinary(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_mahasiswa`
--

CREATE TABLE `t_responden_mahasiswa` (
  `responden_mahasiswa_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_prodi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_nim` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_masuk` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_ortu`
--

CREATE TABLE `t_responden_ortu` (
  `responden_ortu_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_umur` tinyint DEFAULT NULL,
  `responden_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_pendidikan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_pekerjaan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_penghasilan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mahasiswa_nim` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mahasiswa_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mahasiswa_prodi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_responden_tendik`
--

CREATE TABLE `t_responden_tendik` (
  `responden_tendik_id` int NOT NULL,
  `survey_id` int DEFAULT NULL,
  `responden_tanggal` datetime DEFAULT NULL,
  `responden_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_nopeg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responden_unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `m_survey`
--
ALTER TABLE `m_survey`
  ADD PRIMARY KEY (`survey_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `m_survey_soal`
--
ALTER TABLE `m_survey_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `t_jawaban_alumni`
--
ALTER TABLE `t_jawaban_alumni`
  ADD PRIMARY KEY (`jawaban_alumni_id`),
  ADD KEY `responden_alumni_id` (`responden_alumni_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_jawaban_dosen`
--
ALTER TABLE `t_jawaban_dosen`
  ADD PRIMARY KEY (`jawaban_dosen_id`),
  ADD KEY `responden_dosen_id` (`responden_dosen_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_jawaban_industri`
--
ALTER TABLE `t_jawaban_industri`
  ADD PRIMARY KEY (`jawaban_industri_id`),
  ADD KEY `responden_industri_id` (`responden_industri_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_jawaban_mahasiswa`
--
ALTER TABLE `t_jawaban_mahasiswa`
  ADD PRIMARY KEY (`jawaban_mahasiswa_id`),
  ADD KEY `responden_mahasiswa_id` (`responden_mahasiswa_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_jawaban_ortu`
--
ALTER TABLE `t_jawaban_ortu`
  ADD PRIMARY KEY (`jawaban_ortu_id`),
  ADD KEY `responden_ortu_id` (`responden_ortu_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_jawaban_tendik`
--
ALTER TABLE `t_jawaban_tendik`
  ADD PRIMARY KEY (`jawaban_tendik_id`),
  ADD KEY `responden_tendik_id` (`responden_tendik_id`),
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `t_responden_alumni`
--
ALTER TABLE `t_responden_alumni`
  ADD PRIMARY KEY (`responden_alumni_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `t_responden_dosen`
--
ALTER TABLE `t_responden_dosen`
  ADD PRIMARY KEY (`responden_dosen_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `t_responden_industri`
--
ALTER TABLE `t_responden_industri`
  ADD PRIMARY KEY (`responden_industri_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `t_responden_mahasiswa`
--
ALTER TABLE `t_responden_mahasiswa`
  ADD PRIMARY KEY (`responden_mahasiswa_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `t_responden_ortu`
--
ALTER TABLE `t_responden_ortu`
  ADD PRIMARY KEY (`responden_ortu_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `t_responden_tendik`
--
ALTER TABLE `t_responden_tendik`
  ADD PRIMARY KEY (`responden_tendik_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_survey`
--
ALTER TABLE `m_survey`
  MODIFY `survey_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_survey_soal`
--
ALTER TABLE `m_survey_soal`
  MODIFY `soal_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_jawaban_alumni`
--
ALTER TABLE `t_jawaban_alumni`
  MODIFY `jawaban_alumni_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jawaban_dosen`
--
ALTER TABLE `t_jawaban_dosen`
  MODIFY `jawaban_dosen_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jawaban_industri`
--
ALTER TABLE `t_jawaban_industri`
  MODIFY `jawaban_industri_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jawaban_mahasiswa`
--
ALTER TABLE `t_jawaban_mahasiswa`
  MODIFY `jawaban_mahasiswa_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jawaban_ortu`
--
ALTER TABLE `t_jawaban_ortu`
  MODIFY `jawaban_ortu_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jawaban_tendik`
--
ALTER TABLE `t_jawaban_tendik`
  MODIFY `jawaban_tendik_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_alumni`
--
ALTER TABLE `t_responden_alumni`
  MODIFY `responden_alumni_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_dosen`
--
ALTER TABLE `t_responden_dosen`
  MODIFY `responden_dosen_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_industri`
--
ALTER TABLE `t_responden_industri`
  MODIFY `responden_industri_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_mahasiswa`
--
ALTER TABLE `t_responden_mahasiswa`
  MODIFY `responden_mahasiswa_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_ortu`
--
ALTER TABLE `t_responden_ortu`
  MODIFY `responden_ortu_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_responden_tendik`
--
ALTER TABLE `t_responden_tendik`
  MODIFY `responden_tendik_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_survey`
--
ALTER TABLE `m_survey`
  ADD CONSTRAINT `m_survey_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `m_survey_soal`
--
ALTER TABLE `m_survey_soal`
  ADD CONSTRAINT `m_survey_soal_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`),
  ADD CONSTRAINT `m_survey_soal_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `t_jawaban_alumni`
--
ALTER TABLE `t_jawaban_alumni`
  ADD CONSTRAINT `t_jawaban_alumni_ibfk_1` FOREIGN KEY (`responden_alumni_id`) REFERENCES `t_responden_alumni` (`responden_alumni_id`),
  ADD CONSTRAINT `t_jawaban_alumni_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_jawaban_dosen`
--
ALTER TABLE `t_jawaban_dosen`
  ADD CONSTRAINT `t_jawaban_dosen_ibfk_1` FOREIGN KEY (`responden_dosen_id`) REFERENCES `t_responden_dosen` (`responden_dosen_id`),
  ADD CONSTRAINT `t_jawaban_dosen_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_jawaban_industri`
--
ALTER TABLE `t_jawaban_industri`
  ADD CONSTRAINT `t_jawaban_industri_ibfk_1` FOREIGN KEY (`responden_industri_id`) REFERENCES `t_responden_industri` (`responden_industri_id`),
  ADD CONSTRAINT `t_jawaban_industri_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_jawaban_mahasiswa`
--
ALTER TABLE `t_jawaban_mahasiswa`
  ADD CONSTRAINT `t_jawaban_mahasiswa_ibfk_1` FOREIGN KEY (`responden_mahasiswa_id`) REFERENCES `t_responden_mahasiswa` (`responden_mahasiswa_id`),
  ADD CONSTRAINT `t_jawaban_mahasiswa_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_jawaban_ortu`
--
ALTER TABLE `t_jawaban_ortu`
  ADD CONSTRAINT `t_jawaban_ortu_ibfk_1` FOREIGN KEY (`responden_ortu_id`) REFERENCES `t_responden_ortu` (`responden_ortu_id`),
  ADD CONSTRAINT `t_jawaban_ortu_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_jawaban_tendik`
--
ALTER TABLE `t_jawaban_tendik`
  ADD CONSTRAINT `t_jawaban_tendik_ibfk_1` FOREIGN KEY (`responden_tendik_id`) REFERENCES `t_responden_tendik` (`responden_tendik_id`),
  ADD CONSTRAINT `t_jawaban_tendik_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `m_survey_soal` (`soal_id`);

--
-- Constraints for table `t_responden_alumni`
--
ALTER TABLE `t_responden_alumni`
  ADD CONSTRAINT `t_responden_alumni_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);

--
-- Constraints for table `t_responden_dosen`
--
ALTER TABLE `t_responden_dosen`
  ADD CONSTRAINT `t_responden_dosen_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);

--
-- Constraints for table `t_responden_industri`
--
ALTER TABLE `t_responden_industri`
  ADD CONSTRAINT `t_responden_industri_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);

--
-- Constraints for table `t_responden_mahasiswa`
--
ALTER TABLE `t_responden_mahasiswa`
  ADD CONSTRAINT `t_responden_mahasiswa_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);

--
-- Constraints for table `t_responden_ortu`
--
ALTER TABLE `t_responden_ortu`
  ADD CONSTRAINT `t_responden_ortu_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);

--
-- Constraints for table `t_responden_tendik`
--
ALTER TABLE `t_responden_tendik`
  ADD CONSTRAINT `t_responden_tendik_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `m_survey` (`survey_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
