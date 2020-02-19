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
        <title>New_Transaction Page</title>
    </head>
        <style type="text/css">
            body{
                background-image: url(book.jpg);
                background-size: cover;
            }
            
            .back{
                width: 180px;
                height: 330px;
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
            
            .back input[type="submit"]{
                width: 160px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
        </style>

    <body align="centre">
       <div class="back">
           <h2>Enter Details</h2>
         <form action="TransactionServletUrl" method="Post">
             <input type="text" placeholder="Student ID" name="ST_ID"><br><br>
             <input type="text" placeholder="Book ID" name="BK_ID"><br><br>
             <input type="text" placeholder="Issue Date" name="ISSUE"><br><br>
             <input type="text" placeholder="Return Date" name="RETURN"><br><br>
             <input type="submit" value="SUBMIT"><br><br>
         </form>
         <form action="Urlcontrollerurl">
             <input type="submit" value="ALL TRANSACTIONS" name="ALL_TRANSACTIONS"><br><br>
         </form>
       </div>
    </body>
</html>
