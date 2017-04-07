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
			<h2>Afficher client</h2>
			<p>Nom : <%=  request.getAttribute("nom")%></p>
			<p>Prénom : <%=  request.getAttribute("prenom")%></p>
			<p>Age : <%=  request.getAttribute("age")%></p>
			<p>Couleur yeux : <%=  request.getAttribute("couleuryeux")%></p>
		</div>
		<p><a href="ListerClients">Lister les clients</a></p>
		<p><a href="ajouter_client.jsp">Ajouter un client</a></p>
		<p><a href="maj_client.jsp">Modifier un client</a></p>
	</div>
</body>
</html>