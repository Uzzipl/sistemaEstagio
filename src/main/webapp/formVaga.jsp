<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nova Vaga</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Cadastrar Nova Vaga</h2>
<form action="addVaga.jsp" method="post">
    <table>
        <tr><td>Título:</td><td><input type="text" name="titulo" required></td></tr>
        <tr><td>Descrição:</td><td><textarea name="descricao" required></textarea></td></tr>
        <tr><td>Empresa:</td><td><input type="text" name="empresa" required></td></tr>
        <tr><td>Localização:</td><td><input type="text" name="localizacao" required></td></tr>
        <tr>
            <td>Tipo:</td>
            <td>
                <select name="tipo" required>
                    <option value="">-- Selecione --</option>
                    <option value="Presencial">Presencial</option>
                    <option value="Remoto">Remoto</option>
                    <option value="Híbrido">Híbrido</option>
                </select>
            </td>
        </tr>
        <tr><td colspan="2"><input type="submit" value="Cadastrar"></td></tr>
    </table>
</form>
<a href="viewVaga.jsp">Voltar</a>
</body>
</html>