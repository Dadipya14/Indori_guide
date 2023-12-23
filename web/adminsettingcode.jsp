        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.PreparedStatement"%> 
        <%@page import="java.sql.ResultSet" %>
<%
    String adminId=request.getParameter("adminId");
    String oldpass=request.getParameter("oldpass");
       String newpass=request.getParameter("newpass");
          String confirmpass=request.getParameter("confirmpass");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
             
            PreparedStatement st=con.prepareStatement("select * from admintable where adminId=? and password=?");
            st.setString(1,adminId);
            st.setString(2,oldpass);
      
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
              if(newpass.equals(confirmpass))
              {
               PreparedStatement st1=con.prepareStatement("update admintable set password=? where adminId=?");
               st1.setString(1,newpass);
               st1.setString(2, adminId);
               st1.executeUpdate();
               response.sendRedirect("authority.jsp");
              }
               else
              {
               out.println("new password and confirm password doesn't match ");
              }
            }
            else
            {
             out.println("invalid id/password ");
            }
            con.close();
            
%>