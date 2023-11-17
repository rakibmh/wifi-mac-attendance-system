<?php
session_start();
require 'dbcon.php';

if(isset($_REQUEST['user']) && isset($_REQUEST['pass']))
{
    $user = $_REQUEST["user"];
    $pass = $_REQUEST["pass"];

    echo $user;
    echo $pass;
    // echo "run";

    if($user=="teacher1" && $pass=="11111111"){
        $_SESSION['message'] = "teacher1 Successfully Login !";
       // echo "attendance";
        header("Location: attendance.php");
        // exit(0)
    }else if($user=="teacher2" && $pass=="00000000"){
        $_SESSION['message'] = "teacher2 Successfully Login !";
       // echo "attendance";
        header("Location: attendance.php");
    }else{
        //echo "index";
        $_SESSION['message'] = "user or password incorrect !";
        header("Location: index.php");
        // exit(0);
    }



    // $query = "SELECT * FROM attendance WHERE macAddress='$student_mac' ";
    // $query_run = mysqli_query($con, $query);

    // if($query_run==true)
    // {
    //     while($data = mysqli_fetch_array($query_run)) {
    //        // echo "exist";
    //         //echo $data['name'];
    //        // header("Location: index.php");
    //         //exit(0);
    //     }
    //     $queryStudents = "SELECT * FROM students WHERE macAddress='$student_mac' ";
    //     $query_runStudents = mysqli_query($con, $queryStudents);
    //     if($query_runStudents==true)
    //     {
    //         while($dataStudents = mysqli_fetch_array($query_runStudents)) {
    //             $idAdd =  $dataStudents['id'];
    //             $nameAdd =  $dataStudents['name'];
    //             $macAdd =  $dataStudents['macAddress'];
    //             $courseAdd = $dataStudents['course'];

    //             $queryAdd = "INSERT INTO attendance (id, name, macAddress, course) VALUES ('$idAdd','$nameAdd','$macAdd' ,'$courseAdd')";
    //             $query_runAdd = mysqli_query($con, $queryAdd);

    //             if($query_runAdd==true){
    //                 echo $nameAdd;
                   // echo $idAdd;
                // $_SESSION['message'] = $data['name'];
                // header("Location: index.php");
                // exit(0);
              //   }

               // }


            // $queryStudents = "SELECT * FROM students WHERE macAddress='$student_mac' ";
            // $query_runStudents = mysqli_query($con, $queryStudents);
            // $_SESSION['message'] = "Already Exist";
            // header("Location: index.php");
            // exit(0);
      //  }
        // $_SESSION['message'] = "Already Exist";
        // header("Location: index.php");
        // exit(0);
   // }
    // else
    // {
    //     $_SESSION['message'] = "Not Exist";
    //     header("Location: index.php");
    //     exit(0);
    // }
}


?>