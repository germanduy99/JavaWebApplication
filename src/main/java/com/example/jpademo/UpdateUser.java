package com.example.jpademo;

import dao.UserDAO;
import entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/updateuserServlet")
public class UpdateUser extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String address = req.getParameter("address");

        UserEntity userEntity = new UserEntity(id,name,Integer.parseInt(age),address);
        userDAO.updateUser(userEntity);
        List<UserEntity> listUser = userDAO.findAllUser();
        req.setAttribute("listUser" , listUser);
        req.getRequestDispatcher("listUser.jsp").forward(req,resp);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String address = req.getParameter("address");
        String id = req.getParameter("id");
        req.setAttribute("name" , name);
        req.setAttribute("age" , age);
        req.setAttribute("address" , address);
        req.setAttribute("id" , id);
        req.getRequestDispatcher("updateUser.jsp").forward(req,resp);
    }
}
