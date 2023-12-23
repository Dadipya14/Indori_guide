<html>
    <head>
        <link href="style.css" rel="stylesheet">
    </head>
    <style>
        
    </style>
    <body><div style="position: relative">
        <h3 style="text-align:right; font-size:15;font-family: sans-serif"><a href="applicantsignuppage.jsp"
          style="color:black" class="link">SERVICE PROVIDER SIGN UP</a> |<a href="applicantsignin.jsp" 
              style="color:black" class="link"> SERVICE PROVIDER SIGN IN</h3>
         
        <table width="100%">
            <tr align="left">
                <td><img src="images/logo-no-background.png"width="350px" height="120px"></td>
            </tr>
        </table>
         <%@include file="top.jsp" %>
        <br>
    <td><img src="images/diplay.gif" width="700px" height="500px"></td>
    <div style="position: absolute; margin-left: 950px; top:250px">
        <form action="signupcode.jsp">  
        <table align="right" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                
                <td colspan="2">USER SIGN UP</td>
            </tr>
            
            <tr>
                <td>Name</td>
                <td><input type='text' name="name" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>Email</td>
                <td><input type='email' name="email"class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Profession</td>
                <td><input type='text' name="prof"class="texttheme"></td>
            </tr>
            
            <tr>
                <td>College Name</td>
                <td><input type='text' name="colName"class="texttheme"></td>
            </tr>
            
            <tr>
                <td>College Id</td>
                <td><input type='text' name="colId"class="texttheme"></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type='number' name="contNum"class="texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type='password' name="pass"class="texttheme"></td>
            </tr>
            <tr align="center">
                <td align="right" ><input type='submit' value='Sign up' ></td>
                <td>Already an user!!!<a href="signinpage.jsp" style="color:black" class="link"><b>Sign In</td>
            </tr>
        </form>    
        </table></div></div>
        </body>
</html>