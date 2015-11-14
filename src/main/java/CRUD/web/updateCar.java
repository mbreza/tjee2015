package CRUD.web;

        import CRUD.service.Storage;
        import CRUD.domain.Car;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

        import java.io.IOException;

@WebServlet(urlPatterns = "/updatecar")
public class updateCar extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int ID = Integer.parseInt(request.getParameter("id_samochod"));          //ID specified by a user
        String Marka = request.getParameter("marka");           //New first name value
        String Model = request.getParameter("model");             // --,,--
        String Kolor= request.getParameter("kolor");     // --,,--
        int Rok_produkcji = Integer.parseInt(request.getParameter("rok_produkcji"));                   // --,,--
        String Opis= request.getParameter("opis");

        Storage ss = (Storage) getServletContext().getAttribute("storage");

        for (int i=0; i<ss.getAllCars().size(); i++)
        {
            if (ss.getAllCars().get(i).getId_samochod() == ID)
            {
                Car c = ss.getAllCars().get(i);
                c.setMarka(Marka);
                c.setModel(Model);
                c.setKolor(Kolor);
                c.setRok_produkcji(Rok_produkcji);
                c.setOpis(Opis);
            }
        }

        //Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/AllCar.jsp").forward(request, response);
    }
}