<%@ page import="java.sql.*" %>
<%

String email = request.getParameter("email");
String password = request.getParameter("password");

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkat", "root", "");
	PreparedStatement pst = con.prepareStatement("select username from signup where email='"+email+"' and password='"+password+"'");
    ResultSet rs= pst.executeQuery();
    if(rs.next())
	{
		response.sendRedirect("index.html");
	}
    else
	{
		out.print("<BR><BR><BR><center> <p style='color: red;'>INCORRECT EMAIL/PASSWORD</p> </center>");
		
	}
	
}
catch(Exception e)
	{
		out.println(e);
	
	}
	
%>

