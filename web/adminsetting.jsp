
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
        
         <br>
         <br>
         <br>
         <br>
         
        <form action="adminsettingcode.jsp">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                
                <td colspan="2">ADMIN PASSWORD SETTING FORM</td>
            </tr>
            <tr>
                <td>Id</td>
                <td><input type='text' name="adminId" class="texttheme" placeholder="enter id here"></td>  
            </tr>
            <tr>
                <td>Old Password</td>
                <td><input type='password' name="oldpass" class="texttheme" placeholder="enter old password here"></td>
            </tr>
            <tr>
                <td>New Password</td>
                <td><input type='password' name="newpass" class="texttheme"  placeholder="enter new password here"></td>
            </tr>
             <tr>
                <td>Confirm New Password</td>
                <td><input type='password' name="confirmpass" class="texttheme" placeholder="enter new password here"></td>
            </tr>
            <div align="right">
            
            <td align="right" ><a href="publicpage.jsp" style="color:black" class="link" align="right" ><input type='submit' value='Change password' align="right" ></td>
          
            </div>
            </form>    
        </table>
    </body>
</html>