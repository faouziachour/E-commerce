 <?php
session_start();
//initialisation des varibles 
if(! isset($_POST["envoi"])) $_POST["envoi"]=""; 
if(! isset($_SESSION['prixTotal']))  $_SESSION['prixTotal']=0; 
if(! isset($_SESSION['code'])) $_SESSION['code']=0; 
if(! isset($_SESSION['article'])) $_SESSION['article']=""; 
if(! isset($_SESSION['prix'])) $_SESSION['prix']=0; 
 


//AJOUTER
if($_POST["envoi"]=="AJOUTER" && $_POST["code"]!="" &&  $_POST["article"]!="" && $_POST["prix"]!="")
{
$code=$_POST["code"];  
$article= $_POST["article"];  
$prix= $_POST["prix"]; 	
$_SESSION['code']= $_SESSION['code']."//".$code;  
$_SESSION['article']= $_SESSION['article']."//".$article;  
$_SESSION['prix']= $_SESSION['prix']."//".$prix; 
}
//VERIFIER
if($_POST["envoi"]=="VERIFIER")
{
echo "<table border=\"1\" >";
echo "<tr><td colspan=\"3\"><b>Récapitulatif de votre commande</b></td>";
echo "<tr><th>&nbsp;code&nbsp;</th><th>&nbsp;article&nbsp;</ th><th>&nbsp;
?prix&nbsp;</th>";
$total=0;
$tab_code=explode("//",$_SESSION['code']);  
$tab_article=explode("//",$_SESSION['article']);  
$tab_prix=explode("//",$_SESSION['prix']);  

for($i=1;$i<count($tab_code);$i++)  
{
echo "<tr> <td>{$tab_code[$i]}</td> <td>{$tab_article[$i]}</td><td>
?".sprintf("%01.2f", $tab_prix[$i])."</td>";
$_SESSION['prixTotal']+=$tab_prix[$i];  
}
echo "<tr> <td colspan=2> PRIX TOTAL </td> <td>".sprintf("%01.2f", $_SESSION['prixTotal'])."
?</td>";
echo "</table>";
}
//ENREGISTRER
if($_POST["envoi"]=="ENREGISTRER")
{
$idfile=fopen("commande.txt",w);
//
$tab_code=explode("//",$_SESSION['code']);
$tab_article=explode("//",$_SESSION['article']);
$tab_prix=explode("//",$_SESSION['prix']);
for($i=0;$i<count($tab_code);$i++)  

{
fwrite($idfile, $tab_code[$i]." ; ".$tab_article[$i]." ; ".$tab_prix[$i].";
?\n");
}
fclose($idfile);
}
//LOGOUT
if($_POST["envoi"]=="LOGOUT")
{
session_unset();  
session_destroy();  
echo "<h3>La session est terminée</h3>";
}
$_POST["envoi"]=""; 
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>

<link rel="stylesheet" href="stylemenu.css">
</head>

<body>
 <h1>SELECTED</h1> 
 <h1>SHOP</h1>
 <br>
<div>

    
    
  <a  href="index.php" class="btn">Home</a>

    <a href="Produits.php" class="btn">Nos Produits</a>
    <a href="Contact.php" class="btn">Contact</a>
    <a href="Rapport.php" class="btn">Rapport</a>
    <a href="Panier.php" class="active">Panier</a>
    <a href="Authentification.php" class="btn">Authentification</a>

	<br><br> <hr><br><br><br><br> 
</div>





<center>
<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post"
?enctype="application/x-www-form-urlencoded">
<fieldset>
<legend><h1>Saisies d'articles</h1></legend>
<table>
<tbody>
<tr>
<th>code : </th>
<td> <input type="text" name="code" /></td>
</tr>
<tr>
<th>article : </th>
<td><input type="text" name="article" /></td>
</tr>
<tr>
<th>prix :</th>
<td><input type="text" name="prix" /></td>
</tr>
<tr>
<td colspan="3">
<input type="submit" class="boutonpanier" name="envoi" value="AJOUTER" />
<input type="submit" class="boutonpanier" value="VERIFIER" />
<input type="submit" class="boutonpanier" value="ENREGISTRER" />
<input type="submit" class="boutonpanier"  value="LOGOUT" />
</td>
</tr>
</tbody>
</table>
</fieldset>
</form>




<br><br><br><br>

</center>






<br><br> <hr><br><br><br><br> 
<center>
	   <tr>    
	 <td>
			<a href="https://www.instagram.com/selectedshop1" target="_blank">	<img  src="images/instagram.png" alt="" width="80" height="80"></a>	
	
	 </td>			
			<td></td><td></td><td></td>
                     
	 <td>
			<a href="https://www.facebook.com/selectedshoot" target="_blank"> <img src="images/facebook.png" alt="" width="80" height="80"></a>	
		
	 </td>	
	</tr> 


</center>

</body>
</html>