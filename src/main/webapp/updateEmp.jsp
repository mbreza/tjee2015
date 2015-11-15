<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@page import="CRUD.domain.Emp"%>

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
        <jsp:useBean id="emp" class="CRUD.domain.Emp" scope="session" />

        <jsp:setProperty name="emp" property="*" />

        <div class="contentbox">

            <table class="operationtable">

                <%
                   String ID = request.getParameter("idupdate");
                    String Imie = "", Nazwisko = "", Stanowisko = "";
                    int Pesel = -1, Pensja = -1;
                    for (Emp e : storage.getAllEmps())
                    {
                        if (e.getId_pracownik() == Integer.parseInt(ID))
                        {
                            Imie = e.getImie();
                            Nazwisko = e.getNazwisko();
                            Stanowisko = e.getStanowisko();
                            Pesel = e.getPesel();
                            Pensja = e.getPensja();
                            break;
                        }
                    }
                    out.println("<form action='updateemp'><input type='hidden' name='id_pracownik' value='" + ID + "' /><tr class='tableheader'><td colspan='2'>Pracownik ID=" + ID + "</td></tr><tr><td>Imie:</td><td><input type='text' name='imie' value='" + Imie + "' /></td></tr><tr><td>Nazwisko:</td><td><input type='text' name='nazwisko' value='" + Nazwisko + "' /></td></tr><tr><td>Stanowisko:</td><td><input type='text' name='stanowisko' value='" + Stanowisko + "' /></td></tr><tr><td>Pesel:</td><td><input type='text' name='pesel' value='" + Integer.toString(Pesel) + "' /></td><tr><td>Pansja:</td><td><input type='text' name='pensja' value='" + Integer.toString(Pensja) + "' /></td></tr></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
                    out.println("<p align='center'><a href='showAllEmps.jsp'>Powrót do listy klientów</a></p>");
                %>



            </table>
        </div>


    </body>
</html>