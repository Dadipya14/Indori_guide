        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.PreparedStatement"%> 
        <%@page import="java.sql.ResultSet" %>
<%
    String email=request.getParameter("email");
    String oldpass=request.getParameter("oldpass");
       String newpass=request.getParameter("newpass");
          String confirmpass=request.getParameter("confirmpass");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
             
            PreparedStatement st=con.prepareStatement("select * from usersignup where email=? and password=?");
            st.setString(1,email);
            st.setString(2,oldpass);
      
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
              if(newpass.equals(confirmpass))
              {
               PreparedStatement st1=con.prepareStatement("update usersignup set password=? where email=?");
               st1.setString(1,newpass);
               st1.setString(2, email);
               st1.executeUpdate();
               response.sendRedirect("signinpage.jsp");
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