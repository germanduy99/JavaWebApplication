<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2023
  Time: 7:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<form action="userServlet1" method="post" >
    <div class="col-md-12">
        <input type="hidden" name="userId" class="form-control" id="userId" value="<%=request.getAttribute("id")%>">
    </div>
    <div class="col-md-12">
        <label for="userName" class="form-lable">UserName</label>
        <input type="text" name="userName" class="form-control" id="userName" value="<%=request.getAttribute("name")%>">
    </div>
    <div class="col-md-12">
        <label for="userAge" class="form-lable">UserAge</label>
        <input type="text" name="userAge" class="form-control" id="userAge" value="<%=request.getAttribute("age")%>">
    </div>
    <div class="col-md-12">
        <label for="userAddress" class="form-lable">UserAddress</label>
        <input type="text" name="userAddress" class="form-control" id="userAddress" value="<%=request.getAttribute("address")%>">
    </div>
    <button type="submit" class="btn btn-primary mb-3">Save</button>

</form>

</body>
</html>
