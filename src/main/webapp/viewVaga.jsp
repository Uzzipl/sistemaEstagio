<%@ page import="java.util.*" %>
<%@ page import="com.sistemaestagio.dao.VagaDao" %>
<%@ page import="com.sistemaestagio.bean.Vaga" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    List<Vaga> lista = VagaDao.getAllVagas();
    request.setAttribute("lista", lista);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vagas de Estágio</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Vagas de Estágio</h1>
<p><a href="formVaga.jsp" class="btn">➕ Nova Vaga</a></p>
<table class="table-user">
    <tr>
        <th>ID</th>
        <th>Título</th>
        <th>Descrição</th>
        <th>Empresa</th>
        <th>Localização</th>
        <th>Tipo</th>
    </tr>
    <c:forEach items="${lista}" var="vaga">
        <tr>
            <td>${vaga.id}</td>
            <td>${vaga.titulo}</td>
            <td>${vaga.descricao}</td>
            <td>${vaga.empresa}</td>
            <td>${vaga.localizacao}</td>
            <td>${vaga.tipo}</td>
        </tr>
    </c:forEach>
</table>
<p><a href="index.html" class="btn">⬅ Home</a></p>
</body>
</html>