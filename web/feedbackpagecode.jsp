<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet" %>

<%    
     String name=request.getParameter("name");
     String feedbackid=request.getParameter("feedbackid");
     String feedback=request.getParameter("feedback");
     String email=request.getParameter("email");
     
     
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into feedback values(?,?,?,?)");
      st.setString(1,name);
      st.setString(2,feedbackid);
      st.setString(3,feedback);
      st.setString(4,email);
      st.executeUpdate();
      con.close();
      response.sendRedirect("home.jsp");  
%>

 