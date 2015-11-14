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



        <div class="contentbox">
            <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />
            <jsp:useBean id="car" class="CRUD.domain.Car" scope="session" />
            <jsp:setProperty name="car" property="*" />

            <%
            storage.add(car);
            %>

            <div class="successbox">Pomyślnie dodano klienta do bazy.</div>

            <p align="center">
                <a href="AllCar.jsp">Powrót do listy klientów</a>
            </p>
        </div>
    </body>
</html>