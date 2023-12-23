
<html>
    <head>
        <link href="style.css" rel="stylesheet">
    </head>
    <style>
        
    </style>
    <body>
        <h3 style="text-align:right; font-size:small;font-family: sans-serif"><a href="signinpage.jsp" 
               style="color:black" class="link">SIGN IN</a> | FOOD | LIVING </h3>
         
        <table width="100%">
            <tr align="left">
                <td><img src="images/logo-no-background.png"width="350px" height="120px"></td>
            </tr>
        </table>
   
         <br>
         <br>
         <br>
         <br>
         
         <form action="signincode.jsp" method="post">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
           
                <td colspan="2">USER SIGN IN</td>
            </tr>
        
            <tr>
                <td>Name</td>
                <td><input type='text' name="name" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>Email</td>
                <td><input type='email' name="email" class="texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type='password' name="password" class="texttheme"></td>
            </tr>
          
            <tr align="center">
        <td colspan="2" align="center" >
            <tr>
        <td><input type='submit' name= btn value='SIGN IN' ></td>
            </tr>
        </form>    
              
        </table>
    </body>
</html>