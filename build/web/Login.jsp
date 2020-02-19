<%-- 
    Document   : index
    Created on : Feb 18, 2017, 9:54:23 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style type="text/css">
            body{
                background-image: url(book.jpg);
                background-size: cover;
            }
            .back{
                width: 180px;
                height: 200px;
                background-color: rgba(0,0,0,0.5);
                margin: 0 auto;
                margin-top: 25px;
                padding-top: 2px;
                padding-left: 30px;
                border-radius: 15px;
                -webkit-border-radius: 15px;
                -o-border-radius: 15px;
                -moz-border-radius: 15px;
                color: black;
                font-weight: bolder;
            } 
            
            .back input[type="text"]{
                width: 160px;
                height: 20px;
                border: 0;
                border-radius: 5px;
            }
            
            .back input[type="password"]{
                width: 160px;
                height: 20px;
                border: 0;
                border-radius: 5px;
            }
            
            .back input[type="submit"]{
                width: 90px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
        </style>
    </head>
   <body align="centre">
       <div class="back">
           <h2>Login</h2>
         <form action="LoginServleturl" method="Post">
             <input type="text" placeholder="Username" name="USERNAME"><br><br>
             <input type="password" placeholder="Password" name="PASS"><br><br>
            <input type="submit" value="LOGIN">
         </form>
       </div>
    </body>
</html>

