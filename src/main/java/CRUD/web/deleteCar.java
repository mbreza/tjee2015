package CRUD.web;

        import CRUD.service.Storage;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

        import java.io.IOException;


@WebServlet(urlPatterns = "/deletecar")
public class deleteCar extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        //Index of Customer to delete from database
        int index = -1;
        //ID specified by a user
        int ID = Integer.parseInt(request.getParameter("iddelete"));

        Storage ss = (Storage) getServletContext().getAttribute("storage");

        for (int i=0; i<ss.getAllCars().size(); i++)
        {
            if (ss.getAllCars().get(i).getId_samochod() == ID)
            {
                index = i;
                break;
            }
        }

        //If found - delete specified Customer
        if (index != -1)
            ss.getAllCars().remove(index);

        //Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/AllCar.jsp").forward(request, response);

    }
}