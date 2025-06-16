<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nova Vaga</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

<a href="viewVaga.jsp">⬅ Voltar</a>

<!-- MODAL DE RESULTADO -->
<c:if test="${resultado == 'sucesso'}">
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Vaga cadastrada!',
            text: 'A vaga foi registrada com sucesso.',
            confirmButtonColor: '#3085d6'
        });
    </script>
</c:if>

<c:if test="${resultado == 'erro'}">
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Erro ao cadastrar',
            text: 'Não foi possível cadastrar a vaga. Tente novamente.',
            confirmButtonColor: '#d33'
        });
    </script>
</c:if>
</body>
</html>
