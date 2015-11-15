<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@page
import="CRUD.domain.Rent"
import="CRUD.domain.Car"
import="CRUD.domain.Emp"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Wypozyczalnia samochodw</title>
    </head>

    <body>
               <title>Wypozyczalnia samochodow</title>
           </head>

           <body>
              <p class="bigheader">Pracownicy</p>

                         <div class="menubuttons">
                             <div class="menubutton"><a href="index.jsp"><img src="graphic/home.png" class="menubuttonhome"></a></div>
                             <div class="menubutton"><a href="AllRent.jsp"><img src="graphic/rent.png" class="menubutton"></a></div>
                             <div class="menubutton"><a href="AllCar.jsp"><img src="graphic/car.png" class="menubutton"></a></div>
                             <div class="menubutton"><a href="AllEmp.jsp"><img src="graphic/emp.png" class="menubutton"></a></div>
                         </div>

        <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />
        <jsp:useBean id="emp" class="CRUD.domain.Emp" scope="session" />

        <jsp:setProperty name="emp" property="*"/>


        <div class="contentbox">

            <table class="operationtable">

                <%
                    String ID = request.getParameter("idselect");
                                       int CarID = -1, EmpID = -1;
                                       String CarInfo = "", EmpInfo = "";

                                       for (Rent r : storage.getAllRents())
                                       {
                                           if (r.getId_wypozyczenie() == Integer.parseInt(ID))
                                           {

                                               CarID = r.getSamochodID();
                                               EmpID = r.getPracownikID();
                                               break;
                                           }
                                       }

                                       for (Car c : storage.getAllCars())
                                       {
                                           if (c.getId_samochod() == CarID)
                                           {
                                               CarInfo = c.getMarka() + " " + c.getModel();
                                               break;
                                           }
                                       }

                                       for (Emp e : storage.getAllEmps())
                                       {
                                           if (e.getId_pracownik() == EmpID)
                                           {
                                               EmpInfo = e.getImie() + " " + e.getNazwisko();
                                               break;
                                           }
                                       }
                                       out.println("<tr class='tableheader'><td colspan='2'>Wypozyczenie ID=" + ID + "</td></tr><tr><td>Samochod:</td><td>" + CarInfo + "</td></tr><tr><td>Pracownik:</td><td>" + EmpInfo + "</td></tr>");
                                       out.println("<p align='center'><a href='AllRent.jsp'>Powrót do listy zamówień</a></p>");

                %>



            </table>
        </div>


    </body>
</html>