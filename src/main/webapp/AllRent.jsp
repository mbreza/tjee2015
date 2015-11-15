<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="CRUD.domain.Car"
import="CRUD.domain.Emp"
import="CRUD.domain.Rent"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Sklep muzyczny</title>
    </head>

    <body>
    <p class="bigheader">Wypozyczenia</p>

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
                    <form action="selectRent.jsp">
                        <td><input type="text" name="idselect" value="Podaj ID"/></td>
                        <!--<td><a href="selectEmp.jsp"><div class="opbutton"><img src="graphic/select.png"></div></a></td>-->
                        <td><input type="image" src="graphic/select.png" border="0" alt="Submit" onclick="window.location.href='selectRent.jsp'" /></td>
                    </form>

                    <form action="updateRent.jsp">
                        <td><input type='text' name='idupdate' value="Podaj ID"/></td>
                        <!--<td><a href="getRentData.jsp"><div class="opbutton"><img src="graphic/update.png"></div></a></td>-->
                        <td><input type="image" src="graphic/update.png" border="0" alt="Submit" /></td>
                    </form>

                    <form action="deleterent">
                        <td><input type='text' name='iddelete' value="Podaj ID"/></td>
                        <!--<td><a href="getRentData.jsp"><div class="opbutton"><img src="graphic/delete.png"></div></a></td>-->
                        <td><input type='image' src="graphic/delete.png" border="0" alt="Submit"/></td>
                    </form>
                </tr>
                                <tr>
                                    <td colspan="6"><a href="getRentData.jsp"><div class="opbutton"><img src="graphic/plus.png"></div></a></td>
                                </tr>
            </table>

            <jsp:useBean id="storage" class="CRUD.service.Storage" scope="application" />

            <table class="presentationtable" align="center">
            <tr>
                <td>ID</td>
                <td>Samochod</td>
                <td>Pracownik</td>
            </tr>
            <%
                           for (Rent rent : storage.getAllRents())
                                                     {
                                                         boolean Found = false;
                                                         out.println("<tr><td>" + rent.getId_wypozyczenie() + "</td>");
                                                         //Printing customer details
                                                         for (Car car : storage.getAllCars())
                                                         {
                                                             if (car.getId_samochod() == rent.getSamochodID())
                                                             {
                                                                 out.println("<td>" + car.getMarka() + " " + car.getModel() + "</td>");
                                                                 Found = true;
                                                             }
                                                         }
                                                         if (!Found)
                                                             out.println("<td>B/D</td>");
                                                         else
                                                             Found = false;
                                                         //Printing employee details

                                                         for (Emp emp : storage.getAllEmps())
                                                         {
                                                             if (emp.getId_pracownik() == rent.getPracownikID())
                                                             {
                                                                 out.println("<td>" + emp.getImie() + " " + emp.getNazwisko() + "</td>");
                                                                 Found = true;
                                                             }
                                                         }

                                                            if (!Found)
                                                                out.println("<td>B/D</td>");
                                                                else
                                                                 Found = false;
                                                         }

                       %>
            </table>

        </div>
    </body>
</html>