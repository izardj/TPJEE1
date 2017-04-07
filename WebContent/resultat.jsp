<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultat</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<p>Bonjour, nous sommes le <span class="date"><%= new Date() %></span></p>
<p>Bonjour <%= request.getAttribute("leprenom") %> <%= request.getAttribute("lenom") %></p>
<p>Le mot de passes saisi est : <%=  request.getAttribute("lemdp") %></p>
<p>Vos loisirs :</p>
<ul>
<%
String[] loisirs = ((String[]) request.getAttribute("lesloisirs"));
if(loisirs != null){
	for(int i=0;i<loisirs.length;i++){
		%>
		<li><%= loisirs[i] %></li>
		<%
	}
}
%>
</ul>
</body>
</html>