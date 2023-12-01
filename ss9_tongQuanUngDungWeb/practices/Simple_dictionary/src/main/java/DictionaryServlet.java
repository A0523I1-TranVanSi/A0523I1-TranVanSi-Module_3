import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DictionaryServlet", value = "/DictionaryServlet")
public class DictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,String> dictionary = new HashMap<>();
        dictionary.put("hello","xin chao");
        dictionary.put("car","xe");
        dictionary.put("you","em");
        dictionary.put("computer","lap top");
        dictionary.put("water","nuoc");

        String search = request.getParameter("wordText");
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        String result = dictionary.get(search);
        if (result != null){
            printWriter.println("<h1> Search : "+search+"</h1>");
            printWriter.println("<h1> Result : "+result+"</h1>");
        }else {
            printWriter.println("<h1> Not found</h1>");
        }
        printWriter.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
