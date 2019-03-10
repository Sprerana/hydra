<?php
include 'header.php';
?>
<!DOCTYPE html>
<html>
<title>Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Bubblegum Sans' rel='stylesheet'>
<body>
		<header>
		</header>
		<table >
			<tr>
	<?php
		include 'includes/db.php';
		$sql="SELECT * FROM pump order by ext_month desc";
		$result=mysqli_query($conn,$sql);
		?>
			<h2 align="center"><b>INSTITUTION DETAILS</b></h2><br>
			<table border=2 cellpadding="10" style="display: table;margin: 0 auto;">
				<tr>
					<th style="font-size: 20px;color:white;">pump Id</th>
					<th style="font-size: 20px;color:white;">pump Name</th>
					<th style="font-size: 20px;color: white;">monthly Water Draft</th>
					<th style="font-size: 20px;color: white;">limit</th>
					
				</tr>

			<?php 
			if($result==TRUE){
			while ($row=mysqli_fetch_assoc($result)){?>
				<tr>
					<td style="font-size: 15px;color: white;"><?php echo $row['pump_id'];?></td>
					<td style="font-size: 15px;color: white;"><?php echo $row['pump_name'];?></td>
					<td style="font-size: 15px;color: white;"><?php echo $row['ext_month'];?></td>
					<td style="font-size: 15px;color: white;"><?php echo $row['ext_limit'];?></td>
				</tr>
				<?php }}
				 ?>
			</table>
			<?php 
				$sql="SELECT * FROM pump";
				$result=mysqli_query($conn,$sql);
				if($result==TRUE){
				while ($row=mysqli_fetch_array($result)) {
					if($row['ext_month']>=$row['ext_limit'])
					{

						$to=$row['email'];
						$subject="Alert";
						$txt="Control the usage of water in pump of jntu ".$row['pump_name'];
						$headers="MIME-Version: 1.0" . "\r\n";
						$headers="Content_type: text/html; charset=UTF-8" . "\r\n";
						$headers="From: ministryof.waterresources@gmail.com" . "\r\n";
						mail($to,$subject,$txt,$headers);
					}
					}}
		?>

</body>
</html>