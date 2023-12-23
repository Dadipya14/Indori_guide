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
        
         
        <form action="pgformcode.jsp">
        <table align="center" cellspacing="20" class="backtheme">
            <tr align="center" bgcolor="whitesmoke" style="font-size:20px; font-family:berlin sans fb">
                <td colspan="2">PG SERVICE FORM</td>
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
                <td>PG name</td>
                <td><input type='text' name="name" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>PG type</td>
                <td><input type='text' name="pgtype" class="texttheme"></td>  
            </tr>
            <tr>
                <td>location</td>
                <td><input type='text' name="location" class="texttheme"></td>
            </tr>
            <tr>
                <td>monthly rent</td>
                <td><input type='number' name="monthly" class="texttheme"></td>
            </tr>
            <tr>
                <td>occupancy</td>
                <td><input type='text' name="occupancy" class="texttheme"></td>
            </tr>   
            
            <tr>
                <td>balcony available in each room</td>
                <td><input type='text' name="balcony" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>AC available in rooms</td>
                <td><input type='text' name="ac" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Is food available in pg</td>
                <td><input type='text' name="food" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>type of food(veg/non-veg/jain)</td>
                <td><input type='text' name="foodtype" class="texttheme"></td>
            </tr>
            <tr>
                <td>cuisine of food</td>
                <td><input type='text' name="cuisine" class="texttheme"></td>
            </tr>
            
             <tr>
                <td>is hotwater available</td>
                <td><input type='text' name="hotwater" class="texttheme"></td>  
            </tr>
            <tr>
                <td>description about pg</td>
                <td><input type='text' name="description" class="texttheme"></td>  
            </tr>
            <tr>
                <td>contact number</td>
                <td><input type='number' name="contact" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Is parking available</td>
                <td><input type='text' name="parking" class="texttheme"></td>
            </tr>
             <tr>
                <td>contact person name</td>
                <td><input type='text' name="contactperson" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>gate closing time</td>
                <td><input type='text' name="gate" class="texttheme"></td>
            </tr>   
            
            <tr>
                <td>important rules</td>
                <td><input type='text' name="rule" class="texttheme"></td>  
            </tr>
            
            <tr>
                <td>pd id</td>
                <td><input type='text' name="pgid" class="texttheme"></td>  
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