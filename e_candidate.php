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
<script>
  function isdelete()
  {
   var d = confirm('Are you sure you want to Delete !!');
   if(!d)
   {
    alert(window.location='e_candidate.php');
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
<a href="e_registrar.php"><img src="img/logo.jpg" width="200px" height="180px" align="left" style="margin-left:10px"></a>
<img src="img/registrar.png" 	width="450px" style="margin-left:30px;margin-top:40px" align="center">
</th>
</tr>
<tr>
<td colspan="2" bgcolor="#51a351" id="Menus" style="height:auto;border-radius:12px;">
		
		<ul>
			<li ><a href="e_registrar.php">Home</a></li>
						<li class="active"><a href="e_candidate.php">Candidates</a></li>
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
                    <a href="reg_voter.php">Voter</a></li>
					<li>
                    <a href="e_candidate.php">Candidates</a></li>
					<li>
                    <a href="e_generate.php">Generate Report</a></li>
					<li>
                    <a href="e_result.php">Result</a></li>
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
			$av=mysql_query("select *from candidate");
			$countav=mysql_num_rows($av);			
			echo '<font size="2"><h2><u>General Information:</u></h2> There are <font color="green" >'.$countav. ' candidates are participated.</font>' ;
			echo"<br><br>";
   ?>
	<?php
$result = mysql_query("SELECT * FROM candidate");
while($row = mysql_fetch_array($result))
  {
$ctrl = $row['c_id'];
$_SESSION['c_id']=$ctrl;
$fname=$row['fname'];
$mname=$row['mname'];
$lname=$row['lname'];
$pname=$row['party_name'];
$symbol=$row['party_symbol'];
$photo=$row['candidate_photo'];
?>
<table>
<tr>
<td><img src="<?php echo $symbol;?>" width="100px" height="100px"></td><td>
<table style="border-radius:5px;border:1px solid black;width:120px;height:100px;box-shadow:1px 1px 10px black">
<tr><td><?php echo "<b>Party Name:</b>"."&nbsp;".$pname;?><br><?php echo "<b>Candidate:</b>"."&nbsp;".$fname."&nbsp;".$mname;?><br></td></tr>
<tr><td style='height:30px;'><a href = "det_can.php?key=<?php echo $ctrl;?>">View Detail</a></td></tr></table></td>
</tr>
</table>
<?php 
}
?>			
				
				
				
				
				
				
				
				
				
				
				
				<br><br>
           
                
				
				
				
				
				
				
				
				
				
				
				
				
				
				<br><br></div>
        </div>
</td>
</tr>

</table>
<table align="center" style="width:900px;border-radius:12px;border:1px solid gray;background:white url(img/tbg.png) repeat-x left top;" height="70px" >
<tr>
<td id="link">
<p style="text-align:right;padding-right:30px;"><a  href="e_registrar.php">Home</a>|<a href="#">About Us</a>|<a href="#">Contact Us</a></p>
<p ><hr width="350px" align="right"></p>
<p style="text-align:right;padding-right:30px;"><font color="#ffffff">Copyright &copy; 2007 Reserved.</font></p>
</td>
</tr>

</table>
</body>
</html>