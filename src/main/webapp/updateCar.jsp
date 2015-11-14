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
        <p class="bigheader">Wypozyczalnia samochodow</p>

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
                   String ID = request.getParameter("idupdate");
                    String Marka = "", Model = "", Kolor = "", Opis="";
                    int Rok_produkcji = -1;
                    for (Car c : storage.getAllCars())
                    {
                        if (c.getId_samochod() == Integer.parseInt(ID))
                        {
                            Marka = c.getMarka();
                            Model = c.getModel();
                            Kolor = c.getKolor();
                            Rok_produkcji = c.getRok_produkcji();
                            Opis = c.getOpis();
                            break;
                        }
                    }
                    out.println("<form action='updatecar'><input type='hidden' name='id_samochod' value='" + ID + "' /><tr class='tableheader'><td colspan='2'>Samochod ID=" + ID + "</td></tr><tr><td>Marka:</td><td><input type='text' name='marka' value='" + Marka + "' /></td></tr><tr><td>Model:</td><td><input type='text' name='model' value='" + Model + "' /></td></tr><tr><td>Kolor:</td><td><input type='text' name='kolor' value='" + Kolor + "' /></td></tr><tr><td>rok produkcji:</td><td><input type='text' name='rok_produkcji' value='" + Integer.toString(Rok_produkcji) + "' /></td><tr><td>Opis:</td><td><input type='text' name='opis' value='" + Opis + "' /></td></tr></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
                    out.println("<p align='center'><a href='showAllCars.jsp'>Powrót do listy klientów</a></p>");
                %>



            </table>
        </div>


    </body>
</html>