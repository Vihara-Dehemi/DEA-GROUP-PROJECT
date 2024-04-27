package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/all_component/allCSS.jsp");
    _jspx_dependants.add("/all_component/navbar.jsp");
    _jspx_dependants.add("/all_component/Footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FurryFriends:Index</title>\n");
      out.write("        ");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css\" integrity=\"sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("\n");
      out.write("<link rel =\"stylesheet\" href=\"all_component/style.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write(" .back-img{\n");
      out.write("     background:url(images/pets.jpg);\n");
      out.write("     height:60vh;\n");
      out.write("     width:100%;\n");
      out.write("     background-repeat:no-repeat;\n");
      out.write("     background-size:cover;\n");
      out.write("     \n");
      out.write(" }\n");
      out.write(" .crd-ho:hover{\n");
      out.write("     background-color:#BDBDBD;\n");
      out.write(" }\n");
      out.write("    </style>        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<div class=\"container-fluid\" style=\"height: 10px; background-color:#558b2f\"></div>\n");
      out.write("<div class=\"container-fluid p-4\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-3\">\n");
      out.write("            <h3>Furry Friends </h3>\n");
      out.write("    </div>\n");
      out.write("        <div class =\"col-md-6\">\n");
      out.write("             <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("      <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("      <button class=\"btn btn-primary my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("    </form>\n");
      out.write("             </div>\n");
      out.write("        <div class=\"col-md-3\">\n");
      out.write("            <a href=\"\" class=\"Login.jsp\" btn btn-success >Login </a>  \n");
      out.write("            <a href=\"register.jsp\" class=\"\" btn btn-primary >  Register </a>  \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"navsquare\"><nav class=\"navbar navbar-expand-lg  border-dark bg-custom\">\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"index.jsp\"><i class=\"fas fa-home\"></i>Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("          About Us\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">How It Works</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Find a Pet Sitter</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Terms of Service & Privacy Policy</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"index.jsp\">Most Selling Items</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"AddProducts.jsp\">Pet products</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("      </div>\n");
      out.write("    <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("      <button class=\"btn btn-light my-2 my-sm-0 ml-1\" type=\"submit\">Setting</button>\n");
      out.write("       <button class=\"btn btn-light my-2 my-sm-0 mr-1\" type=\"submit\">Contact Us</button>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid back-img\">\n");
      out.write("            <h2 class=\"text-center text-danger\">Pets Essentials</h2>\n");
      out.write("        </div><br>\n");
      out.write(" <!--Start most selling products-->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h3 class=\"text-center\">Most Selling Items</h3>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                \n");
      out.write("                 <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                \n");
      out.write("                 <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                 <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                 <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card crd-ho\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                         <img alt=\"\" src=\"Items/Purina one Cat food.jpeg\" style=\"width:200px; height:200px;\" class=\"img-thumblin\">\n");
      out.write("                <p>Purina-One Adult Cat Food 500g</p></div>\n");
      out.write("                        <p>Categories:New</p>\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">Add To Cart</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-success btn-sm ml-1\">View</a>\n");
      out.write("                            <a href=\"\" class=\"btn btn-danger btn-sm ml-1\">3500RS</a>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"text-center mt-1\">\n");
      out.write("                <a href=\"\" class=\"btn btn-danger btn-sm text-white\">View All </a> </div>\n");
      out.write("        </div> \n");
      out.write(" <!--End most selling products--> \n");
      out.write(" ");
      out.write("<div class=\"container-fluid text-center text-white p-3\" style=\"background-color:#33691e\";>\n");
      out.write("    <h5>Design and Developed by  <a href=\"https://www.nsbm.ac.lk/\">NSBM Students</a></h5>\n");
      out.write("        \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write(" ");
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
