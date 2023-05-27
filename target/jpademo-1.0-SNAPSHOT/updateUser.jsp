<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/26/2023
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="updateuserServlet" method="post" >
    <input  type="hidden" name="id" value="<%=request.getParameter("id")%>">
    Name: <input type="text" name="name" value="<%=request.getParameter("name")%>">
    Age: <input type="text" name="age" value="<%=request.getParameter("age")%>">
    Address: <input type="text" name="address" value="<%=request.getParameter("address")%>" >

    <input type="submit" value="submit">
</form>

</body>
</html>
