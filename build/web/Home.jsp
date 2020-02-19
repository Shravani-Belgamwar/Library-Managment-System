<%-- 
    Document   : Home
    Created on : 17 Sep, 2017, 8:31:01 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        
        <style type="text/css">
            body{
                background-image: url(book.jpg);
                background-size: cover;
            }
            
            .back{
                width: 180px;
                height: 320px;
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
     
            .back input[type="submit"]{
                width: 150px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
            .back input[type="button"]{
                width: 150px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
        </style>
    </head>
   <body align="centre">
       <div class="back">
           <h2> Reader Zone</h2>
           <form action="Urlcontrollerurl">
               <input type="submit" value="BOOK DIRECTORY" name="BOOKS"><br><br>
               <input type="submit" value="STUDENT DETAILS" name="STUD"><br><br>
               <input type="button" onclick="location.href='AllTransactions.jsp';" value="TRANSACTIONS"><br><br>
               <input type="submit" value="CREATE USER" name="CREATE_USER"><br><br>
               <input type="submit" value="NEW TRANSACTION" name="NEW_TRANSACTION"><br><br>
               <input type="submit" value="LOGOUT" name="LOGOUT">
         </form>
       </div>
    </body>

</html>
