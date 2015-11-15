package CRUD.web;

import CRUD.service.Storage;
import CRUD.domain.Emp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/updateemp")
public class updateEmp extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int ID = Integer.parseInt(request.getParameter("id_pracownik"));          //ID specified by a user
        String Imie = request.getParameter("imie");           //New first name value
        String Nazwisko = request.getParameter("nazwisko");             // --,,--
        String Stanowisko= request.getParameter("stanowisko");     // --,,--
        int Pesel = Integer.parseInt(request.getParameter("pesel"));                   // --,,--
        int Pensja= Integer.parseInt(request.getParameter("pensja"));

        Storage ss = (Storage) getServletContext().getAttribute("storage");

        for (int i=0; i<ss.getAllEmps().size(); i++)
        {
            if (ss.getAllEmps().get(i).getId_pracownik() == ID)
            {
                Emp e = ss.getAllEmps().get(i);
                e.setImie(Imie);
                e.setNazwisko(Nazwisko);
                e.setStanowisko(Stanowisko);
                e.setPesel(Pesel);
                e.setPensja(Pensja);
            }
        }

        //Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/AllEmp.jsp").forward(request, response);
    }
}