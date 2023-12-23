
<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet" %>

<%    
     String name=request.getParameter("name");
     String email=request.getParameter("email");
     String password=request.getParameter("password");
     
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("select * from usersignup where name=? and email=? and password=?");
      st.setString(1,name);
      st.setString(2,email);
      st.setString(3,password);
      ResultSet rs=st.executeQuery();
      if(rs.next())
      {
        response.sendRedirect("publicpage.jsp");
      }
      else
      {
        out.println("invalid id/password");
      }
      con.close();  
%>