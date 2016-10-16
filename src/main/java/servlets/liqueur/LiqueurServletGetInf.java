package servlets.liqueur;

import servlets.CreateGiftServlet;
import sweets.Chocolate;
import sweets.Liqueur;
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
@WebServlet("/LiqueurServletGetInf")
public class LiqueurServletGetInf extends HttpServlet {

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
            Sweet liqueur = new Liqueur(request.getParameter("nameLiqueur"),
                    Double.parseDouble(request.getParameter("priceLiqueur")),
                    Double.parseDouble(request.getParameter("sugarLiqueur")),
                    Double.parseDouble(request.getParameter("weightLiqueur")),
                    Double.parseDouble(request.getParameter("liqueur")));
            CreateGiftServlet.gift.add(liqueur);
        }
        catch (NumberFormatException e){ }
        request.getRequestDispatcher("/WEB-INF/createGiftForm.jsp").forward(request, response);
    }
}
