package sevlet;

import Model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SimpleCalculatorServlet", value = "/SimpleCalculatorServlet")
public class SimpleCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperator = Integer.parseInt(request.getParameter("first-operand"));
        float secondOperator = Integer.parseInt(request.getParameter("second-operand"));
        char operator = request.getParameter("operator").charAt(0);
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h3> Result : </h3>");
        try{
            float result = Calculator.calculator(firstOperator,secondOperator,operator);
            printWriter.println(firstOperator+" "+operator+" "+secondOperator+" = "+result);
        }catch (Exception e ){
            printWriter.println(e.getMessage());
        }
        printWriter.println("</html>");
    }
}
