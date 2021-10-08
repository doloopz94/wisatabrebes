-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 02:04 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `peta_wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'rifki', 'rifki.dk@gmail.com', '$2y$10$ps3ZIFIRstpH9.8lxHQiJeZBCA9wHQmzpqb8Uws130na0B3hW4lba', '1'),
(2, 'admin', 'admin@admin.com', '$2y$10$41vcErMHugcOXAkPW3BmaeeFZJtpFVc0kW9/4DlnPczT1apN1aqHC', '0');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`artikel_id` int(100) NOT NULL,
  `artikel_kat` int(11) NOT NULL,
  `artikel_judul` varchar(255) NOT NULL,
  `artikel_lat` varchar(100) NOT NULL,
  `artikel_long` varchar(100) NOT NULL,
  `artikel_isi` text NOT NULL,
  `artikel_gambar` text NOT NULL,
  `artikel_alamat` varchar(50) NOT NULL,
  `artikel_buka` varchar(50) NOT NULL,
  `artikel_tiket` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_kat`, `artikel_judul`, `artikel_lat`, `artikel_long`, `artikel_isi`, `artikel_gambar`, `artikel_alamat`, `artikel_buka`, `artikel_tiket`) VALUES
(167, 41, 'Pantai Randusanga Indah', '-6.8264059', '109.0791427', '&emsp; Saat mendengar nama pantai ini, apa yang muncul di pikiran Anda pertama kali? Walisongo? Atau malah pohon kapuk / randu? Penulis pribadi langsung teringat dengan Walisongo yang telah berjasa menyebarkan ajaran agama Islam di berbagai penjuru Pulau Jawa.</br>\r\n&emsp; Pantai Randusanga merupakan salah satu pantai paling eksotis di Brebes. Pantai ini menawarkan daya tarik utama berupa pemandangan sunset di sore hari yang luar biasa eksotis. Konon, karena indahnya panorama sunset di pantai ini, pantai ini sering dijadikan sebagai tempat nongkrong di Brebes oleh kalangan anak muda sekitar.</br>\r\n&emsp; Untuk menarik minat wisatawan, pengelola pantai ini telah menyediakan berbagai macam fasilitas yang cukup menarik. Sebut saja arena balap motor, resoran sea food, area perkemahan, dan warung kuliner khas brebes. Seluruh fasilitas tersebut sengaja disediakan oleh pengelola pantai ini untuk menarik minat wisatawan, terutama yang berasal dari luar daerah.</br>\r\n&emsp; Selain dilengkapi dengan fasilitas yang lengkap, Pantai Randusanga juga memiliki areal pantai pasir putih yang luas dengan ombak yang cukup tenang. Karena ombaknya tenang, pantai ini aman untuk dijadikan sebagai spot untuk berenang, bermain air, dan bermain pasir di pinggiran pantai. Di pantai ini Anda juga bisa berkunjung ke lokasi budidaya rumput laut dan ikan bandeng.', '1619930457_randu.jpg', 'Randusanga Kulon, Kec. Brebes, Kab. Brebes', '24 Jam', 'Rp 4.000,-'),
(168, 41, 'Agrowisata Kebun Teh Kali Gua', '-7.2840251', '109.1092077', '&emsp;  Agrowisata Kebun Teh Kali Gua merupakan kawasan <strong>Puncak</strong> nya Brebes. Pasalnya, agrowisata ini memiliki pemandangan alam yang sangat mirip dengan pemandangan alam yang ditawarkan oleh kawasan Puncak di Bogor.</br>\r\n&emsp; Di sini, Anda dapat menikmati sejuknya udara khas dataran tinggi sembari memanjakan mata dengan melihat hijaunya alam sekitar.<br>\r\n&emsp; Jika mau, tidak jauh dari kawasan agrowisata ini Anda bisa berkunjung ke beberapa objek wisata lain, seperti Mata Air Teluk Bening, Goa Jepang, dan Telaga Ranjeng.</br>\r\n&emsp; Dalam rangka memberikan pelayanan terbaik bagi para pengunjung, pengelola agrowisata ini telah menyediakan fasilitas wisata yang lengkap. Dari mulai cafe dan warung makan, villa dan penginapan, areal khusus untuk aktivitas perkemahan, mushola, sampai dengan lapangan olahraga dan area khusus untuk outbond, semuanya telah tersedia di sini.', '1619932739_Kebun-Teh-Terkemuka-di-Brebes.jpg', 'Desa Pandasari, Kec. Paguyangan, Kab. Brebes', '24 Jam', 'Rp 5.000,-'),
(169, 42, 'Agrowisata Besaran Jatibarang', '-6.9670716', '109.0593414', '&emsp;  Agrowisata Besaran berlokasi di Daerah Jatibarang Lor, Jatibarang, Kab. Brebes, Jawa Tengah. Agrowisata ini menawarkan daya tarik utama berupa aneka objek wisata air seperti kolam renang, terapi ikan, dan perahu hotel.Selain itu, ada juga wahana kereta wisata dan wahana flying fox yang tidak kalah menarik untuk dicoba.</br>\r\n&emsp;  Di bagian tengah agrowisata ini, ada sebuah bangunan yang didirikan dengan arsitektur klasik. Bangunan tersebut sangat pas untuk dijadikan sebagai latar belakang untuk berfoto.</br>\r\n&emsp;  Untuk memudahkan wisatawan yang datang, pengelola agrowisata ini telah menyediakan fasilitas wisata yang super lengkap. Dari mulai lahan parkir, tempat berteduh, toilet, sampai dengan mushola dan tempat makan, semuanya sudah tersedia.</br>', '1620377449_taman besaran.png', 'Jatibarang Lor, Kec. Jatibarang, Kab. Brebes', '08.00 - 14.00 WIB', 'Rp 3.000,-'),
(170, 44, 'Candi Pangkuan', '-7.2556541', '109.0589973', '&emsp; Tempat wisata di Brebes yang selanjutnya adalah Candi Pangkuan. Candi Pangkuan berlokasi di Desa Cilibur, Kec. Paguyangan, Kab. Brebes. Candi ini ditemukan pertama kali oleh masyarakat sekitar di kisaran Tahun 1965.</br>\r\nLokasi candi ini ada di tengah â€“ tengah kawasan hutan yang dipenuhi dengan pepohonan besar. Di sekitar lokasi candi ini ada banyak kawanan monyet yang berkeliaran dengan bebas.</br>\r\nSaat berkunjung ke candi ini Anda dapat berfoto dengan latar belakang candi sekaligus berinteraksi dengan kawanan monyet yang ada di sini.</br>\r\nJika mau, Anda dapat memberi makan kawanan monyet tersebut dengan kacang atau pisang (harus membawa sendiri).', '1620438077_Candi-Pangkuan-Brebes.jpg', 'Karanggandul, Cilibur, Kec. Paguyangan, Kab. Brebe', '08.00 - 17.00 WIB', 'Gratis'),
(171, 44, 'Alun-alun Brebes', '-6.8706702', '109.0346628', '&emsp;  Alun â€“ Alun Brebes merupakan salah satu tempat wisata populer di Kota Brebes yang tidak pernah sepi pengunjung. Setiap harinya, tempat ini selalu ramai dikunjungi oleh wisatawan, terutama wisatawan lokal untuk sekedar nongkrong dan berkumpul bersama teman dan kerabat. Di sekitar alun â€“ alun ada banyak pedagang kaki lima yang menjajakan makanan khas Kab. Brebes. </br>\r\n&emsp;  Selain itu, ada juga tugu kebanggaan Kab Brebes yang bisa dimanfaatkan sebagai latar belakang untuk berfoto. Alun â€“ Alun Brebes terletak tepat di pusat Kab. Brebes. Berstatus sebagai fasilitas umum, tempat ini dapat dikunjungi kapan saja tanpa perlu membayar biaya tiket masuk sama sekali.', '1620438259_alun2.jpg', 'Kauman, Brebes, Kec. Brebes, Kab. Brebes', '24 Jam', 'Gratis'),
(172, 41, 'Air Terjun Ranto Canyon', '-7.1425784', '108.7323138', '&emsp;  Air Terjun Ranto Canyon berlokasi di lereng pegunungan sebelah selatan Brebes. Air terjun ini menawarkan daya tarik utama berupa panorama alam berbentuk air terjun serta kawasan pemandian yang memacu adrenalin. Untuk bisa sampai ke lokasi air terjun ini, Anda harus berjalan kali / trekking melintasi alam terbuka sejauh kurang lebih 750 â€“ an meter.</br>\r\n&emsp;  Agar tidak tersesat, Anda disarankan untuk menggunakan jasa pemandu wisata yang tersedia. Biayanya tergolong cukup murah, yaitu hanya Rp. 30.000 per orang dan sudah termasuk perlengkapan safety berupa helm dan pelampung. Nantinya, begitu sampai lokasi, Anda akan dipandu untuk menyusuri sungai. Jika mau, Anda juga bisa mencoba beberapa aktivitas wisata lain yang lebih menantang dan lebih memacu adrenalin seperti snorkeling di areal bawah air terjun serta cliff climbing.', '1620438443_Ranto-Canyon-Brebes-Jawa-Tengah.jpg', 'Windusari, Kec. Salem, Kab. Brebes', '07.00 - 18.00 WIB', 'Rp 30.000,-'),
(173, 41, 'Curug Putri Asri', '-7.2026868', '109.0906171', '&emsp;  Objek wisata di Brebes yang selanjutnya adalah Curug Putri. Curug Putri terletak di Kab. Brebes, tepatnya di Desa Mandala, Kec. Sirampong. Curug ini memiliki ketinggian sekitar 35 meter dengan aliran air yang cukup deras. Secara keseluruhan, kondisi lingkungan di sekitar curug ini masih tergolong cukup asri, bersih, dan nyaman untuk dikunjungi.\r\n&emsp;  Aliran air yang mengalir di air terjun ini masih cukup jernih dan layak untuk digunakan untuk sekedar mandi dan bermain air. Lokasi air terjun ini masih agak susah untuk diakses. Untuk bisa sampai, pengunjung harus berjalan kaki melalui medan perjalanan yang cukup menantang. Melelahkan memang, namun begitu sampai ke lokasi air terjun, rasa lelah Anda pasti akan langsung terbayar lunas dengan keindahannya yang sangat luar biasa.', '1620438676_Curug Putri Brebes.jpg', 'Padanama, Mendala, Kec. Sirampog, Kab. Brebes', '24 Jam', 'Gratis'),
(174, 42, 'Desa Wisata Ciseureun', '-7.3155752', '108.8800378', '&emsp;  Khusus untuk Anda yang ingin mengenal sekaligus mempelajari tradisi khas masyarakat Brebes, Anda dapat berkunjung ke Desa Wisata Cisereun yang berlokasi di Lereng Gunung Kumbang, Kec. Ketanggung, Kab. Brebes. </br>\r\n&emsp;  Di sini, Anda dapat melihat dan merasakan secara langsung beraneka ragam tradisi masyarakat yang sangat unik. Salah satu tradisi tersebut adalah upacara adat <strong>Ngasa</strong> yang dilakukan secara rutin setiap hari selasa kliwon. Upacara ini dilangsungkan oleh masyarakat sekitar sebagai bentuk rasa syukur mereka kepada Tuhan atas seluruh berkah yang telah mereka dapatkan.</br>\r\n&emsp;  Selain upacara Ngasa, di desa ini Anda juga bisa melihat hal â€“ hal unik lain seperti di areal atap dan lantai bangunan. Di desa ini ada tradisi yang melarang penggunaan atap dari genteng dan tembok serta lantai dari semen dan keramik. Karena larangan tersebut, hampir seluruh rumah di desa ini didirikan dengan menggunakan atap seng, dinding kayu, dan lantai kayu.\r\n', '1620438910_Desa-Wisata-Cisereun-Brebes.jpg', 'Gunung Kumbang, Kec. Ketanggungan, Kab. Brebes', '24 Jam', 'Gratis'),
(175, 41, 'Curug Panyusuhan', '-7.1906742', '108.8572681', '&emsp;  Curug Panyusuhan berlokasi di Desa Tembongraja dan Windusakti. Curug ini berbeda dengan curug â€“ curug yang telah kita bahas sebelumnya. Jika curug â€“ curug yang telah kita bahas sebelumnya hanya memiliki satu tingkat air terjun, curug ini memiliki 7 tingkat air terjun sekaligus.</br>\r\n&emsp;  Selain menawarkan daya tarik utama berupa curug bertingkat, objek wisata ini juga turut menawarkan daya tarik lain berupa pengalaman trekking yang cukup menantang. Pasalnya, untuk bisa sampai ke lokasi curug ini, pengunjung harus berjalan kaki selama kurang lebih 1,5 jam melalui medan perjalanan yang cukup terjal di tengah hutan.</br>\r\n', '1620439059_panyusuhan.png', 'Citimbang, Salem, Kabupaten Brebes', '08.00 - 17.00', 'Gratis'),
(176, 41, 'Pemandian air panas Tirta Husada', '-7.3217482', '109.0072517', '&emsp;  Di Kecamatan Bantarkawung, Kab. Brebes, tepatnya di Desa Kedungoleng, ada sebuah objek wisata pemandian air panas bernama Pemandian Air Panas Tirta Husada. Pemandian air panas ini terletak di tengah hutan pinus yang asri. Sama seperti kebanyakan pemandian air panas lainnya, pemandian air panas ini kabarnya juga bisa menyembuhkan berbagai macam penyakit kulit. </br>\r\n&emsp;  Untuk menghadirkan pelayanan yang memuaskan, pengelola pemandian air panas ini telah mendirikan berbagai macam fasilitas wisata, seperti kolam air panas khusus untuk anak â€“ anak, kamar mandi VIP, ruang karaoke keluarga, warung makan, dll. Di hari normal, pemandian air panas ini beroperasi setiap hari dari pagi hingga malam. Untuk bisa menikmati fasilitas di pemandian air panas ini pengunjung harus membayar biaya tiket masuk sebesar Rp. 6.000 per orang.\r\n', '1620439577_tirta1.jpg', 'Kedungoleng, Kec. Paguyangan, Kab. Brebes', '06.30 - 19.00 WIB', 'Rp 6.000,-'),
(177, 40, 'Rujak Belut Mbak Titin', '-6.9598184', '108.7958567', '&emsp;  Seperti namanya, bahan utama rujak ini adalah Belut. Varian lain dari olahan belut dengan rasa yang nikmat. Meskipun tergolong unik dan berbeda dari rujak pada umumnya, tapi menu ini menjadi idaman beberapa wisatawan saat bertandang ke Brebes.</br>\r\n\r\n&emsp;  Bahan untuk membuat rujak meliputi cabai rawit, gula jawa, kecap, asam jawa, kacang tanah, jahe, garam dan terasi. Semua bahan diulek supaya cita rasanya semakin terasa. Proses pengulekan tidak harus sampai halus supaya ada sensasi seru saat disantap.</br>\r\n\r\n&emsp;  Bahan utama belut dari hasil tangkapan di sawah dicuci hingga bersih dan digoreng sampai matang. Belut yang sudah matang dipotong sebesar jari kelingking kemudian dilumuri bumbu rujak yang sudah dihaluskan tadi. Dijamin rasanya sangat enak dan menggiurkan lidah. Belut sendiri memiliki kandungan protein tinggi dan bermanfaat untuk meningkatkan stamina.', '1620439882_rujak-belut.jpg', 'Dukuhtengah, Dukuh Tengah, Kec. Ketanggungan, Kabu', '09.00  - 18.00 WIB', 'Gratis'),
(178, 40, 'Kupat Blengong', '-6.8645861', '109.0457937', '&emsp;  Blengong atau dikenal masyarakat sekitar dengan sebuah tiktok, adalah pesilangan antara bebek dengan mentok atau entok. Dagingnya tentu mirip dengan bebek, hanya saja lebih tidak amis. Teksturnya cenderung lebih liat dari daging ayam, namun rasanya gurih. Selain itu, daging itik ini juga rendah kolesterol. Sate Blengong disajikan dengan ukuran besar sehingga setiap tusukmya terdapat tujuh potong daging. Itulah yang membedakan Sate Blengong dengan sate lainnya. </br.>\r\n&emsp;  Berbeda dengan tusuk sate kebanyakan yang menggunakan tusuk yang terbuat dari lidi. Tusuk Sate Blengong berasal dari batang bambu yang ukurannya lebih besar dan panjang. Dengan cita rasa yang khas, Sate Blenggong ini tetap dibakar diatas bara api seperti membakar sate biasa. Namun sebelumnya dilakukan perebusan daging Blengong terlebih dahulu agar lebih empuk dan bumbunya lebih meresap. Biasanya Sate Blengong dihidangkan bersama-sama dengan Kupat Glabet, sejenis kupat yang banyak ditemukan di sepanjang kota Brebes, Tegal, dan Pemalang.</br>\r\n\r\n&emsp;  Kombinasi Sate Blengong dan Kupat Glabet dengan kuah yang tidak kental membuat cita rasa yang cukup unik. Kuah Sate Blengong berasal dari santan dan beberapa bumbu dapur mirip seperti kuah opor, berbeda dengan Sate Madura yang menggunakan kuah bumbu kacang. Rasa kuahnya pedas dan ada sensasi hangat pada tubuh saat mencicipinya. Pedasnya tidak terlalu kuat sehingga relatif aman dikonsumsi Anda yang tak terlalu suka pedas. Dengan taburan kerupuk dan bawang goreng menambah nikmat perpaduan makanan ini. Satu porsi makanan lezat ini dihargai mulai Rp 12 ribu-Rp 15 ribu saja.', '1620440303_sate-blengong-khas-brebes.jpg', 'Pasarbatang, Kec. Brebes, Kab. Brebes', '15.00 - 20.00 WIB', 'Gratis'),
(179, 40, 'Central Telur Asin', '-6.8705615', '109.0554763', '&emsp;  Wisata kuliner Brebes paling populer adalah telur asin. Kata orang, tidak afdol jika ke Brebes tidak menyantap kuliner ini. Bahkan hampir semua wisatawan membawa pulang sebagai oleh-oleh bagi sanak keluarga dan rekan kerja.</br>\r\n\r\n&emsp;  Rasa asin di bagian putih telur dan rasa nikmat bagian kuning telur sangat cocok dijadikan teman makan nasi panas dan sayur-mayur. Saat ini olahan telur asin bukan hanya ditawarkan dalam rasa original tetapi ada juga telur asin bakar dan telur asin asap.</br>\r\n\r\n&emsp;  Harga per paket telur asin dibandrol cukup terjangkau. Meskipun tidak mahal, tapi kualitasnya tidak bisa diragukan lagi, karena Brebes terkenal penghasil telur asin terbaik di Indonesia.', '1620440546_telor asin.png', 'Limbangan Wetan, Kec. Brebes, Kab. Brebes', '07.30 - 00.00 WIB', 'Gratis'),
(180, 42, 'Sedekah Laut Brebes', '-6.863078', '109.033332', 'Sebagai cara mengungkapkan rasa syukur dan upaya meminta perlindungan pada Sang Pencipta, masyarakat nelayan Desa Pesantunan Kecamatan Wanasari, Kabupaten Brebes, menggelar sedekah laut. Rangkaian sedekah laut merupakan acara puncak kegiatan tradisi dan budaya nelayan pantura Brebes. Sebelumnya telah digelar rangkaian kegiatan seni lainnya seperti pergelaran wayang golek dan lomba menghias perahu nelayan.</br>\r\n\r\nPergelaran wayang golek mengambil lakon Jaka Muara dengan dalang Ki Aryo Damar dari Brebes merupakan hasil kerja sama dengan Dinas Pariwisata, Kebudayaan, Pemuda dan Olah Raga Kabupaten Brebes.</br>\r\n\r\nâ€œProsesi sedekah laut merupakan bagian dari tradisi yang mengakar di kalangan masyarakat nelayan pantura khususnya Pesantunan,â€ kata Ketua Panitia Sedekahan Laut Pesantunan, Carsim.\r\nCarsim mengatakan acara sedekah laut dimulai dengan pertunjukan tarian selamat datang Mapag Ndara kolaborasi Sanggar Seni Kalyana dan Komunitas Seni Cipluk Pesantunan.</br>\r\n\r\nBupati Brebes, Idza Priyanti menyambut baik kegiatan tradisi budaya sedekah laut sebagai bagian dari bentuk keanekaragaman budaya di Kabupaten Brebes. Pihaknya mengakui di tengah kehidupan masyarakat nelayan yang terimpit persoalan ekonomi, acara sedekah laut tetap dilaksanakan.\r\n"Ini menunjukkan kemandirian dan kepedulian masyarakat nelayan dalam menghidupkan tradisi budaya," kata Idza.</br>\r\nAcara sedekah laut dilepas dengan penyerahan ancak dari bupati ke tokoh nelayan setempat untuk dilarung ke pesisir laut. Proses pelarungan diikuti puluhan kapal nelayan dari sungai Pemali menuju pesisir laut Jawa yang ditempuh selama dua jam.\r\n\r\nDi pesisir laut Jawa, ancak yang berupa simbol perahu akan diperebutkan para nelayan. Acara pelarungan berlangsung ramai dengan diiringi grup rebana setempat.', '1620441110_nelayan.png', 'Pesantunan, Kec. Wanasari, Kab. Brebes', 'Setahun sekali', 'Gratis'),
(181, 43, 'Makam Syech Junaidi', '-6.8453252', '109.0866885', 'Syekh Junaedi Al Baghdadi, sosok ini diperkirakan hidup satu masa dengan Walisongo. Beliau datang setelah Randusanga ditinggalkan Walisongo ke Cirebon, Jawa  Barat. Untuk Randusanga sendiri berasal dari kata randu atau randa yang berarti bekas dan sanga berarti sembilan. Jadi Randusanga berarti tempat bekas musyawarah Walisanga. Penemuan keberadaan makam awalnya dari rasa penasaran masyarakat yang melihat banyaknya burung yang jatuh saat terbang di atas areal makam di tengah rawa-rawa dulunya. Setelah dilakukan pencarian penyebabnya, masyarakat mendapati gundukan tanah yang ternyata adalah sebuah makam sehingga terus dirawat hingga sekarang. Makam yang terletak di wilayah pesisir utara Kabupaten Brebes ini juga menyajikan potensi sumber daya laut berupa perikanan tambak bandeng, rumput laut, udang dan juga kerajinan terasi. Pun ditambah dengan Obyek Wisata Pantai Randusanga Indah. Para peziarah akan melewati pematang tambak penduduk untuk mengakses ke kompleks makam yang berada di tengah-tengah areal tambak. Ini menunjukkan bahwa proses syiar agama islam dari Arab ke Pulau Jawa dimulai dari wilayah pesisir, termasuk di pesisir Laut Jawa ini.', '1620441344_img_20200601_wa0138.jpg', 'Randusanga Wetan, Kec. Brebes, Kab. Brebes', '24 Jam', 'Rp 3.000,-');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`kat_id` int(100) NOT NULL,
  `kat_judul` text NOT NULL,
  `kat_ikon` text NOT NULL,
  `kat_isi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kat_id`, `kat_judul`, `kat_ikon`, `kat_isi`) VALUES
(40, 'Wisata Kuliner', '1619945980_2021-05-02_155926.png', 'Wisata kuliner adalah kunjungan yang dilakukan wisatawan ke tempat makan yang menyediakan kuliner lokal.'),
(41, 'Wisata Alam', '1620010635_randu.jpg', 'Wisata alam adalah kegiatan perjalanan yang dilakukan untuk menikmati keunikan dan keindahan alam.'),
(42, 'Wisata Budaya', '1619944771_052003400_1490174286-jalawastu4.jpg', 'Wisata budaya adalah salah satu jenis kegiatan pariwisata yang menggunakan kebudayaan sebagai objeknya.'),
(43, 'Wisata Religi', '1619946597_2021-05-02_160943.png', 'Wisata religi adalah ziarah atau kunjungan seseorang maupun kelompok ke situs yang dianggap penting terkait dengan penyebaran suatu agama.'),
(44, 'Wisata Sejarah', '1619944540_fb-img-1597625113730-5f39d9fcd541df3ac333ecb2.jpg', 'Wisata Sejarah adalah perjalanan untuk merasakan tempat dan aktivitas yang dengan asli menggambarkan sejarah dan orang- orang di masa lalu.');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`set_id` int(100) NOT NULL,
  `set_zoom` varchar(50) NOT NULL,
  `set_lat` varchar(50) NOT NULL,
  `set_long` varchar(50) NOT NULL,
  `set_api` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`set_id`, `set_zoom`, `set_lat`, `set_long`, `set_api`) VALUES
(1, '10', '-7.040174', '108.6540244', '&callback=initMap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`artikel_id`), ADD KEY `fk_artikel_kat` (`artikel_kat`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`kat_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`set_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `artikel_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `kat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `set_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`artikel_kat`) REFERENCES `kategori` (`kat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
