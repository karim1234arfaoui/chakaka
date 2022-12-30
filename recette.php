<?php
$o=$_POST["o"];
$m=$_POST["m"];
$d=$_POST["d"];
$ncin=$_POST["ncin"];
mysql_connect("127.0.0.1","root","")or die("erreur1");
mysql_select_db("solde")or die("erreur2");
$sql="select * from compte where ncin='$ncin'";
$res=mysql_query($sql)or die("error3");
if(mysql_num_rows($res)!=0){
$sql="insert into recette values('','$o','$m','$d','$ncin')";
$res=mysql_query($sql)or die("error4");
echo"insertion reussite";
$sql2="update relation set sommerec=sommerec+'$m' where ncin='$ncin'";
$res2=mysql_query($sql2)or die("error5");
echo"<table>
<tr></tr>
<tr><td>update reusite</td></tr>";}
else{echo"verifier votre ncin";}
mysql_close()
?>