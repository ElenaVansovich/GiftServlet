package servlets.chocolate;

import servlets.CreateGiftServlet;
import sweets.Chocolate;
import sweets.Sweet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Elena on 15.10.2016.
 */
@WebServlet("/ChocolateServletGetInf")
public class ChocolateServletGetInf extends HttpServlet {

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
        try{
            Sweet chocolate = new Chocolate(request.getParameter("nameChocolate"),
                    Double.parseDouble(request.getParameter("priceChocolate")),
                    Double.parseDouble(request.getParameter("sugarChocolate")),
                    Double.parseDouble(request.getParameter("weightChocolate")),
                    Double.parseDouble(request.getParameter("chocolate")));
            CreateGiftServlet.gift.add(chocolate);
        }
        catch (NumberFormatException e){ }
        request.getRequestDispatcher("/WEB-INF/createGiftForm.jsp").forward(request, response);
    }
}
