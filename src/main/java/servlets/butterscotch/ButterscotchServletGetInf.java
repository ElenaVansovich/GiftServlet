package servlets.butterscotch;

import servlets.CreateGiftServlet;
import sweets.Butterscotch;
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
@WebServlet("/ButterscotchServletGetInf")
public class ButterscotchServletGetInf   extends HttpServlet {

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
        try {
            Sweet butterscotch = new Butterscotch(request.getParameter("nameButterscotch"),
                    Double.parseDouble(request.getParameter("priceButterscotch")),
                    Double.parseDouble(request.getParameter("sugarButterscotch")),
                    Double.parseDouble(request.getParameter("weightButterscotch")),
                    Double.parseDouble(request.getParameter("chocolateButterscotch")));
            CreateGiftServlet.gift.add(butterscotch);
        }
        catch (NumberFormatException e){ }
        request.getRequestDispatcher("/WEB-INF/createGiftForm.jsp").forward(request, response);
    }
}
