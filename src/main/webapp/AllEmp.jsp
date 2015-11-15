<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="CRUD.domain.Emp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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

<div class="contentbox">

            <!--<a href="getEmpData.jsp" class="buttonlink"><div class="addbutton">+</div></a>-->
            <table class="operationtable">
                <tr class="tableheader">
                    <td colspan="6">Operacje</td>
                </tr>

                <tr>
                    <form action="selectEmp.jsp">
                        <td><input type="text" name="idpselect" value="Podaj ID"/></td>
                        <!--<td><a href="selectEmp.jsp"><div class="opbutton"><img src="graphic/select.png"></div></a></td>-->
                        <td><input type="image" src="graphic/select.png" border="0" alt="Submit" onclick="window.location.href='selectEmp.jsp'" /></td>
                    </form>

                    <form action="updateEmp.jsp">
                        <td><input type='text' name='idupdate' value="Podaj ID"/></td>
                        <!--<td><a href="getEmpData.jsp"><div class="opbutton"><img src="graphic/update.png"></div></a></td>-->
                        <td><input type="image" src="graphic/update.png" border="0" alt="Submit" /></td>
                    </form>
                    <form action="deleteemp">
                        <td><input type='text' name='iddelete' value="Podaj ID"/></td>
                        <!--<td><a href="getEmpData.jsp"><div class="opbutton"><img src="graphic/delete.png"></div></a></td>-->
                        <td><input type='image' src="graphic/delete.png" border="0" alt="Submit"/></td>
                    </form>
                </tr>
                                <tr>
                                    <td colspan="6"><a href="getEmpData.jsp"><div class="opbutton"><img src="graphic/plus.png"></div></a></td>
                                </tr>
            </table>

            <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />

            <table class="presentationtable" align="center">
            <tr>
                <td>ID</td>
                <td>Imie</td>
                <td>Nazwisko</td>
                <td>Stanowisko</td>
                <td>Pesel</td>
                <td>Pensja</td>
                <!--<td colspan="3">Operacje</td>-->
            </tr>
            <%
                for (Emp emp : storage.getAllEmps())
                {
                    out.println(
                    "<tr><td>" + emp.getId_pracownik() + "</td>" +
                    "<td>" + emp.getImie() + "</td>" +
                    "<td>" + emp.getNazwisko() + "</td>" +
                    "<td>" + emp.getStanowisko() + "</td>" +
                    "<td>" + emp.getPesel() + "</td>" +
                    "<td>" + emp.getPensja() + "</td>" +
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