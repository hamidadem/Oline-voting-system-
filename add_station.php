<?php
	include("connection.php");  
 session_start();
if(isset($_SESSION['u_id']))
 {
  $mail=$_SESSION['u_id'];
 } else {
 ?>

<script>
  alert('You are not logged In !! Please Login to access this page');
  alert(window.location='login.php');
 </script>
 <?php
 }
 ?>
<?php

$user_id=$_SESSION['u_id'];
$result=mysql_query("select * from user where u_id='$user_id'")or die(mysql_error);
$row=mysql_fetch_array($result);
$FirstName=$row['fname'];
$middleName=$row['mname'];
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
<!--Header-->
<title>Online Voting</title>
<script>
  function isdelete()
  {
   var d = confirm('Are you sure you want to Delete !!');
   if(!d)
   {
    alert(window.location='stations.php');
   }
   else
   {
   return false;
    
   }
  }
  </script>
  <title>Online Voting</title>
<link rel="icon" type="image/jpg" href="img/flag.JPG"/>
<link rel="stylesheet" href="main.css" type="text/css" media="screen"/>
<link href="menu.css" rel="stylesheet" type="text/css" media="screen" />
		<!--End of Header-->
</head>
<body>
<table align="center" style="width:900px;border:1px solid gray;background:white url(img/tbg.png) repeat-x left top;border-radius:12px">
<tr style="height:auto;border-radius:12px;background: white url(img/tbg.png) repeat-x left top;">
<th colspan="2">
<a href="system_admin.php"><img src="img/logo.jpg" width="200px" height="180px" align="left" style="margin-left:10px"></a>
<img src="img/officer.png" 	width="450px" style="margin-left:30px;margin-top:40px" align="center">
</th>
</tr>
<tr>
<td colspan="2" bgcolor="#51a351" id="Menus" style="height:auto;border-radius:12px;">
		
		<ul>
			<li ><a href="e_officer.php">Home</a></li>
			<li class="active"><a href="stations.php">Stations</a></li>
						<li><a href="ov_candidate.php">Candidates</a></li>
			<li><a href="logout.php">Logout</a></li>
		</ul>
</td>
</tr>
</table>
<table align="center" style="width:900px;border:1px solid gray;border-radius:12px;" height="500px">
<tr valign="top">
<td><div style="clear: both"></div>

        <div id="left">
            <ul>
                <li>
                    <a href="elect_registrar.php">Ele.Registrar</a></li>
					<li>
                    <a href="o_result.php">Result</a></li>
					                <li>
                    <a href="o_generate.php">Generate Report</a></li>
					<li>
                    <a href="ov_candidate.php">Candidates</a></li>
                <li>
                    <a href="o_comment.php">View Comment</a></li>
					<li>
                    <a href="logout.php">Logout</a></li>
            </ul>
        </div>
		</td>
		<td><div id="right">
            <div class="desk">
           <h1 align="right"><?php 
echo '<img src="img/people.png" width="40px" height="30px">&nbsp;'.'<font style="text-transform:capitalize;"face="times new roman" color="green" size="3">Hi,&nbsp;'.$FirstName."&nbsp;".$middleName." ".'</font>';?></h1>
<br><br>




<?php
 if(isset($_POST['ok']))
 {
 $psname=$_POST['psname'];
 $kebele=$_POST['kebele'];
 $city=$_POST['city']; 
$query="SELECT * FROM station where psname='$psname'";
$resultw=mysql_query($query);
$count=mysql_num_rows($resultw);
		if($count>1)
		{
echo'  <p align="center"><font color="red" size="3">
<p class="wrong">Station Name is already used!</p>';
echo'<meta content="10;add_station.php" http-equiv="refresh"/>';
}
else
{
$sql="INSERT INTO station (u_id,psname,kebele,city)
VALUES
('$user_id','$psname','$kebele','$city')";

if (!mysql_query($sql,$conn))
  {
         echo'  <p class="wrong" style="text-decoration:blink;">Try Again!</p>';
		 echo'<meta content="10;add_station.php" http-equiv="refresh" />';
    }
  else
  {
echo'<p style="text-decoration:blink;" class="success"> Registered successfully</p>';                                
		   echo' <meta content="6;add_station.php" http-equiv="refresh" />';	
}}
	   }
mysql_close($conn)
?>    


<!--End of script-->
<table class="log_table" align="center" >
<form action="add_station.php" method="post">
<tr bgcolor="#51a351" ><th height="30px" colspan="2" ><font color="#ffffff">Add new Polling station</font><a href="stations.php"><img align="right"src="img/close_icon.gif" title="close"></a></th></tr>
<tr>
<td><br>
</td>
<td>
</td>
</tr>
<tr>
<td>
<font color="red">*</font><label>Station Name</label>
</td>
<td>
<input type="text" name="psname" maxlength="10" required/>
</td>
</tr>
<tr>
<td>
<font color="red">*</font><label>Kebele</label>
</td>
<td>
<input type="text" name="kebele" maxlength="10" required/>
</td>
</tr>
<tr>
<td>
<font color="red">*</font><label>City</label>
</td>
<td>
<input type="text" name="city" maxlength="20" required/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<input type="submit" name="ok" value="Save" class="button_example"/>
<input type="reset" value="Reset" class="button_example"/>
</td>
</tr>
<tr>
<td><br>
</td>
<td>
<font color="red">*</font> is Manadatory Field.
</td>
</tr>
</form>
</table>
<br><br><br><br>
	
				



				
				
				<br><br></div>
        </div>
</td>
</tr>

</table>
<table align="center" style="width:900px;border-radius:12px;border:1px solid gray;background:white url(img/tbg.png) repeat-x left top;" height="70px" >
<tr>
<td id="link">
<p style="text-align:right;padding-right:30px;"><a  href="index.php">Home</a>|<a href="about.php">About Us</a>|<a href="contact.php">Contact Us</a></p>
<p ><hr width="350px" align="right"></p>
<p style="text-align:right;padding-right:30px;"><font color="#ffffff">Copyright &copy; 2007 Reserved.</font></p>
</td>
</tr>

</table>
</body>
</html>