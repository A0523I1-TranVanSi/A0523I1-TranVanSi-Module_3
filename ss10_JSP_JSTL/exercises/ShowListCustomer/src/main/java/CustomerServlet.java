import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    public static List<Customer> list ;
    static {
        list = new ArrayList<>();
        list.add(new Customer("Tran Van Si","12/05/2003","Quang Nam","https://vn.images.search.yahoo.com/images/view;_ylt=Awrx.6JAXXBlnrsiBdNtUwx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2U3ZWMzMjAyNDU0NTNlODQ4YmIwMWIyNmFkY2E3YmM2BGdwb3MDOQRpdANiaW5n?back=https%3A%2F%2Fvn.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3DNFT%26type%3DE210VN91215G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D9&w=1024&h=1024&imgurl=www.porchdrinking.com%2Fwp-content%2Fuploads%2F2021%2F07%2FBA8809-1024x1024.png&rurl=https%3A%2F%2Fwww.porchdrinking.com%2Farticles%2F2021%2F07%2F20%2Fdenver-beer-co-jumps-into-the-nft-game-with-beer-for-life-token%2F&size=381.1KB&p=NFT&oid=e7ec320245453e848bb01b26adca7bc6&fr2=piv-web&fr=mcafee&tt=Denver+Beer+Co.+NFT+Release+Grants+Owner+%26quot%3BBeer+for+Life+...&b=0&ni=21&no=9&ts=&tab=organic&sigr=NHrAVq.Lw3RP&sigb=6wkNWES8AlD7&sigi=eGjN9wgcNQ4C&sigt=Kj_uFEMXQGEK&.crumb=XHEla4uBz8J&fr=mcafee&fr2=piv-web&type=E210VN91215G0"));
        list.add(new Customer("Tran Van Si","12/05/2003","Quang Nam","https://vn.images.search.yahoo.com/images/view;_ylt=Awrx.6JAXXBlnrsiBdNtUwx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2U3ZWMzMjAyNDU0NTNlODQ4YmIwMWIyNmFkY2E3YmM2BGdwb3MDOQRpdANiaW5n?back=https%3A%2F%2Fvn.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3DNFT%26type%3DE210VN91215G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D9&w=1024&h=1024&imgurl=www.porchdrinking.com%2Fwp-content%2Fuploads%2F2021%2F07%2FBA8809-1024x1024.png&rurl=https%3A%2F%2Fwww.porchdrinking.com%2Farticles%2F2021%2F07%2F20%2Fdenver-beer-co-jumps-into-the-nft-game-with-beer-for-life-token%2F&size=381.1KB&p=NFT&oid=e7ec320245453e848bb01b26adca7bc6&fr2=piv-web&fr=mcafee&tt=Denver+Beer+Co.+NFT+Release+Grants+Owner+%26quot%3BBeer+for+Life+...&b=0&ni=21&no=9&ts=&tab=organic&sigr=NHrAVq.Lw3RP&sigb=6wkNWES8AlD7&sigi=eGjN9wgcNQ4C&sigt=Kj_uFEMXQGEK&.crumb=XHEla4uBz8J&fr=mcafee&fr2=piv-web&type=E210VN91215G0"));
        list.add(new Customer("Tran Van Si","12/05/2003","Quang Nam","https://vn.images.search.yahoo.com/images/view;_ylt=Awrx.6JAXXBlnrsiBdNtUwx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2U3ZWMzMjAyNDU0NTNlODQ4YmIwMWIyNmFkY2E3YmM2BGdwb3MDOQRpdANiaW5n?back=https%3A%2F%2Fvn.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3DNFT%26type%3DE210VN91215G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D9&w=1024&h=1024&imgurl=www.porchdrinking.com%2Fwp-content%2Fuploads%2F2021%2F07%2FBA8809-1024x1024.png&rurl=https%3A%2F%2Fwww.porchdrinking.com%2Farticles%2F2021%2F07%2F20%2Fdenver-beer-co-jumps-into-the-nft-game-with-beer-for-life-token%2F&size=381.1KB&p=NFT&oid=e7ec320245453e848bb01b26adca7bc6&fr2=piv-web&fr=mcafee&tt=Denver+Beer+Co.+NFT+Release+Grants+Owner+%26quot%3BBeer+for+Life+...&b=0&ni=21&no=9&ts=&tab=organic&sigr=NHrAVq.Lw3RP&sigb=6wkNWES8AlD7&sigi=eGjN9wgcNQ4C&sigt=Kj_uFEMXQGEK&.crumb=XHEla4uBz8J&fr=mcafee&fr2=piv-web&type=E210VN91215G0"));
        list.add(new Customer("Tran Van Si","12/05/2003","Quang Nam","https://vn.images.search.yahoo.com/images/view;_ylt=Awrx.6JAXXBlnrsiBdNtUwx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2U3ZWMzMjAyNDU0NTNlODQ4YmIwMWIyNmFkY2E3YmM2BGdwb3MDOQRpdANiaW5n?back=https%3A%2F%2Fvn.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3DNFT%26type%3DE210VN91215G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D9&w=1024&h=1024&imgurl=www.porchdrinking.com%2Fwp-content%2Fuploads%2F2021%2F07%2FBA8809-1024x1024.png&rurl=https%3A%2F%2Fwww.porchdrinking.com%2Farticles%2F2021%2F07%2F20%2Fdenver-beer-co-jumps-into-the-nft-game-with-beer-for-life-token%2F&size=381.1KB&p=NFT&oid=e7ec320245453e848bb01b26adca7bc6&fr2=piv-web&fr=mcafee&tt=Denver+Beer+Co.+NFT+Release+Grants+Owner+%26quot%3BBeer+for+Life+...&b=0&ni=21&no=9&ts=&tab=organic&sigr=NHrAVq.Lw3RP&sigb=6wkNWES8AlD7&sigi=eGjN9wgcNQ4C&sigt=Kj_uFEMXQGEK&.crumb=XHEla4uBz8J&fr=mcafee&fr2=piv-web&type=E210VN91215G0"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("list", list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
