<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <link href="basic.css" rel="stylesheet" >
    </head>
    <%@include file="admintop.jsp" %>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.sql.ResultSet"%>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        PreparedStatement st=con.prepareStatement("select * from complain ");
        ResultSet rs=st.executeQuery();
        ArrayList list1=new ArrayList();
        ArrayList list2=new ArrayList();
        ArrayList list3=new ArrayList();
        ArrayList list4=new ArrayList();
        ArrayList list5=new ArrayList();
        while(rs.next())
        {
         list1.add(rs.getString(1));
         list2.add(rs.getString(2));
         list3.add(rs.getString(3));
         list4.add(rs.getString(4));
         list5.add(rs.getString(5));
        }

    %>
     <table width="100%">
            <tr align="left">
                <td><img src="images/logo-no-background.png"width="350px" height="120px"></td>
            </tr>
        </table>
<div style="width:100%;height:700px;background-image:url('bgtwo.png');
             background-repeat:no-repeat;background-size:100%">

    <div style="position: relative">
        <h3 style="text-align:right; font-size:20;font-family: sans-serif">COMPLAIN PAGE </h3>
         
        <table align="center" cellspacing="20" class="backtheme">    
            <tr align="center" style="font-size:20px;font-family: inherit">
                <td colspan="2">COMPLAINS LIST</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr align="center" bgcolor="white">
                <td>NAME</td>
                <td>EMAIL</td>
                <td>COMPLAIN ID</td><!-- comment -->
                <td>COMPLAIN DESCRIPTION</td><!-- comment -->
                <td>CONTACT NUMBER</td>
            </tr>
            <%
             for(int i=0;i<list1.size();i++)
            {
            %>
            <tr align="center">
                <td><%=list1.get(i)%></td>
                <td><%=list2.get(i)%></td>
                <td><%=list3.get(i)%></td>
                <td><%=list4.get(i)%></td>
                <td><%=list5.get(i)%></td>
            </tr>
            <%}%>
        </table>
        </table> 
   </div>
</html>