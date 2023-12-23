 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String name=request.getParameter("name");
    String location=request.getParameter("location");
    String cuisine=request.getParameter("cuisine");
    String year=request.getParameter("year");
    String category=request.getParameter("category");
    String monthly=request.getParameter("monthly");
    String single=request.getParameter("single");
    String timing=request.getParameter("timing");
    String contactperson=request.getParameter("contactperson");
    String contact=request.getParameter("contact");
    String messnumber=request.getParameter("messnumber");
    String payment=request.getParameter("payment");
    String meals=request.getParameter("meals");
    String mess=request.getParameter("mess");
    String messid=request.getParameter("messid");
    
    
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into messapplicant values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      st.setString(1,username);
      st.setString(2,password);
      st.setString(3,name);
      st.setString(4,location);
      st.setString(5,cuisine);
      st.setString(6,year);
      st.setString(7,category);
      st.setString(8,monthly);
      st.setString(9,single);
      st.setString(10,timing);
      st.setString(11,contactperson);
      st.setString(12,contact);
      st.setString(13,messnumber);
      st.setString(14,payment); 
      st.setString(15,meals);
      st.setString(16,mess);
      st.setString(17,messid);
      
      st.executeUpdate();
      con.close();
      response.sendRedirect("applicanthome.jsp");  
%>