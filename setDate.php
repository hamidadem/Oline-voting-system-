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
<link href="date/htmlDatepicker.css" rel="stylesheet" />
<script language="JavaScript" src="date/htmlDatepicker.js" type="text/javascript"></script>
<link href="menu.css" rel="stylesheet" type="text/css" media="screen" />
		<!--End of Header-->
</head>
<body>
<table align="center" style="width:900px;border:1px solid gray;background:white url(img/tbg.png) repeat-x left top;border-radius:12px">
<tr style="height:auto;border-radius:12px;background: white url(img/tbg.png) repeat-x left top;">
<th colspan="2">
<a href="e_registrar.php"><img src="img/logo.jpg" width="200px" height="180px" align="left" style="margin-left:10px"></a>
<img src="img/system.png" 	width="450px" style="margin-left:30px;margin-top:40px" align="center">
</th>
</tr>
<tr>
<td colspan="2" bgcolor="#51a351" id="Menus" style="height:auto;border-radius:12px;">
		
		<ul>
			<li ><a href="system_admin.php">Home</a></li>
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
                    <a href="manage_account.php">Manage Account</a></li>
					                <li>
                    <a href="a_generate.php">Generate Report</a></li>
					<li>
                    <a href="a_candidate.php">Candidates</a></li>
                <li>
                    <a href="voters.php">Voters</a></li>
				<li>
                    <a href="setDate.php">Set Date</a></li>
				
					<li>
                    <a href="v_comment.php">View Comment</a></li>
				    <li><a href="logout.php">Logout</a></li>
            </ul>
        </div>
		</td>
		<td><div id="right">
            <div class="desk">
           <h1 align="right"><?php 
echo '<img src="img/people.png" width="40px" height="30px">&nbsp;'.'<font style="text-transform:capitalize;"face="times new roman" color="green" size="3">Hi,&nbsp;'.$FirstName."&nbsp;".$middleName." ".'</font>';?></h1>
<br><br>
	<font size="2"><h2><u>Specify Voting Date Here:</u></h2> </font><br/>
	<form name="myform" method="post">
	Date&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="SelectedDate" name="date" onClick="GetDate(date)" placeholder="select date" readonly />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="go" value="Set"/>
	</form>
	<?php
	if(isset($_POST['go']))
	{
	$date = $_POST['date'];
	mysql_query("DELETE FROM election_date WHERE year(date)=year('$date') ");
	$qry = mysql_query("INSERT INTO election_date values('$date', '$user_id')");
	if($qry)
	{
	echo "You specify the date successfully1";
	echo '<meta content="2;system_admin.php" http-equiv="refresh"/>';
	}
	else{
	echo "Error occurred while specifying!";
	echo '<meta content="2;setDate.php" http-equiv="refresh"/>';
	
	}
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