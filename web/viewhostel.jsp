<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <link href="basic.css" rel="stylesheet" >
    </head>
    
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.sql.ResultSet"%>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        PreparedStatement st=con.prepareStatement("select * from hostelapplicant ");
        ResultSet rs=st.executeQuery();
        ArrayList list1=new ArrayList();
        ArrayList list2=new ArrayList();
        ArrayList list3=new ArrayList();
        ArrayList list4=new ArrayList();
        ArrayList list5=new ArrayList();
        ArrayList list6=new ArrayList();
        ArrayList list7=new ArrayList();
        ArrayList list8=new ArrayList();
        ArrayList list9=new ArrayList();
        ArrayList list10=new ArrayList();
        ArrayList list11=new ArrayList();
        ArrayList list12=new ArrayList();
        ArrayList list13=new ArrayList();
        ArrayList list14=new ArrayList();
        ArrayList list15=new ArrayList();
        ArrayList list16=new ArrayList();
        ArrayList list17=new ArrayList();
        ArrayList list18=new ArrayList();
        ArrayList list19=new ArrayList();
        ArrayList list20=new ArrayList();
        ArrayList list21=new ArrayList();
        ArrayList list22=new ArrayList();
        ArrayList list23=new ArrayList();
        ArrayList list24=new ArrayList();
        ArrayList list25=new ArrayList();
        ArrayList list26=new ArrayList();
        while(rs.next())
        {
         list1.add(rs.getString(1));
         list2.add(rs.getString(2));
         list3.add(rs.getString(3));
         list4.add(rs.getString(4));
         list5.add(rs.getString(5));
          list6.add(rs.getString(6));
           list7.add(rs.getString(7));
            list8.add(rs.getString(8));
             list9.add(rs.getString(9));
              list10.add(rs.getString(10));
               list11.add(rs.getString(11));
                list12.add(rs.getString(12));
                 list13.add(rs.getString(13));
                  list14.add(rs.getString(14));
                   list15.add(rs.getString(15));
                    list16.add(rs.getString(16));
                     list17.add(rs.getString(17));
                      list18.add(rs.getString(18));
                       list19.add(rs.getString(19));
                        list20.add(rs.getString(20));
                         list21.add(rs.getString(21));
                          list22.add(rs.getString(22));
                           list23.add(rs.getString(23));
                            list24.add(rs.getString(24));
                             list25.add(rs.getString(25));
                              list26.add(rs.getString(26));
                         
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
        <h3 style="text-align:right; font-size:20;font-family: sans-serif">HOSTEL PAGE </h3>
         
        <table align="center" cellspacing="20" class="backtheme">    
            <tr align="center" style="font-size:20px;font-family: inherit">
                <td colspan="2">HOSTEL LIST</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr align="center" bgcolor="white">
              
                <td>USERNAME</td><!-- comment -->
                <td>PASSWORD</td><!-- comment -->
                <td>HOSTEL NAME</td><!-- comment -->
                <td>TYPE OF HOSTEL</td>
                <td>YEAR OF ESTABLISHMENT</td><!-- comment -->
                <td>MONTHLY RENT</td>
                <td>OCCUPANCY</td><!-- comment -->
                <td>MESS AVAILABILITY</td><!-- comment -->
                <td>TYPE OF MESS</td>
                <td>WIFI AVAILABILITY</td>
                <td>LAUNDRY AVAILABILITY</td><!-- comment -->
                <td>WASHING MACHINE</td><!-- comment -->
                <td>CUPBOARD AVAILABILITY</td><!-- comment -->
                <td>FURNITURE AVAILABILITY</td>
                <td>HOUSEKEEPING</td>
                <td>HOT WATER AVAILABILITY</td><!-- comment -->
                <td>IN TIMING</td><!-- comment -->
                <td>AC AVAILABILITY</td><!-- comment -->
                <td>LOCATION</td><!-- comment -->
                <td>HOSTEL CONTACT NUMBER</td><!-- comment -->
                <td>NOTICE PERIOD</td><!-- comment -->
                <td>DESCRIPTION ABOUT HOSTEL</td>
                <td>CONTACT PERSON NAME</td><!-- comment -->
                <td>CONTACT NUMBER</td><!-- comment -->
                <td>HOSTEL ID</td><!-- comment -->
                <td>RULES</td>
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
                <td><%=list6.get(i)%></td><!-- comment -->
                <td><%=list7.get(i)%></td><!-- comment -->
                <td><%=list8.get(i)%></td><!-- comment -->
                <td><%=list9.get(i)%></td><!-- comment -->
                <td><%=list10.get(i)%></td><!-- comment -->
                <td><%=list11.get(i)%></td>
                <td><%=list12.get(i)%></td><!-- comment -->
                <td><%=list13.get(i)%></td><!-- comment -->
                <td><%=list14.get(i)%></td><!-- comment -->
                <td><%=list15.get(i)%></td><!-- comment -->
                <td><%=list16.get(i)%></td><!-- comment -->
                <td><%=list17.get(i)%></td><!-- comment -->
                <td><%=list18.get(i)%></td>
                <td><%=list19.get(i)%></td><!-- comment -->
                <td><%=list20.get(i)%></td><!-- comment -->
                <td><%=list21.get(i)%></td><!-- comment -->
                <td><%=list22.get(i)%></td><!-- comment -->
                <td><%=list23.get(i)%></td><!-- comment -->
                <td><%=list24.get(i)%></td><!-- comment -->
                <td><%=list25.get(i)%></td>
                <td><%=list26.get(i)%></td>
            </tr>
            <%}%>
        </table>
        </table> 
   </div>
</html>