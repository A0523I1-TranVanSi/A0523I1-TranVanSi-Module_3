import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountServlet", value = "/ProductDiscountServlet")
public class ProductDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_description = request.getParameter("Description");
        float list_price = Float.parseFloat(request.getParameter("Price"));
        float discount_percent = Float.parseFloat(request.getParameter("Discount"));

        double discount_amount = list_price * discount_percent * 0.01 ;
        double discount_price = list_price - discount_amount ;

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h3> Product Description : " + product_description + "</h3>");
        printWriter.println("<h3> List Price : " + list_price + "</h3>");
        printWriter.println("<h3> Discount Percent : " + discount_percent + "</h3>");
        printWriter.println("<h3> Discount Amount : " + discount_amount + "</h3>");
        printWriter.println("<h3> Discount Price : " + discount_price + "</h3>");
        printWriter.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
