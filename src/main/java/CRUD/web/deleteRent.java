package CRUD.web;

        import CRUD.service.Storage;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

        import java.io.IOException;


@WebServlet(urlPatterns = "/deleterent")
public class deleteRent extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        //Index of Order to delete from database
        int index = -1;
        //ID specified by a user
        int ID = Integer.parseInt(request.getParameter("iddelete"));

        Storage s = (Storage) getServletContext().getAttribute("storage");

        for (int i=0; i<s.getAllRents().size(); i++)
        {
            if (s.getAllRents().get(i).getId_wypozyczenie() == ID)
            {
                index = i;
                break;
            }
        }

        //If found - delete specified Employee
        if (index != -1)
            s.getAllRents().remove(index);

        //Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/AllRent.jsp").forward(request, response);

    }
}