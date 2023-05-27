package com.example.jpademo;

import dao.UserDAO;
import entity.UserEntity;

import java.io.*;
import java.util.Collection;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    UserDAO userDAO = new UserDAO();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");

        UserEntity user = new UserEntity("T2108E", 23,"Ha Noi");

//        UserEntity user3 = userDAO.findbyId(3);
//        out.println(user3.getName());
//        out.println(user3.getAddress());
//        out.println(user3.getAge());
//        userDAO.removeUser(user3);
//        Collection<UserEntity> a = userDAO.findAllUser();
        Collection<UserEntity> a = userDAO.findage(21);

        a.forEach(c->{
            out.println(c.getName());
            out.println(c.getId());
            out.println(c.getAge());
            out.println(c.getAddress());
        });
    }

    public void destroy() {
    }
}