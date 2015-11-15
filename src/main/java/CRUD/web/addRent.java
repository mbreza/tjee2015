package CRUD.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import CRUD.domain.Rent;
import CRUD.domain.Emp;
import CRUD.domain.Car;
import CRUD.service.Storage;

@WebServlet(urlPatterns = "/addrent")
public class addRent extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String [] c = request.getParameterValues("cars");
        int SamochodID = Integer.parseInt(c[0]);
        String [] e = request.getParameterValues("emps");
        int PracownikID = Integer.parseInt(e[0]);

        Storage storage = (Storage) getServletContext().getAttribute("storage");


        Rent newRent = new Rent(SamochodID, PracownikID);
        storage.add(newRent);

        //Navigate to page with list of all orders
        this.getServletContext().getRequestDispatcher("/AllRent.jsp").forward(request, response);
    }
}