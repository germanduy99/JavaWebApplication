<%@ page import="java.io.Writer" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/13/2023
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>demo</title>
</head>
<body>
<%! int d = 100; %>
<%
    int a =10;
    int b =200;
    int c = a*b;
    request.setAttribute("c" ,c);
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    Writer writer= response.getWriter();
    out.write("<h1>Name: " + name + "<h1>");
    out.write("<h1>Age: " + age + "<h1>");
    String sessionName =(String) session.getAttribute("sesion");
    String applicationName =(String) application.getAttribute("application");
    String pageScope = (String) pageContext.getAttribute("pageScope", PageContext.PAGE_SCOPE);
    String sesstionScope = (String) pageContext.getAttribute("sessionScope", PageContext.SESSION_SCOPE);
    String requestScope = (String) pageContext.getAttribute("requestScope", PageContext.REQUEST_SCOPE);
    String applicationScope = (String) pageContext.getAttribute("applicationScope", PageContext.APPLICATION_SCOPE);
%>
<h1><%=10+30+50%></h1>
<h1>d: <%=d%></h1>
<h1>c: <%=c%></h1>
<h1>sesion: <%=sessionName%></h1>
<h1>applicaion: <%=applicationName%></h1>
<br>
<h1>page: <%=pageScope%></h1>
<h1>session: <%=sesstionScope%></h1>
<h1>request: <%=requestScope%></h1>
<h1>applicaion: <%=applicationScope%></h1
<br>
<h1>initParam: <%=config.getInitParameter("testInit")%></h1>



</body>
</html>
