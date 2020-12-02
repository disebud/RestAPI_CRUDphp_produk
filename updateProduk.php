<?php 

	if($_SERVER['REQUEST_METHOD']=='POST'){
		//MEndapatkan Nilai Dari Variable 
		$id = intval($_POST['idProduk']);
		$kdProduk = $_POST['kdProduk'];
		$namaProduk = $_POST['namaProduk'];
		$harga = intval($_POST['harga']);
		
		//import file koneksi database 
		require_once('koneksi.php');
		
		//Membuat SQL Query
		$sql = "UPDATE produk SET kd_produk = '$kdProduk', nama_produk = '$namaProduk', harga = $harga WHERE id_produk = $id";
		
		//Meng-update Database 
		if(mysqli_query($con,$sql)){
			echo 'Berhasil Update Data Pegawai';
		}else{
			echo 'Gagal Update Data Pegawai';
		}
		
		mysqli_close($con);
	}
?>