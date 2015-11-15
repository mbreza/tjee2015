<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="CRUD.domain.Emp"
import="CRUD.domain.Car"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Sklep muzyczny</title>
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

        <div class="contentbox">
            <form action="addrent">
            <table class="operationtable">
                <tr class='tableheader'>
                    <td colspan='2'>Dodawanie zamówienia</td>
                </tr>
                <tr>
                    <td>Pracownik:</td>
                    <td>
                        <select name="emps">
                            <%
                                for (Emp emp2 : storage.getAllEmps())
                                {
                                    out.println("<option value='" + emp2.getId_pracownik() + "'>" + emp2.getId_pracownik() + ". " + emp2.getImie() + " " + emp2.getNazwisko() + "</option>");
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Samochod:</td>
                    <td>
                        <select name="cars">
                            <%
                                for (Car car2 : storage.getAllCars())
                                {
                                    out.println("<option value='" + car2.getId_samochod() + "'>" + car2.getId_samochod() + ". " + car2.getMarka() + " " + car2.getModel() + "</option>");
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value=" DODAJ " align="right"></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>