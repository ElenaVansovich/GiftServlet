package servlets.jelly;

import servlets.CreateGiftServlet;
import sweets.Chocolate;
import sweets.Jelly;
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
@WebServlet("/JellyServletGetInf")
public class JellyServletGetInf extends HttpServlet {

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
            Sweet jelly = new Jelly(request.getParameter("nameJelly"),
                    Double.parseDouble(request.getParameter("priceJelly")),
                    Double.parseDouble(request.getParameter("sugarJelly")),
                    Double.parseDouble(request.getParameter("weightJelly")),
                    Double.parseDouble(request.getParameter("gelatin")));
            CreateGiftServlet.gift.add(jelly);
        }
        catch (NumberFormatException e){ }
        request.getRequestDispatcher("/WEB-INF/createGiftForm.jsp").forward(request, response);
    }
}
