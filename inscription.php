<?php
$ncin=$_POST["ncin"];
$nom=$_POST["nom"];
$pre=$_POST["pre"];
$age=$_POST["age"];
$ad=$_POST["ad"];
mysql_connect("127.0.0.1","root","")or die("error serveur!!!  ".mysql_error());
mysql_select_db("solde")or die("error bd!!!  ".mysql_error());
$sql="select * from compte where ncin='$ncin'";
$res=mysql_query($sql)or die("error rq1  ".mysql_error());
if(mysql_num_rows($res)==0){
	$sql1="insert into compte values('$ncin','$ncin','$pre','$age','$ad')";
	$res=mysql_query($sql1)or die("errore rq2");
	$sql1="insert into relation values('','$ncin','0','0')";
	$res=mysql_query($sql1)or die("errore rq3");
	echo"insertion reussite";
	}
else{
	echo"deja existe";}
mysql_close()
?>