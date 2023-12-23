<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet" %>

<%    
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("select * from applicanttable where username=? and password=?");
      st.setString(1,username);
      st.setString(2,password);
      ResultSet rs=st.executeQuery();
      if(rs.next())
      { 
        Cookie ck=new Cookie("livig_food_website",username);
        ck.setMaxAge(10000);//time in seconds
        response.addCookie(ck);
        
        session.setAttribute(APPAUTH, username);
        response.sendRedirect("applicanthomepage.jsp");
      }
      else
      {
        RESULT=1;
        out.println("invalid id/password");
      }
      con.close();  
%>