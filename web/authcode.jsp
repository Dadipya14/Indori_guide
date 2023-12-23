        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.PreparedStatement"%> 
        <%@page import="java.sql.ResultSet" %>
<%
    String adminId=request.getParameter("adminId");
    String password=request.getParameter("password");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
             
            PreparedStatement st=con.prepareStatement("select * from admintable where adminId=? and password=?");
            st.setString(1,adminId);
            st.setString(2,password);
          
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
             response.sendRedirect("adminpage.jsp");
            }
            else
            {
            out.println("invalid id/password");
            }
            con.close();
            
%>