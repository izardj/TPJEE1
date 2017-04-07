<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier un client</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div id="content">
		<div class="block">
			<h2>Modifier un client</h2>
			<form method="post" action="ModifierClient">
				<fieldset id="section-1">
					<legend>Informations personnelles</legend>
					<label for="id">Saisir ID :</label>
					<input type="text" name="id" id="id" /><br />
					<label for="nom">Nouveau nom :</label>
					<input type="text" name="nom" id="nom" /><br />
					<label for="prenom">Nouveau prénom :</label>
					<input type="text" name="prenom" id="prenom" /><br />
				</fieldset>
				<input type="submit" value="Modifier" />
			</form>
		</div>
		<p><a href="ListerClients">Lister les clients</a></p>
		<p><a href="ajouter_client.jsp">Ajouter un client</a></p>
		<p><a href="maj_client.jsp">Modifier un client</a></p>
	</div>
</body>
</html>