<%-- 
    Document   : CreateAccount
    Created on : 22 Sep, 2017, 3:48:13 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create_User Page</title>
    </head>
        <style type="text/css">
            body{
                background-image: url(book.jpg);
                background-size: cover;
            }
            
            .back{
                width: 180px;
                height: 350px;
                background-color: rgba(0,0,0,0.5);
                margin: 0 auto;
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

    <body align="centre">
       <div class="back">
           <h2>Register</h2>
         <form action="RegisterServleturl" method="Post">
             <input type="text" placeholder="Student ID" name="ID"><br><br>
             <input type="text" placeholder="Name" name="NAME"><br><br>
             <input type="text" placeholder="Department" name="DEPARTMENT"><br><br>
             <input type="text" placeholder="Year" name="YEAR"><br><br>
             <input type="text" placeholder="Division" name="DIV"><br><br>
             <input type="text" placeholder="Email ID" name="EMAIL"><br><br>
            <input type="submit" value="SUBMIT">
         </form>
       </div>
    </body>
</html>
