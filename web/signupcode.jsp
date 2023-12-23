 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    
     String name=request.getParameter("name");
     String email=request.getParameter("email");
     String prof=request.getParameter("prof");
     String colName=request.getParameter("colName");
     String colId=request.getParameter("colId");
     String contact=request.getParameter("contNum");
     String pass=request.getParameter("pass");
     
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into usersignup values(?,?,?,?,?,?,?)");
      st.setString(1,name);
      st.setString(2,email);
      st.setString(3,prof);
      st.setString(4,colName);
      st.setString(5,colId);
      st.setString(6,contact);
      st.setString(7,pass);
      
      st.executeUpdate();
      con.close();
      response.sendRedirect("home.jsp");  
%>