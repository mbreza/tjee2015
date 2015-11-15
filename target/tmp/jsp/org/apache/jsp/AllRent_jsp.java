package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import CRUD.domain.Car;
import CRUD.domain.Emp;
import CRUD.domain.Rent;

public final class AllRent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <title>Sklep muzyczny</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("    <p class=\"bigheader\">Wypozyczenia</p>\n");
      out.write("\n");
      out.write("            <div class=\"menubuttons\">\n");
      out.write("                <div class=\"menubutton\"><a href=\"index.jsp\"><img src=\"graphic/home.png\" class=\"menubuttonhome\"></a></div>\n");
      out.write("                <div class=\"menubutton\"><a href=\"AllRent.jsp\"><img src=\"graphic/rent.png\" class=\"menubutton\"></a></div>\n");
      out.write("                <div class=\"menubutton\"><a href=\"AllCar.jsp\"><img src=\"graphic/car.png\" class=\"menubutton\"></a></div>\n");
      out.write("                <div class=\"menubutton\"><a href=\"AllEmp.jsp\"><img src=\"graphic/emp.png\" class=\"menubutton\"></a></div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"contentbox\">\n");
      out.write("\n");
      out.write("            <!--<a href=\"getEmpData.jsp\" class=\"buttonlink\"><div class=\"addbutton\">+</div></a>-->\n");
      out.write("            <table class=\"operationtable\">\n");
      out.write("                <tr class=\"tableheader\">\n");
      out.write("                    <td colspan=\"6\">Operacje</td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <form action=\"selectRent.jsp\">\n");
      out.write("                        <td><input type=\"text\" name=\"idselect\" value=\"Podaj ID\"/></td>\n");
      out.write("                        <!--<td><a href=\"selectEmp.jsp\"><div class=\"opbutton\"><img src=\"graphic/select.png\"></div></a></td>-->\n");
      out.write("                        <td><input type=\"image\" src=\"graphic/select.png\" border=\"0\" alt=\"Submit\" onclick=\"window.location.href='selectRent.jsp'\" /></td>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <form action=\"updateRent.jsp\">\n");
      out.write("                        <td><input type='text' name='idupdate' value=\"Podaj ID\"/></td>\n");
      out.write("                        <!--<td><a href=\"getRentData.jsp\"><div class=\"opbutton\"><img src=\"graphic/update.png\"></div></a></td>-->\n");
      out.write("                        <td><input type=\"image\" src=\"graphic/update.png\" border=\"0\" alt=\"Submit\" /></td>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <form action=\"deleterent\">\n");
      out.write("                        <td><input type='text' name='iddelete' value=\"Podaj ID\"/></td>\n");
      out.write("                        <!--<td><a href=\"getRentData.jsp\"><div class=\"opbutton\"><img src=\"graphic/delete.png\"></div></a></td>-->\n");
      out.write("                        <td><input type='image' src=\"graphic/delete.png\" border=\"0\" alt=\"Submit\"/></td>\n");
      out.write("                    </form>\n");
      out.write("                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"6\"><a href=\"getRentData.jsp\"><div class=\"opbutton\"><img src=\"graphic/plus.png\"></div></a></td>\n");
      out.write("                                </tr>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            ");
      CRUD.service.Storage storage = null;
      synchronized (application) {
        storage = (CRUD.service.Storage) _jspx_page_context.getAttribute("storage", PageContext.APPLICATION_SCOPE);
        if (storage == null){
          storage = new CRUD.service.Storage();
          _jspx_page_context.setAttribute("storage", storage, PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("            <table class=\"presentationtable\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td>ID</td>\n");
      out.write("                <td>Samochod</td>\n");
      out.write("                <td>Pracownik</td>\n");
      out.write("            </tr>\n");
      out.write("            ");

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

                       
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
