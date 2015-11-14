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
    <p class="bigheader">Samochody</p>

            <div class="menubuttons">
                <div class="menubutton"><a href="index.jsp"><img src="graphic/home.png" class="menubuttonhome"></a></div>
                <div class="menubutton"><a href="AllRent.jsp"><img src="graphic/rent.png" class="menubutton"></a></div>
                <div class="menubutton"><a href="AllCar.jsp"><img src="graphic/car.png" class="menubutton"></a></div>
                <div class="menubutton"><a href="AllEmp.jsp"><img src="graphic/emp.png" class="menubutton"></a></div>
            </div>

        <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />
        <jsp:useBean id="car" class="CRUD.domain.Car" scope="session" />


        <div class="contentbox">
            <form action="addCar.jsp">
            <table class="operationtable">
                <tr class='tableheader'>
                    <td colspan='2'>Dodawanie samochodu</td>
                </tr>
                <tr>
                    <td>Marka:</td>
                    <td><input type="text" name="marka" value="${Car.marka}" /></td>
                </tr>
                <tr>
                    <td>Model:</td>
                    <td><input type="text" name="model" value="${Car.model}" /></td>
                </tr>
                <tr>
                    <td>Kolor:</td>
                    <td><input type="text" name="kolor" value="${Car.kolor}" /></td>
                </tr>
                <tr>
                    <td>Rok produkcji:</td>
                    <td><input type="int" name="rok_produkcji" value="${Car.rok_produkcji}" /></td>
                </tr>
                <tr>
                    <td>Opis:</td>
                    <td><input type="text" name="opis" value="${Car.opis}" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value=" DODAJ " align="right"></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>