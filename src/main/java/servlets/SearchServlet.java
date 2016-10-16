package servlets;

import sweets.Sweet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Elena on 16.10.2016.
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {

    public static List<Sweet> sweetList = new ArrayList<Sweet>();

    /**
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }

    /**
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double price = Double.parseDouble(request.getParameter("price").toString());
        double sugar = Double.parseDouble(request.getParameter("sugar").toString());
        double weight = Double.parseDouble(request.getParameter("weight").toString());
        sweetList = CreateGiftServlet.gift.searchSweet(price, sugar, weight);
        request.getRequestDispatcher("/WEB-INF/showSearchSweet.jsp").forward(request, response);
    }
}