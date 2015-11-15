package CRUD.web;


        import CRUD.service.Storage;
        import CRUD.domain.Emp;
        import CRUD.domain.Rent;
        import CRUD.domain.Car;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

        import java.io.IOException;

@WebServlet(urlPatterns = "/updaterent")
public class updateRent extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int ID = Integer.parseInt(request.getParameter("id"));          //ID specified by a user
        String [] c = request.getParameterValues("cars");
        int CarID = Integer.parseInt(c[0]);
        String [] e = request.getParameterValues("emps");
        int EmpID = Integer.parseInt(e[0]);

        Storage s = (Storage) getServletContext().getAttribute("storage");

        for (int i=0; i<s.getAllRents().size(); i++) {
            if (s.getAllRents().get(i).getId_wypozyczenie() == ID)
            {
                Rent r = s.getAllRents().get(i);
                r.setSamochodID(CarID);
                r.setPracownikID(EmpID);
                break;
            }
        }

        //Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/AllRent.jsp").forward(request, response);
    }
}
