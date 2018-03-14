<?php
include "dbconfig.php";

	$nik = $_POST['txt_nik'];
	$fname = $_POST['txt_fname'];
	$lname = $_POST['txt_lname'];
	$email = $_POST['txt_email'];
	$phno = $_POST['txt_mobile'];
	$postion = $_POST['txt_position'];
	$division = $_POST['txt_division'];
	
				// Proses simpan ke Database
				$query = "INSERT INTO biodata(nik, fname, lname, email, phone, position, division) VALUES('".$nik."','".$fname."','".$lname."','".$email."','".$phone."','".$position."','".$division."','".$phone."')";
				$sql = mysqli_query($connect, $query); // Eksekusi/ Jalankan query dari variabel $query
				
?>
