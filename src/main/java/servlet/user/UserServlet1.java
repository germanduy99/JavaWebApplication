package servlet.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.UserEntity;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet("/userServlet1")
public class UserServlet1 extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(Objects.isNull(req.getParameter("id"))){
            req.setAttribute("id" , "");
            req.setAttribute("name" , "");
            req.setAttribute("age" , "");
            req.setAttribute("address" , "");
            req.getRequestDispatcher("user/createOrUpdateUser.jsp").forward(req,resp);
        }else {
            req.setAttribute("id" , req.getParameter("id"));
            req.setAttribute("name" , req.getParameter("name"));
            req.setAttribute("age" , req.getParameter("age"));
            req.setAttribute("address" , req.getParameter("address"));
            req.getRequestDispatcher("user/createOrUpdateUser.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("userName");
            Integer age = Integer.parseInt(req.getParameter("userAge"));
            String address = req.getParameter("userAddress");

            if(req.getParameter("userId").equals("")){
                UserEntity userEntity = new UserEntity(name, age,address);
                userDAO.insertUser(userEntity);
            }else{
                Integer id = Integer.parseInt(req.getParameter("userId"));
                UserEntity userEntity = new UserEntity(id,name, age,address);
                userDAO.updateUser(userEntity);
            }


            List<UserEntity> listUser = userDAO.findAllUser();
            req.setAttribute("listUser", listUser);
            req.getRequestDispatcher("user/listUser.jsp").forward(req,resp);
        }catch (Exception ex){
            log(ex.getMessage());
        }
    }
}