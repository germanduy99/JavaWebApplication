<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<h1>
<%--    <%@ include file="testInclude.jsp"%>--%>
<%--    <jsp:include page="testInclude.jsp">--%>
<%--        <jsp:param name="name" value="LeducDuy"/>--%>
<%--    </jsp:include>--%>

    <%
        session.setAttribute("sesion","session implicit object");
        application.setAttribute("application","application implicit object");

        pageContext.setAttribute("pageScope","page scope object", PageContext.PAGE_SCOPE);
        pageContext.setAttribute("sessionScope","session scope object", PageContext.SESSION_SCOPE);
        pageContext.setAttribute("requestScope","request scope object", PageContext.REQUEST_SCOPE);
        pageContext.setAttribute("applicationScope","application scope object",PageContext.APPLICATION_SCOPE);
       //  request.getRequestDispatcher("demo?name=T2108e&age=20").forward(request,response);
    %>

<%--    <jsp:useBean id="userBean" class="entity.UserEntity" scope="request"/>--%>
<%--    <jsp:setProperty name="userBean" property="id" value="1"/>--%>
<%--    <jsp:setProperty name="userBean" property="name" value="T2108E 2"/>--%>
<%--    <jsp:setProperty name="userBean" property="age" value="22" />--%>
<%--    <jsp:forward page="testInclude.jsp">--%>
<%--        <jsp:param name="name" value="value form index"/>--%>
<%--    </jsp:forward>--%>
<%--    <jsp:forward page="testInclude.jsp">--%>
<%--        <jsp:param name="name" value="value from index"/>--%>
<%--    </jsp:forward>--%>

</h1>
<h1>${"2"+2}</h1>
<h1>${"Hello".concat("T2108E")}</h1>
<h1>param value ${param.name}</h1>
<h1>check param value ${empty param.name}</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>

<br>
<a href="demo.jsp?name=T2108e&age=20">Hello Servlet</a>

</body>
</html>