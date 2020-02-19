<%-- 
    Document   : Home
    Created on : Mar 4, 2017, 11:24:56 AM
    Author     : Admin
--%>
<%@page import="Book.Bookdetails"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Book.BookList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books</title>
        <style type="text/css">
          body{
                background-image: url(book2.jpg);
                background-size: contain;
                color: white;
                font-size: x-small;
            }
            
            .back1{
                width: fit-content;
                height: fit-content;
                background-color: rgba(0,0,0,0.5);
            }
            
            .back3 input[type="button"]{
                width: 90px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
                margin-left: 285px;
            }
        </style>
    </head>
    <body align="center">      
        <div class="back1">
            <table align="center" border="1">
            <%
             BookList objBookList = new BookList();
             ArrayList<Bookdetails> list = objBookList.getList();   
            %>
            <tr>
                <td>Book No</td>
                <td>Book ID</td>
                <td>ISBN</td>
                <td>Title</td>
                <td>Author</td>
                <td>Publication</td>
                <td>Quantity</td>
            </tr>

                <%
                    for(int i=0;i<list.size();i++)
                    {
                %>   
                <tr>
                    <td><%=list.get(i).getBookNo()%></td>
                    <td><%=list.get(i).getBookId()%></td>
                    <td><%=list.get(i).getISBN()%></td>
                    <td><%=list.get(i).getTitle()%></td>
                    <td><%=list.get(i).getAuthor()%></td>
                    <td><%=list.get(i).getPublication()%></td>
                    <td><%=list.get(i).getQuantity()%></td>
                </tr>
                <%
                    }
                %>
            </table><br><br>
        </div>
            
            <div class="back3">
                <input type="button" onclick="location.href='Home.jsp';" value="HOME">   
            </div>    
     </body>
</html>

