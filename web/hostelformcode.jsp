
 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String name=request.getParameter("name");
    String type=request.getParameter("type");
    String year=request.getParameter("year");
    String monthly=request.getParameter("monthly");
    String occupancy=request.getParameter("occupancy");
    String food=request.getParameter("food");
    String wifi=request.getParameter("wifi");
    String laundry=request.getParameter("laundry");
    String washing=request.getParameter("washing");
    String cupboard=request.getParameter("cupboard");
    String furniture=request.getParameter("furniture");
    String housekeeping=request.getParameter("housekeeping");
    String hotwater=request.getParameter("hotwater");
    String intime=request.getParameter("intime");
    String ac=request.getParameter("ac");
    String location=request.getParameter("location");
    String hostelcontact=request.getParameter("hostelcontact");
    String notice =request.getParameter("notice");
    String description=request.getParameter("description");
    String contactperson=request.getParameter("contactperson");
    String contact=request.getParameter("contact");
    String hostelid=request.getParameter("hostelid");
    String rules=request.getParameter("rules");
    
    
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into hostelapplicant values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      st.setString(1,username);
      st.setString(2,password);
      st.setString(3,name);
      st.setString(4,type);
      st.setString(5,year);
      st.setString(6,monthly);
      st.setString(7,occupancy);
      st.setString(8,food);
      st.setString(9,wifi);
      st.setString(10,laundry);
      st.setString(11,washing);
      st.setString(12,cupboard);
      st.setString(13,furniture);
      st.setString(14,housekeeping); 
      st.setString(15,hotwater);
      st.setString(16,intime);
      st.setString(17,ac);
      st.setString(18,location);
      st.setString(19,hostelcontact);
      st.setString(20,notice);
      st.setString(21,description);
      st.setString(22,contactperson);
      st.setString(23,contact);
      st.setString(24,hostelid); 
      st.setString(25,rules);
      st.executeUpdate();
      con.close();
      response.sendRedirect("applicanthome.jsp");  
%>