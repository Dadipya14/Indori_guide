 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    
    String tiffinname=request.getParameter("tiffinname");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String location=request.getParameter("location");
    String cuisine=request.getParameter("cuisine");
    String contactperson=request.getParameter("contactperson");
    String contact=request.getParameter("contact");
    String alternate=request.getParameter("alternate");
    String email=request.getParameter("email");
    String category=request.getParameter("category");
    String year=request.getParameter("year");
    String monthly=request.getParameter("monthly");
    String single=request.getParameter("single");
    String time=request.getParameter("time");
    String description=request.getParameter("description");
    String patient=request.getParameter("patient");
    String payment=request.getParameter("payment");
    String tiffinid=request.getParameter("tiffinid");
    
    
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into tiffinapplicant values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      st.setString(1,tiffinname);
      st.setString(2,username);
      st.setString(3,password);
      st.setString(4,location);
      st.setString(5,cuisine);
      st.setString(6,contactperson);
      st.setString(7,contact);
      st.setString(8,alternate);
      st.setString(9,email);
      st.setString(10,category);
      st.setString(11,year);
      st.setString(12,monthly);
      st.setString(13,single);
      st.setString(14,time); 
      st.setString(15,description);
      st.setString(16,patient);
      st.setString(17,payment);
      st.setString(18,tiffinid);
      
      st.executeUpdate();
      con.close();
      response.sendRedirect("applicanthome.jsp");  
%>