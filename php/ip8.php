<?php
$dbcnx=mysqli_connect("localhost","root","","ip");
if(!$dbcnx)
{
    echo ("error connecting");
    exit();
}


$accno = mysqli_real_escape_string($dbcnx, $_REQUEST['accno']);
$title = mysqli_real_escape_string($dbcnx, $_REQUEST['title']);
$author = mysqli_real_escape_string($dbcnx, $_REQUEST['author']);

    $sql="INSERT into book values ('$accno','$title','$author')"; 


if(mysqli_query($dbcnx,$sql))
{
    echo ("Record inserted successfully");
}
else
{
    echo ("Record insertion failed");
}
?>