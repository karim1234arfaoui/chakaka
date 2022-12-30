<?php
$ncin=$_POST['ncin'];
mysql_connect("127.0.0.1","root","") or die ("errerur serveur".mysql_error());
mysql_select_db("solde") or die ("erreur bd".mysql_error());
$sql="select * from relation where ncin='$ncin'";
$res=mysql_query($sql) or die("erreur requette 1".mysql_error());
if(mysql_num_rows($res)!=0){
echo "<table border='1'>
<tr>
<td>somme Resette</td>
</tr>
";
while($t=mysql_fetch_array($res)){
echo "
<tr>
<td>$t[2]</td>
</tr>";}
echo"</table>";}
else{echo"verifier votre ncin";}
mysql_close()

?>