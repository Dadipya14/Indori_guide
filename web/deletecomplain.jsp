<html>
    <head>
        <link href="style.css" rel="stylesheet">
    </head>
    <style>
        
    </style>
    <body>
        <h3 style="text-align:right; font-size:small;font-family: sans-serif"><a href="home.jsp" 
               style="color:black" class="link">HOME</a> | FOOD | LIVING </h3>
         
        <table width="100%">
            <tr align="left">
                <td><img src="images/logo-no-background.png"width="350px" height="120px"></td>
            </tr>
        </table>
         <%@include file="publictop.jsp" %> 
         <br>
         <br>
         <br>
         <br>
         
        <form action="deletecomplaincode.jsp">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                
                <td colspan="2">COMPLAIN DELETE FORM</td>
            </tr>
            
            <tr>
                <td>Complain Id</td>
                <td><input type='text' name="complain_id" class="texttheme"></td>
            </tr>
            
            <tr align="center">
            <td colspan="2" align="right" >
            <tr colspan="2" align="right">
             <td><input type='submit' value='DELETE' ></td>
            </tr>
        </form>    
        </table>
    </body>
</html>