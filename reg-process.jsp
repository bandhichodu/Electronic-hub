<%@ page import="java.sql.*" %>
<%


String email = request.getParameter("email");
String username = request.getParameter("username");
String password = request.getParameter("password");
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkat", "root", "");
	PreparedStatement pst = con.prepareStatement("insert into signup values(?,?,?)");
	
	
    
	pst.setString(1,email);
	pst.setString(2,username);
	pst.setString(3,password);
	int x = pst.executeUpdate();
	if(x>0)
	{
		
	}
	else
	{
		out.println("registration fail");
	}
	if(pst!=null)
	{
		out.print("<h1> one record inserted </h1>");
		con.close();
	}
}
catch(Exception e)
	{
		out.println(e);
	
	}
	
%>