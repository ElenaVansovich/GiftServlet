package servlets.wafer;

import servlets.CreateGiftServlet;
import sweets.Chocolate;
import sweets.Sweet;
import sweets.Wafer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Elena on 15.10.2016.
 */
@WebServlet("/WaferServletGetInf")
public class WaferServletGetInf extends HttpServlet {

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
        Sweet wafer = new Wafer(request.getParameter("nameWafer"),
                Double.parseDouble(request.getParameter("priceWafer")),
                Double.parseDouble(request.getParameter("sugarWafer")),
                Double.parseDouble(request.getParameter("weightWafer")),
                Double.parseDouble(request.getParameter("wafer")));
        CreateGiftServlet.gift.add(wafer);
        request.getRequestDispatcher("/WEB-INF/createGiftForm.jsp").forward(request, response);
    }
}
