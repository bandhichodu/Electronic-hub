<%@ page import="java.sql.*" %>
<%


String name = request.getParameter("name");
String email = request.getParameter("email");
int  age = request.getParameter("age");
String gender = request.getParameter("gender");
String brand  = request.getParameter("brand");
int no = request.getParameter("no");
String payment = request.getParameter("payment");
String address = request.getParameter("address");
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkat", "root", "");
	PreparedStatement pst = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?)");
	
	
    pst.setString(1,name);
	pst.setString(2,email);
	pst.setint(3,age);
	pst.setString(4,gender);
	pst.setString(5,brand);
	pst.setint(6,no);
	pst.setString(7,payment);
	pst.setString(8,address);
	int x = pst.executeUpdate();
	if(x>0)
	{
		
	}
	else
	{
		out.println("Order fail");
	}
	if(pst!=null)
	{
		out.print("<h1> *** Your Order has been booked successfully *** </h1>");
		con.close();
	}
}
catch(Exception e)
	{
		out.println(e);
	
	}
	
%>