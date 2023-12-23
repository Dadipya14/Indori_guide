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
         <%@include file="publictop.jsp" %> 
         <br>
         <br>
         <br>
         <br>
         
        <form action="feedbackpagecode.jsp">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                
                <td colspan="2">FEEDBACK</td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type='text' name="name" class="texttheme"></td>  
            </tr>
            <tr>
                <td>Feedback Id</td>
                <td><input type='text' name="feedbackid" class="texttheme"></td>
            </tr>
            
             <tr>
                <td>Feedback</td>
                <td><input type='text' name="feedback" class="texttheme"></td>
            </tr>
             <td>Email</td>
                <td><input type='email' name="email" class="texttheme"></td>
            </tr>
            <tr align="center">
            <td colspan="2" align="center" >
            <tr>
            <td><input type='submit' value='SUBMIT' ></td>
            </tr>
        </form>    
        </table>
    </body>
</html>