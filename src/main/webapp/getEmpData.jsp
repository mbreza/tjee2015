<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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


        <div class="contentbox">
            <form action="addEmp.jsp">
            <table class="operationtable">
                <tr class='tableheader'>
                    <td colspan='2'>Dodawanie samochodu</td>
                </tr>
                <tr>
                    <td>Imie:</td>
                    <td><input type="text" name="imie"  /></td>
                </tr>
                <tr>
                    <td>Nazwisko:</td>
                    <td><input type="text" name="nazwisko"  /></td>
                </tr>
                <tr>
                    <td>Stanowisko:</td>
                    <td><input type="text" name="stanowisko"  /></td>
                </tr>
                <tr>
                    <td>Pesel:</td>
                    <td><input type="int" name="pesel"  /></td>
                </tr>
                <tr>
                    <td>Pensja:</td>
                    <td><input type="text" name="pensja" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value=" DODAJ " align="right"></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>