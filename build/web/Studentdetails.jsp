<%-- 
    Document   : Studentdetails
    Created on : 27 Sep, 2017, 8:50:15 AM
    Author     : Dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Student.Studentdetails"%>
<%@page import="Student.Studentlist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Page</title>
        <style type="text/css">
          body{
                background-image: url(book2.jpg);
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
            }
            
            .back1{
                width: 650px;
                height: fit-content;
                background-color: rgba(0,0,0,0.5);
                margin-left:45px ;
            }
            
            .back3 input[type="button"]{
                width: 90px;
                height: 25px;
                border: 0;
                border-radius: 5px;
                background-color: skyblue;
                margin-left: 285px;
            }
            
            .back4{
                margin-left: 250px;
                alignment-adjust: central;
                width: 155px;
                height: 100px;
                border-radius: 15px;
                padding-top:30px ;
                padding-left: 12px;
                background-color: rgba(0,0,0,0.7);
            }
            .back4 input[type="text"]{
                width: 140px;
                height: 20px;
                border: 0;
                border-radius: 5px;
            }
            
            .back4 input[type="submit"]{
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
             Studentlist objStudentlist = new Studentlist();
             ArrayList<Studentdetails> list = objStudentlist.getlist();   
            %>
            <tr>
                <td>Student ID</td>
                <td>Name</td>
                <td>Department</td>
                <td>Year</td>
                <td>Division</td>
                <td>Email Id</td>
            </tr>

                <%
                    for(int i=0;i<list.size();i++)
                    {
                %>   
                <tr>
                    <td><%=list.get(i).getStudentId()%></td>
                    <td><%=list.get(i).getName()%></td>
                    <td><%=list.get(i).getDepartment()%></td>
                    <td><%=list.get(i).getYear()%></td>
                    <td><%=list.get(i).getDivision()%></td>
                    <td><%=list.get(i).getEmail()%></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
            
            <div class="back3">
               <br><br><input type="button" onclick="location.href='Home.jsp';" value="HOME"><br><br>
            </div>
            <form action="removeservleturl">
            <div class="back4">
                <input type="text" placeholder="Student ID" name="STID"><br><br>
                <input type="submit" value="DELETE"><br><br>    
            </div> 
            </form>    
    </body>
</html>
