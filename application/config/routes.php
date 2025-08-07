<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home/index';

$route['home'] = 'Home/index';
$route['profile'] = 'Profile/index';

//user & login
$route['user'] = 'User/index';
$route['login'] = 'Login/index';

//masterg
$route['supplier'] = 'Supplier/index';
$route['jenis'] = 'Jenis/index';
$route['satuan'] = 'Satuan/index';
$route['barang'] = 'Barang/index';
$route['barang_masuk'] = 'barangMasuk/index';
$route['barang_keluar'] = 'barangKeluar/index';

//laporan
$route['lap_barang_masuk'] = 'barangMasuk/laporan';
$route['lap_barang_keluar'] = 'barangKeluar/laporan';