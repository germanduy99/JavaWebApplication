<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/23/2023
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>IncludeJSP</h1>
<%
    String name = request.getParameter("name");

%>
<h1>Name jsp inculude<%=name%>></h1>

<h1>Name in testInclude.jsp: <%= name %></h1>
<jsp:useBean id="userBean" type="entity.UserEntity" scope="request"/>
<h1>Name: <jsp:getProperty name="userBean" property="name"/></h1>
<h1>Age: <jsp:getProperty name="userBean" property="age"/></h1>
</body>
</html>
