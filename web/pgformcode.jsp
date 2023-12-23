
 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String name=request.getParameter("name");
    String pgtype=request.getParameter("pgtype");
    String location=request.getParameter("location");
    String monthly=request.getParameter("monthly");
    String occupancy=request.getParameter("occupancy");
    String balcony=request.getParameter("balcony");
    String ac=request.getParameter("ac");
    String food=request.getParameter("food");
    String foodtype=request.getParameter("foodtype");
    String cuisine=request.getParameter("cuisine");
    String hotwater=request.getParameter("hotwater");
    String description=request.getParameter("description");
    String contact=request.getParameter("contact");
    String parking=request.getParameter("parking");
    String contactperson=request.getParameter("contactperson");
    String gate=request.getParameter("gate");
    String rule=request.getParameter("rule");
    String pgid =request.getParameter("pgid");
    
    
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into pgapplicant values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      st.setString(1,username);
      st.setString(2,password);
      st.setString(3,name);
      st.setString(4,pgtype);
      st.setString(5,location);
      st.setString(6,monthly);
      st.setString(7,occupancy);
      st.setString(8,balcony);
      st.setString(9,ac);
      st.setString(10,food);
      st.setString(11,foodtype);
      st.setString(12,cuisine);
      st.setString(13,hotwater);
      st.setString(14,description); 
      st.setString(15,contact);
      st.setString(16,parking);
      st.setString(17,contactperson);
      st.setString(18,gate);
      st.setString(19,rule);
      st.setString(20,pgid);
      
      st.executeUpdate();
      con.close();
      response.sendRedirect("applicanthome.jsp");  
%>