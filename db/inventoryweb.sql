-- Adminer 4.8.1 MySQL 5.7.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(60) DEFAULT NULL,
  `stok` varchar(4) DEFAULT NULL,
  `id_satuan` int(20) DEFAULT NULL,
  `id_jenis` int(20) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `id_satuan`, `id_jenis`, `foto`) VALUES
('BRG-0002',	'Aqua',	'0',	1,	1,	'aqua.jpg');

DROP TABLE IF EXISTS `barang_keluar`;
CREATE TABLE `barang_keluar` (
  `id_barang_keluar` varchar(30) NOT NULL,
  `id_barang` varchar(30) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `jumlah_keluar` varchar(5) DEFAULT NULL,
  `tgl_keluar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_barang_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `barang_masuk`;
CREATE TABLE `barang_masuk` (
  `id_barang_masuk` varchar(40) NOT NULL,
  `id_supplier` varchar(30) DEFAULT NULL,
  `id_barang` varchar(30) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `jumlah_masuk` int(10) DEFAULT NULL,
  `tgl_masuk` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_barang_masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_supplier`, `id_barang`, `id_user`, `jumlah_masuk`, `tgl_masuk`) VALUES
('BRG-M-0001',	'SPLY-0003',	'BRG-0002',	'USR-001',	10,	'2022-02-26');

DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` int(20) NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(20) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`, `ket`) VALUES
(1,	'Minuman',	''),
(3,	'Kemasan',	'');

DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `id_satuan` int(20) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(60) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `ket`) VALUES
(2,	'Unit',	'');

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(60) DEFAULT NULL,
  `notelp` varchar(15) DEFAULT NULL,
  `alamat` text,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `notelp`, `alamat`) VALUES
('SPLY-0003',	'Baharudin Rabbani',	'089876261556',	'Sumedang');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `level` enum('gudang','admin','manajer') NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `notelp`, `level`, `password`, `foto`, `status`) VALUES
('USR-001',	'Administrasi',	'admin',	'admin@admin.com',	'087856123445',	'admin',	'0192023a7bbd73250516f069df18b500',	'A_-A_-Navis.jpg',	'Aktif'),
('USR-002',	'Gudang',	'gudang',	'gudang@gmail.com',	'087817379229',	'gudang',	'202446dd1d6028084426867365b0c7a1',	'user.png',	'Aktif'),
('USR-003',	'Manajer',	'manajer',	'manajer@gmail.com',	'089291889228',	'manajer',	'69b731ea8f289cf16a192ce78a37b4f0',	'user.png',	'Aktif');

-- 2022-03-17 13:27:22
