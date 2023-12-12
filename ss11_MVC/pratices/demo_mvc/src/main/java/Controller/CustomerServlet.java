package Controller;

import Model.Customer;
import Services.CustomerServiceImpl;
import Services.CustomerServices;
//import com.oracle.webservices.internal.impl.encoding.StreamDecoderImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.StringJoiner;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private final CustomerServices customerServices = new CustomerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewCustomer(request, response);
                break;
            default:
                listCustomers(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createCustomer(request,response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            default:
                break;
        }
    }
    private void listCustomers(HttpServletRequest request , HttpServletResponse response){
        List<Customer> customerList = this.customerServices.findAll();
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/list.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showCreateForm(HttpServletRequest request , HttpServletResponse response){
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/create.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void createCustomer(HttpServletRequest request,HttpServletResponse response){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int id = (int) (Math.random()*1000);

        Customer customer = new Customer(id,name,email,address);
        this.customerServices.save(customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/create.jsp");
        request.setAttribute("massage","New customer was created");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showEditForm(HttpServletRequest request , HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer =  this.customerServices.findById(id);
        RequestDispatcher requestDispatcher ;
        if (customer == null){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");

        }else {
            request.setAttribute("customer" , customer);
            requestDispatcher = request.getRequestDispatcher("customer/edit.jsp");
        }
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void updateCustomer(HttpServletRequest request , HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = this.customerServices.findById(id);
        RequestDispatcher requestDispatcher ;
        if (customer == null ){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");
        }else {
            customer.setName(name);
            customer.setEmail(email);
            customer.setAddress(address);
            this.customerServices.update(id,customer);
            request.setAttribute("customer" , customer);
            request.setAttribute("massage" ,  "Customer information was updated");
            requestDispatcher = request.getRequestDispatcher("customer/edit.jsp");
        }
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showDeleteForm(HttpServletRequest request , HttpServletResponse response ){
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = this.customerServices.findById(id);
        RequestDispatcher requestDispatcher ;
        if (customer == null ){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");

        }else {
            request.setAttribute("customer", customer);
            requestDispatcher = request.getRequestDispatcher("customer/delete.jsp");
        }
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
           e.printStackTrace();
        }
    }
    private void deleteCustomer(HttpServletRequest request , HttpServletResponse response  ){
        int id  = Integer.parseInt(request.getParameter("id"));
        Customer customer = this.customerServices.findById(id)  ;
        RequestDispatcher requestDispatcher ;
        if (customer == null){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");
        }else {
            this.customerServices.remove(id);
            try {
                response.sendRedirect("/CustomerServlet");
            } catch (IOException e) {
               e.printStackTrace();
            }
        }
    }
    private void viewCustomer(HttpServletRequest request , HttpServletResponse response ){
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = this.customerServices.findById(id);
        RequestDispatcher requestDispatcher ;
        if (customer == null){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");
        }else {
            request.setAttribute("customer", customer);
            requestDispatcher = request.getRequestDispatcher("customer/view.jsp");
        }
        try{
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
