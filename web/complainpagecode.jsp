<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet" %>

<%    
     String name=request.getParameter("name");
     String email=request.getParameter("email");
     String complainid=request.getParameter("complainid");
     String complain=request.getParameter("complain");
     String contact=request.getParameter("contact");
     
     
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into complain values(?,?,?,?,?)");
      st.setString(1,name);
      st.setString(2,email);
      st.setString(3,complainid);
      st.setString(4,complain);
      st.setString(5,contact);
      st.executeUpdate();
      con.close();
      response.sendRedirect("home.jsp");  
%>

 