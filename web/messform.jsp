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
        
         
        <form action="messformcode.jsp">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                <td colspan="2">MESS SERVICE FORM</td>
            </tr>
            
            <tr>
                <td>Username</td>
                <td><input type='text' name="username" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>password</td>
                <td><input type='password' name="password" class="texttheme"></td>
            </tr>   
            
            <tr>
                <td>mess name</td>
                <td><input type='text' name="name" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>location</td>
                <td><input type='text' name="location" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>type of cuisine provided</td>
                <td><input type='text' name="cuisine" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>year of establishment</td>
                <td><input type='text' name="year" class="texttheme"></td>
            </tr>   
            
            <tr>
                <td>category</td>
                <td><input type='text' name="category" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>monthly rate</td>
                <td><input type='number' name="monthly" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>single meal rate</td>
                <td><input type='single' name="single" class="texttheme"></td>
            </tr>
            <tr>
                <td>timing</td>
                <td><input type='text' name="timing" class="texttheme"></td>
            </tr>
            
             <tr>
                <td>contact person name</td>
                <td><input type='text' name="contactperson" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>contact number</td>
                <td><input type='number' name="contact" class="texttheme"></td>
            </tr>   
            
            <tr>
                <td>mess contact number</td>
                <td><input type='number' name="messnumber" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>mode of payment accepted</td>
                <td><input type='text' name="payment" class="texttheme"></td>
            </tr>   
            <tr>
                <td>description about meals</td>
                <td><input type='text' name="meals" class="texttheme"></td>
            </tr>
            <tr>
                <td>description about mess</td>
                <td><input type='text' name="mess" class="texttheme"></td>
            </tr>
            <tr>
                <td>mess id</td>
                <td><input type='text' name="messid" class="texttheme"></td>  
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