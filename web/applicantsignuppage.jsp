 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>

<%
    String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equalsIgnoreCase("sign up"))
    {
     String ownername=request.getParameter("ownername");
     String businessname=request.getParameter("businessname");
     String type=request.getParameter("type");
     String contact=request.getParameter("contact");
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     
     if(ownername.equals("")||businessname.equals("")||type.equals("")||contact.equals("")||username.equals("")||password.equals(""))
     {
      RESULT=1; 
     }
     else
     {
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
      PreparedStatement st=con.prepareStatement("insert into applicanttable values(?,?,?,?,?,?)");
      st.setString(1,ownername);
      st.setString(2,businessname);
      st.setString(3,type);
      st.setString(4,contact);
      st.setString(5,username);
      st.setString(6,password);
      
      st.executeUpdate();
      con.close();
      response.sendRedirect("applicantservicepage.jsp");  
     }
}
%>

<html>
    <head>
        <link href="style.css" rel="stylesheet">
    </head>
    <style>
        
    </style>
    <body>
        <h3 style="text-align:right; font-size:20;font-family: sans-serif"><a href="home.jsp" 
               style="color:black" class="link">HOME</a> | FOOD | LIVING </h3>
         
        <table width="100%">
            <tr align="left">
                <td><img src="images/logo-no-background.png"width="350px" height="120px"></td>
            </tr>
        </table>
        
         
        <form action="">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                <td colspan="2">APPLICANT SIGN UP</td>
            </tr>
            <%
            if(button!=null && RESULT==1)
            {
            %>
            <tr align="center">
                <td colspan="2"><font color="red">all fields are mandatory</font></td><!-- comment -->
            </tr><!-- comment -->
            <%}
            %>
            <%
            String name=(String)session.getAttribute("APPAUTH");
            %>
           
            <tr>
                <td>Owner Name</td>
                <td><input type='text' name="ownername" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>Business name</td>
                <td><input type='text' name="businessname" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Type of service</td>
                <td><select class="texttheme" input type='type' name="type">
                        <option>--select--</option>
                        <option>Tiffin</option>
                        <option>Mess</option>
                        <option>Pg</option>
                        <option>Hostel</option>
                    </select></td>
            </tr>    
            
            <tr>
                <td>Contact details</td>
                <td><input type='text' name="contact" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>User name</td>
                <td><input type='text' name="username" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Password</td>
                <td><input type='password' name="password" class="texttheme"></td>
            </tr>
            
            <tr align="center">
            <td colspan="2" align="center" >
            <tr>
                <td><input type='submit' name="btn" value='SIGN UP' ></td>
            </tr>
        </form>    
        </table>
    </body>
</html>