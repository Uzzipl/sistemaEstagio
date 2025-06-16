<%@ page import="com.sistemaestagio.dao.VagaDao" %>
<%@ page import="com.sistemaestagio.bean.Vaga" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<jsp:useBean id="vaga" class="com.sistemaestagio.bean.Vaga" />
<jsp:setProperty property="*" name="vaga" />
<%
    int status = VagaDao.addVaga(vaga);
    request.setAttribute("resultado", status > 0 ? "sucesso" : "erro");
    RequestDispatcher rd = request.getRequestDispatcher("formVaga.jsp");
    rd.forward(request, response);
%>