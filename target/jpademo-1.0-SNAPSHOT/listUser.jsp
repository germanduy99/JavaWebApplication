<%@ page import="entity.UserEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/25/2023
  Time: 8:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Address</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<UserEntity> list =  (List<UserEntity>) request.getAttribute("listUser");
        for(UserEntity u : list){
    %>
    <tr>
        <th><%=u.getName()%></th>
        <th><%=u.getAge()%></th>
        <th><%=u.getAddress()%></th>
        <th><a href="deleteuserServlet?id=<%=u.getId()%>">Xóa user</a>
        </th>
        <th><a href="updateUser.jsp?id=<%=u.getId()%>&name=<%=u.getName()%>&age=<%=u.getAge()%>&address=<%=u.getAddress()%>">Update</a>
        </th>

    </tr>
    <%
        }
    %>
    </tbody>
</table>
<a href="createUser.jsp">Thêm user mới</a>
</body>
</html>
