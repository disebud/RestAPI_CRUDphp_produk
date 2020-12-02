<?php


	if($_SERVER['REQUEST_METHOD']=='POST'){
		
		//Mendapatkan Nilai Variable
		$kdProduk = $_POST['kdProduk'];
		$namaProduk = $_POST['namaProduk'];
		$harga = intval($_POST['harga']);
		
		//Pembuatan Syntax SQL
		$sql = "INSERT INTO produk (kd_produk,nama_produk,harga) VALUES ( '$kdProduk', '$namaProduk', $harga)";
		
		//Import File Koneksi database
		require_once('koneksi.php');
		
		//Eksekusi Query database
		if(mysqli_query($con,$sql)){
			echo 'Berhasil Menambahkan Pegawai';
		}else{
			echo 'Gagal Menambahkan Pegawai';
		}
		
		mysqli_close($con);
	}
?>