<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@page import="CRUD.domain.Car"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Wypozyczalnia samochodow</title>
    </head>

    <body>
       <p class="bigheader">Samochody</p>

                  <div class="menubuttons">
                      <div class="menubutton"><a href="index.jsp"><img src="graphic/home.png" class="menubuttonhome"></a></div>
                      <div class="menubutton"><a href="AllRent.jsp"><img src="graphic/rent.png" class="menubutton"></a></div>
                      <div class="menubutton"><a href="AllCar.jsp"><img src="graphic/car.png" class="menubutton"></a></div>
                      <div class="menubutton"><a href="AllEmp.jsp"><img src="graphic/emp.png" class="menubutton"></a></div>
                  </div>

        <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />
        <jsp:useBean id="car" class="CRUD.domain.Car" scope="session" />

        <jsp:setProperty name="car" property="*" />

        <div class="contentbox">

            <table class="operationtable">

                <%
                    String Id_samochod = request.getParameter("idpselect");
                    String Marka = "", Model = "", Kolor = "", Opis="";
                    int Rok_produkcji =-1;
                    for (Car c : storage.getAllCars())
                    {
                        if (c.getId_samochod() == Integer.parseInt(Id_samochod))
                        {
                            Marka = c.getMarka();
                            Model = c.getModel();
                            Kolor = c.getKolor();
                            Rok_produkcji = c.getRok_produkcji();
                            Opis = c.getOpis();
                            break;
                        }
                    }
                    out.println("<tr class='tableheader'><td colspan='2'>Samochod ID=" + Id_samochod + "</td></tr><tr><td>Marka:</td><td>" + Marka + "</td></tr><tr><td>Model:</td><td>" + Model + "</td></tr><tr><td>Kolor:</td><td>" + Kolor + "</td></tr><tr><td>Rok produkcji:</td><td>" + Integer.toString(Rok_produkcji) + "</td></tr><tr><td>Opis:</td><td>" + Opis + "</td></tr>");
                %>



            </table>
        </div>


    </body>
</html>