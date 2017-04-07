<%@page import="java.util.Collection"%>
<%@page import="metier.Client"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lister les clients</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div id="content">
		<div class="block">
			<h2>Lister les clients</h2>
			<table>
				<tr>
					<th>ID</th>
					<th>NOM</th>
					<th>PRENOM</th>
					<th>COULEUR YEUX</th>
					<th>AGE</th>
					<th>Action</th>
				</tr>
				<%
					Collection<Client> clients = ((Collection<Client>) request.getAttribute("clients"));
					for (Client c : clients) {
				%>
				<tr>
					<td><%= c.getId() %></td>
					<td><%= c.getNom() %></td>
					<td><%= c.getPrenom() %></td>
					<td><%= c.getCouleurYeux() %></td>
					<td><%= c.getAge() %></td>
					<td><a href="SupprimerClient?id=<%= c.getId() %>">Supprimer</a></td>
				</tr>
				<%
					}
				%>
			</table>
		<p><a href="ListerClients">Lister les clients</a></p>
		<p><a href="ajouter_client.jsp">Ajouter un client</a></p>
		<p><a href="maj_client.jsp">Modifier un client</a></p>
		</div>
	</div>
</body>
</html>