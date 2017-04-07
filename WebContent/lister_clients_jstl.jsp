<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<c:if test="${! empty clients}">
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
					<c:forEach var="c" items="${clients}">
						<tr>
							<td><c:out value="${c.id}"></c:out></td>
							<td><c:out value="${c.nom}"></c:out></td>
							<td><c:out value="${c.prenom}"></c:out></td>
							<td><c:out value="${c.couleurYeux}"></c:out></td>
							<td><c:out value="${c.age}"></c:out></td>
							<td><a href="SupprimerClient?id=${c.id }">Supprimer</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<p>
				<a href="ListerClients">Lister les clients</a>
			</p>
			<p>
				<a href="ajouter_client.jsp">Ajouter un client</a>
			</p>
			<p>
				<a href="maj_client.jsp">Modifier un client</a>
			</p>
		</div>
	</div>
</body>
</html>