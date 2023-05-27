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

@WebServlet("/deleteuserServlet")
public class DeleteUser extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            userDAO.removeUser(Integer.parseInt(id));
            List<UserEntity> listUser = userDAO.findAllUser();
            req.setAttribute("listUser" , listUser);
            req.getRequestDispatcher("listUser.jsp").forward(req,resp);
        }catch (Exception e){
            log(e.getMessage());
        }
    }
}
