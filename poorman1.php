<?php
include 'includes/db.php';
$sql="SELECT * FROM users WHERE username='{$_SESSION['username']}'";
$result=mysqli_query($conn,$sql);
$resultcheck=mysqli_num_rows($result);
if ($resultcheck == 1) {
	$row = mysqli_fetch_assoc($result);
}
$ch=array();
$mon1=$row["level"];

$cmd1= "\"c:\Program Files\R\R-3.5.2\bin\Rscript\" sample1.R $mon1";
	echo exec($cmd1);
	echo "<img src='temp.png'>";
	?>
