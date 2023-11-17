<?php
session_start();
require 'dbcon.php';

if(isset($_REQUEST['mac']))
{
    $student_mac = $_REQUEST["mac"];

    $query = "SELECT * FROM attendance WHERE macAddress='$student_mac' ";
    $query_run = mysqli_query($con, $query);

    if($query_run==true)
    {
        while($data = mysqli_fetch_array($query_run)) {
           // echo "exist";
            //echo $data['name'];
           // header("Location: index.php");
            //exit(0);
        }
        $queryStudents = "SELECT * FROM students WHERE macAddress='$student_mac' ";
        $query_runStudents = mysqli_query($con, $queryStudents);
        if($query_runStudents==true)
        {
            while($dataStudents = mysqli_fetch_array($query_runStudents)) {
                $idAdd =  $dataStudents['id'];
                $nameAdd =  $dataStudents['name'];
                $ssidAdd =  $dataStudents['ssid'];
                $macAdd =  $dataStudents['macAddress'];
                $courseAdd = $dataStudents['course'];

                $queryAdd = "INSERT INTO attendance (id, name,ssid, macAddress, course, deviceMac) VALUES ('$idAdd','$nameAdd', '$ssidAdd','$macAdd' ,'$courseAdd', '4a:13:3c:62:b6:31')";
                $query_runAdd = mysqli_query($con, $queryAdd);

                if($query_runAdd==true){
                    echo $nameAdd;
                   // echo $idAdd;
                // $_SESSION['message'] = $data['name'];
                // header("Location: index.php");
                // exit(0);
                 }

                }


            // $queryStudents = "SELECT * FROM students WHERE macAddress='$student_mac' ";
            // $query_runStudents = mysqli_query($con, $queryStudents);
            // $_SESSION['message'] = "Already Exist";
            // header("Location: index.php");
            // exit(0);
        }
        // $_SESSION['message'] = "Already Exist";
        // header("Location: index.php");
        // exit(0);
    }
    // else
    // {
    //     $_SESSION['message'] = "Not Exist";
    //     header("Location: index.php");
    //     exit(0);
    // }
}


?>