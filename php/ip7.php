<?php
$dbcnx=mysqli_connect("localhost","root","","ip");
if(!$dbcnx)
{
    echo ("Error connecting to database");
    exit();

}
?>
<h2>Book information</h2>
<table border="1">
<tr>
    <th>Acc no </th>
    <th>Title </th>
    <th> Author </th>
</tr>

<?php

$result = mysqli_query($dbcnx,"SELECT * FROM book");

if(!$result)
{
    echo("error  performing query!".mysqli_error($dbcnx));
    exit();
}

while($row=mysqli_fetch_array($result)) 
{
 echo "<tr>";
 echo "<td>".$row["accno"]."</td>";
 echo "<td>".$row["title"]."</td>";
 echo "<td>".$row["author"]."</td>";
 echo "</tr>";
}
?>
</table>