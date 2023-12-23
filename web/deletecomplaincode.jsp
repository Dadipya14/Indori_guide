<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Scanner"%>
<%
     
      String complain_id=request.getParameter("complain_id");
  
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      
      PreparedStatement st1=con.prepareStatement("select * from complain where complain_id=?");
      st1.setString(1,complain_id);
      ResultSet rs=st1.executeQuery();
      
      if(rs.next())
      {
       PreparedStatement st=con.prepareStatement("delete from complain where complain_id=?");
       st.setString(1, complain_id);
       st.executeUpdate();
       con.close();
      }
      else
      {
       out.println("no record found to delete");
      }
 

%>

 