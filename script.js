
function verif(){
	o=document.getElementById("o").value;
	d=document.getElementById("d").value;
	m=document.getElementById("m").value;
	ncin=document.getElementById("ncin").value;
	if(o==""){
		alert("objet non vide");
		return false;
		}
	if(d==""){
		alert("date non vide");
		return false;
		}	
	if(m==""){
		alert("montant non vide");
		return false;
		}
	if(isNaN(m)){
		alert("montant numerique");
		return false;
		}
	if (ncin==""){
		alert("non vide svp");
		return false;		
		}
	if(isNaN(ncin)){
		alert("ncin numerique svp");
		return false;
		}
	if(ncin.length!=8){
		alert("longeur de NCIN DE 8 chiffre");
		return false;
		}
}

function verif1(){
	o=document.getElementById("o").value;
	d=document.getElementById("d").value;
	m=document.getElementById("m").value;
	ncin=document.getElementById("ncin").value;
	if(o==""){
		alert("objet non vide");
		return false;
		}
	if(d==""){
		alert("date non vide");
		return false;
		}	
	if(m==""){
		alert("montant non vide");
		return false;
		}
	if(isNaN(m)){
		alert("montant numerique");
		return false;
		}
	if (ncin==""){
		alert("ncin non vide svp");
		return false;		
		}
	if(isNaN(ncin)){
		alert("ncin numerique svp");
		return false;
		}
	if(ncin.length!=8){
		alert("longeur de NCIN DE 8 chiffre");
		return false;
		}
	else{alert("True");}
}
function verif4(){
	ncin=document.getElementById("ncin").value;
	nom=document.getElementById("nom").value;
	pre=document.getElementById("pre").value;
	age=document.getElementById("age").value;
	ad=document.getElementById("ad").value;
	if (ncin==""){
		alert("NCIN non vide svp");
		return false;		
		}
	if(isNaN(ncin)){
		alert("ncin numerique svp");
		return false;
		}
	if(ncin.length!=8){
		alert("longeur de ncin de 8 chiffre");
		return false;
		}
	if (nom==""){
		alert("NOM non vide svp");
		return false;		
		}
	if(nom.length>30){
		alert("longeur maximale 30 caractere alphabetique");
		return false;
		}
	if (pre==""){
		alert("prenom non vide svp");
		return false;		
		}
	if(pre.length>30){
		alert("longeur maximale 30 caractere alphabetique");
		return false;
		}
	if (age==""){
		alert("age non vide svp");
		return false;		
		}
	if(isNaN(age)){
		alert("age numerique svp");
		return false;
		}
	if (ad==""){
		alert("adresse non vide svp");
		return false;		
		}
	if(ad.length>30){
		alert("longeur maximale 30 caractere alphabetique");
		return false;
		}
	}
function verif5(){
	ncin=document.getElementById("ncin").value;
	if (ncin==""){
		alert("ncin non vide svp");
		return false;		
		}
	if(isNaN(ncin)){
		alert("ncin numerique svp");
		return false;
		}
	if(ncin.length!=8){
		alert("longeur de ncin de 8 chiffre");
		return false;
		}
		
		}