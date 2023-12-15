package Controller;

import Model.User;
import Service.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L ;
    private UserDAO userDAO ;
    public void init(){
        userDAO = new UserDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                try {
                    deleteUser(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                listUser(request, response);
                break;
        }
    }
    private void listUser(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        List<User> listUser = userDAO.selectAllUser();
        request.setAttribute("listUser",listUser);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/list.jsp");
        requestDispatcher.forward(request,response);
    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/create.jsp");
        requestDispatcher.forward(request,response);
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User newUser = userDAO.selectUser(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/edit.jsp");
        request.setAttribute("newUser",newUser);
        requestDispatcher.forward(request,response);
    }
    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);

        List<User> userList = userDAO.selectAllUser();
        request.setAttribute("userList",userList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/delete.jsp");
        requestDispatcher.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        switch (action){
            case "create":
                try {
                    insertUser(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "edit":
                try {
                    updateUser(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }
    private void insertUser(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User newUser = new User(name,email,country);
        userDAO.insertUser(newUser);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/create.jsp");
        requestDispatcher.forward(request,response);
    }
    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        int id  = Integer.parseInt(request.getParameter("id"));
        User newUser = new User(id,name,email,country);
        userDAO.updateUser(newUser);
        request.setAttribute("newUser",newUser);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/edit.jsp");
        requestDispatcher.forward(request,response);
    }
}