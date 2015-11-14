package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import CRUD.domain.Car;

public final class updateCar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <title>Wypozyczalnia samochodow</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <p class=\"bigheader\">Wypozyczalnia samochodow</p>\n");
      out.write("\n");
      out.write("                    <div class=\"menubuttons\">\n");
      out.write("                        <div class=\"menubutton\"><a href=\"index.jsp\"><img src=\"graphic/home.png\" class=\"menubuttonhome\"></a></div>\n");
      out.write("                        <div class=\"menubutton\"><a href=\"AllRent.jsp\"><img src=\"graphic/rent.png\" class=\"menubutton\"></a></div>\n");
      out.write("                        <div class=\"menubutton\"><a href=\"AllCar.jsp\"><img src=\"graphic/car.png\" class=\"menubutton\"></a></div>\n");
      out.write("                        <div class=\"menubutton\"><a href=\"AllEmp.jsp\"><img src=\"graphic/emp.png\" class=\"menubutton\"></a></div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("        ");
      CRUD.service.Storage storage = null;
      synchronized (application) {
        storage = (CRUD.service.Storage) _jspx_page_context.getAttribute("storage", PageContext.APPLICATION_SCOPE);
        if (storage == null){
          storage = new CRUD.service.Storage();
          _jspx_page_context.setAttribute("storage", storage, PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      CRUD.domain.Car car = null;
      synchronized (session) {
        car = (CRUD.domain.Car) _jspx_page_context.getAttribute("car", PageContext.SESSION_SCOPE);
        if (car == null){
          car = new CRUD.domain.Car();
          _jspx_page_context.setAttribute("car", car, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("car"), request);
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"contentbox\">\n");
      out.write("\n");
      out.write("            <table class=\"operationtable\">\n");
      out.write("\n");
      out.write("                ");

                   String ID = request.getParameter("idupdate");
                    String Marka = "", Model = "", Kolor = "", Opis="";
                    int Rok_produkcji = -1;
                    for (Car c : storage.getAllCars())
                    {
                        if (c.getId_samochod() == Integer.parseInt(ID))
                        {
                            Marka = c.getMarka();
                            Model = c.getModel();
                            Kolor = c.getKolor();
                            Rok_produkcji = c.getRok_produkcji();
                            Opis = c.getOpis();
                            break;
                        }
                    }
                    out.println("<form action='updatecar'><input type='hidden' name='id_samochod' value='" + ID + "' /><tr class='tableheader'><td colspan='2'>Samochod ID=" + ID + "</td></tr><tr><td>Marka:</td><td><input type='text' name='marka' value='" + Marka + "' /></td></tr><tr><td>Model:</td><td><input type='text' name='model' value='" + Model + "' /></td></tr><tr><td>Kolor:</td><td><input type='text' name='kolor' value='" + Kolor + "' /></td></tr><tr><td>rok produkcji:</td><td><input type='text' name='rok_produkcji' value='" + Integer.toString(Rok_produkcji) + "' /></td><tr><td>Opis:</td><td><input type='text' name='opis' value='" + Opis + "' /></td></tr></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
                    out.println("<p align='center'><a href='showAllCars.jsp'>Powrót do listy klientów</a></p>");
                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
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
