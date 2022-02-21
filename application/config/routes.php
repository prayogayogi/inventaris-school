<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'Home/index';

$route['home'] = 'Home/index';
$route['profile'] = 'Profile/index';

//user & login
$route['user'] = 'User/index';
$route['login'] = 'Login/index';

//master
$route['supplier'] = 'Supplier/index';
$route['jenis'] = 'Jenis/index';
$route['satuan'] = 'Satuan/index';
$route['barang'] = 'Barang/index';
$route['barang_masuk'] = 'BarangMasuk/index';
$route['barang_keluar'] = 'BarangKeluar/index';

//laporan
$route['lap_barang_masuk'] = 'BarangMasuk/laporan';
$route['lap_barang_keluar'] = 'BarangKeluar/laporan';



$route['(:any)'] = 'Gagal/index/$1';
$route['404_override'] = 'Gagal/index';
$route['translate_uri_dashes'] = FALSE;
