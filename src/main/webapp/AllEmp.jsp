<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="CRUD.domain.Emp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Wypozyczalnia samochodow</title>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

            <jsp:useBean id="storage" class="CRUD.service.StorageService" scope="application" />

<table class="presentationtable" align="center">

  <tr>
  <th>ID</th>
  <th>Imie</th>
  <th>Nazwisko</th>
  <th>Stanowisko</th>
  <th>Pesel</th>
  <th>Pensja</th>
  </tr>

  <tr>
<c:forEach var="empss" items="${storage.getAllEmps()}">
     <td><c:out value="${empss.getId_pracownik()}"></c:out></td>
     <td><c:out value="${empss.getImie()}"></c:out></td>
     <td><c:out value="${empss.getNazwisko()}"></c:out></td>
     <td><c:out value="${empss.getStanowisko()}"></c:out></td>
     <td><c:out value="${empss.getPesel()}"></c:out></td>
     <td><c:out value="${empss.getPensja()}"></c:out></td>

     </c:forEach>
 </tr>
            </table>
            </div>


    </body>
</html>