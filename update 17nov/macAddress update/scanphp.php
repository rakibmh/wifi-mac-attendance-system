<?php
session_start();
require 'dbcon.php';

if(isset($_REQUEST['ssid']) && isset($_REQUEST['mac']))
{
    $ssid = $_REQUEST["ssid"];
    $mac = $_REQUEST["mac"];

	$query = "SELECT * FROM scan where mac='$mac'";
     $query_run = mysqli_query($con, $query);
     if(mysqli_num_rows($query_run)<= 0)
     {
		$query = "INSERT INTO scan (ssid, mac) VALUES ('$ssid','$mac')";

		$query_run = mysqli_query($con, $query);
		if($query_run)
		{
			$_SESSION['message'] = "New ssid and mac coming !";
			header("Location: scan.php");
			exit(0);
		}
		else
		{
			$_SESSION['message'] = "Scan Failed !";
			header("Location: scan.php");
			exit(0);
		}
	 }else{
		//date_default_timezone_set("Asia/Dhaka");
		//$d=date("Y-m-d H:i:s");
		$query = "delete from scan where mac='$mac'";
		$query_run = mysqli_query($con, $query);
		$query = "INSERT INTO scan (ssid, mac) VALUES ('$ssid','$mac')";
		$query_run = mysqli_query($con, $query);
	 }	 
}

?>