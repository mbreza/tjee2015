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
       <p class="bigheader">Pracownicy</p>

                  <div class="menubuttons">
                      <div class="menubutton"><a href="index.jsp"><img src="graphic/home.png" class="menubuttonhome"></a></div>
                      <div class="menubutton"><a href="AllRent.jsp"><img src="graphic/rent.png" class="menubutton"></a></div>
                      <div class="menubutton"><a href="AllCar.jsp"><img src="graphic/car.png" class="menubutton"></a></div>
                      <div class="menubutton"><a href="AllEmp.jsp"><img src="graphic/emp.png" class="menubutton"></a></div>
                  </div>

        <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />
        <jsp:useBean id="emp" class="CRUD.domain.Emp" scope="session" />

        <jsp:setProperty name="car" property="*" />

        <div class="contentbox">

            <table class="operationtable">

                <%
                    String Id_pracownik = request.getParameter("idpselect");
                    String Imie = "", Nazwisko = "", Stanowisko = "";
                    int Pesel =-1, Pensja =-1;
                    for (Emp e : storage.getAllEmps())
                    {
                        if (e.getId_pracownik() == Integer.parseInt(Id_pracownik))
                        {
                            Imie = e.getImie();
                            Nazwisko = e.getNazwisko();
                            Stanowisko = e.getStanowisko();
                            Pesel = e.getPesel();
                            Pensja = e.getPensja();
                            break;
                        }
                    }
                    out.println("<tr class='tableheader'><td colspan='2'>Pracownik ID=" + Id_pracownik + "</td></tr><tr><td>Imie:</td><td>" + Imie + "</td></tr><tr><td>Nazwisko:</td><td>" + Nazwisko + "</td></tr><tr><td>Stanowisko:</td><td>" + Stanowisko + "</td></tr><tr><td>Pesel:</td><td>" + Integer.toString(Pesel) + "</td></tr><tr><td>Pensja:</td><td>" + Integer.toString(Pensja) + "</td></tr>");
                %>



            </table>
        </div>


    </body>
</html>