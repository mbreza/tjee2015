<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="CRUD.domain.Car"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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

            <!--<a href="getCarData.jsp" class="buttonlink"><div class="addbutton">+</div></a>-->
            <table class="operationtable">
                <tr class="tableheader">
                    <td colspan="6">Operacje</td>
                </tr>
                <tr>
                    <form action="selectCar.jsp">
                        <td><input type="text" name="idpselect" value="Podaj ID"/></td>
                        <!--<td><a href="selectCar.jsp"><div class="opbutton"><img src="graphic/select.png"></div></a></td>-->
                        <td><input type="image" src="graphic/select.png" border="0" alt="Submit" onclick="window.location.href='selectCar.jsp'" /></td>
                    </form>

                    <form action="updateCar.jsp">
                        <td><input type='text' name='idupdate' value="Podaj ID"/></td>
                        <!--<td><a href="getCarData.jsp"><div class="opbutton"><img src="graphic/update.png"></div></a></td>-->
                        <td><input type="image" src="graphic/update.png" border="0" alt="Submit" /></td>
                    </form>

                    <form action="deletecar">
                        <td><input type='text' name='iddelete' value="Podaj ID"/></td>
                        <!--<td><a href="getCarData.jsp"><div class="opbutton"><img src="graphic/delete.png"></div></a></td>-->
                        <td><input type='image' src="graphic/delete.png" border="0" alt="Submit"/></td>
                    </form>
                </tr>

                                            <tr>
                                                <td colspan="6"><a href="getCarData.jsp"><div class="opbutton"><img src="graphic/plus.png"></div></a></td>
                                            </tr>
            </table>



            <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />

            <table class="presentationtable" align="center">
            <tr>
                <td>ID</td>
                <td>Marka</td>
                <td>Model</td>
                <td>Kolor</td>
                <td>Rok produkcji</td>
                <td>Opis</td>
                <!--<td colspan="3">Operacje</td>-->
            </tr>
            <%
                for (Car car : storage.getAllCars())
                {
                    out.println(
                    "<tr><td>" + car.getId_samochod() + "</td>" +
                    "<td>" + car.getMarka() + "</td>" +
                    "<td>" + car.getModel() + "</td>" +
                    "<td>" + car.getKolor() + "</td>" +
                    "<td>" + car.getRok_produkcji() + "</td>" +
                    "<td>" + car.getOpis() + "</td>" +
                    /*"<td><img src=" + "graphic/select.png" + " class=\"actionbutton\"></td>" +
                    "<td><img src=" + "graphic/update.png" + " class=\"actionbutton\"></td>" +
                    "<td><img src=" + "graphic/delete.png" + " class=\"actionbutton\"></td>" +*/
                    "</tr>");
                }
            %>
            </table>
            </div>


    </body>
</html>