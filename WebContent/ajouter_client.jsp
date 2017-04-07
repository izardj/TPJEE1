<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un client</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div id="content">
		<div class="block">
			<h2>Ajouter un client</h2>
			<form method="post" action="AjouterClient">
				<fieldset id="section-1">
					<legend>Informations personnelles</legend>
					<label for="nom">Saisir votre nom :</label>
					<input type="text" name="nom" id="nom" /><br />
					<label for="prenom">Saisir votre prénom :</label>
					<input type="text" name="prenom" id="prenom" /><br />
					<label for="age">Saisir votre age :</label>
					<input type="text" name="age" id="age" /><br />
					<label for="couleuryeux">Saisir votre couleur d'yeux :</label>
					<input type="text" name="couleuryeux" id="couleuryeux" /><br />
				</fieldset>
				<input type="submit" value="Ajouter" />
			</form>
		</div>
		<p><a href="ListerClients">Lister les clients</a></p>
		<p><a href="ajouter_client.jsp">Ajouter un client</a></p>
		<p><a href="maj_client.jsp">Modifier un client</a></p>
	</div>
</body>
</html>