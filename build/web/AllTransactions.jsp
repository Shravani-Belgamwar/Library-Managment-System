<%-- 
    Document   : AllTransactions
    Created on : 25 Sep, 2017, 2:52:47 PM
    Author     : Dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Transaction.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Transaction Page</title>
        
        <style type="text/css">
            body{
                background-image: url(book2.jpg);
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
            }
            
            .back1{
                margin: 0;
                margin-left: 200px;
                width: 350px;
                height: fit-content;
                background-color: rgba(0,0,0,0.5);
            }
            
            .back2{
             
                margin-top: 0 ;
                alignment-adjust: central;
                width: 160px;
                height: 180px;
                border-radius: 15px;
                padding-top:2px ;
                padding-left: 7px;
                background-color: rgba(0,0,0,0.5);
            }
            .back2 input[type="text"]{
                width: 140px;
                height: 20px;
                border: 0;
                border-radius: 5px;
            }
            
            .back2 input[type="submit"]{
                width: 90px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
            
            .back2 input[type="button"]{
                width: 90px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
            }
        </style>
    </head>
    <body>
        <div class="back1">
            <table align="center" border="1">
            <%
             Transactionlist objTransactionlist = new Transactionlist();
             ArrayList<Transaction> list = objTransactionlist.getList();   
            %>
            <tr>
                <td>Student ID</td>
                <td>Book ID</td>
                <td>ISSUE DATE</td>
                <td>RETURN DATE</td>
                </tr>

                <%
                    for(int i=0;i<list.size();i++)
                    {
                %>   
                <tr>
                    <td><%=list.get(i).getSt_id()%></td>
                    <td><%=list.get(i).getBk_id()%></td>
                    <td><%=list.get(i).getIssuedate()%></td>
                    <td><%=list.get(i).getReturndate()%></td>
                    </tr>
                <%
                    }
                %>
            </table>
        </div>
            
             <div class="back2"> 
                 <h3>Delete</h3> 
                <form action="DeleteServleturl" method="post">
                <input type="text" placeholder="Student ID" name="STID"><br><br>
                <input type="submit" value="SUBMIT"><br><br>    
                </form>
         
                 <input type="button" onclick="location.href='Home.jsp';" value="HOME">   
                
            </div> 
            
    </body>
</html>
