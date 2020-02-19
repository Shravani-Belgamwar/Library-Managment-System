/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import com.sun.xml.wss.util.DateUtils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.mail.*;


/**
 *
 * @author Dell
 */
public class DBcontroller {
    
    public static Connection connect = null;
    public static Statement select = null;
   // public static Statement st = null;
    public static ResultSet result = null;
   
    public static void getConnection()
    { 
        try
        {
            System.err.println("Before connect");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.err.println("After class.for name");
            connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","shravani");
            System.err.println("Connection is"+connect);
            select = connect.createStatement();
            //st = connect.createStatement();
            System.err.println("Select is"+select);
            
        }
        catch(Exception e1)
        {}
    }
    
     public static void insertStudent(String Stud_Id,String Name,String Department,String Year,String Division,String Email)//throws Exception
    {
        getConnection();
        try{
             select.executeUpdate("insert into STUDENTS values("+Stud_Id+",'"+Name+"','"+Department+"','"+Year+"','"+Division+"','"+Email+"')");

        }catch(Exception e){
            System.err.println("In Excpetion of insert");
        }
    }
     
      public static void insertTransaction(String St_Id,String Bk_Id,String issuedt,String returndt)//throws Exception
    {
          
        getConnection();
        try{
            System.out.println(issuedt);
            //String sql1 = "insert into Transaction values('"+St_Id+"','"+Bk_Id+"',to_date('"+issuedt+"','DD-MM-YYYY'),to_date('"+returndt+"','DD-MM-YYYY'))";
         select.executeUpdate("insert into TRANSACTION values('"+St_Id+"','"+Bk_Id+"',to_date('"+issuedt+"','dd-mm-yyyy'),to_date('"+returndt+"','dd-mm-yyyy'))");
        
//            Date date = new SimpleDateFormat(DD-MM-YYYY).parse(issuedate);
//            String sql1 = "INSERT INTO TRANSACTION values(?,?,?,?)";
//            PreparedStatement pt1 = connect.prepareStatement(sql1);
//            pt1.setString(1,St_Id);
//            pt1.setString(2,Bk_Id);
//            pt1.setString(3, sql1);
//            
        }catch(Exception e){
            e.printStackTrace();
            System.err.println("In Excpetion of insert");
        }
    }
    
    public static ResultSet getBookdetails()
    {
         try{
        getConnection();
        result = select.executeQuery("select * from Books");
        }
        catch(Exception e){
        }
        return result;
    }
    
    public static ResultSet getStudentdetails()
    {
         try{
        getConnection();
        result = select.executeQuery("select * from Students");
        }
        catch(Exception e){
        }
        return result;
    }
    
    public static ResultSet getTransaction()
    {
        try{
            getConnection();
            result = select.executeQuery("select * from Transaction");
        }catch(Exception e){}
        return result;
    }
    
    public static ResultSet delTransaction(String ID)
    {
        try{
            getConnection();
            result = select.executeQuery("delete from Transaction where STUDENT_ID = '"+ID+"'");
        }catch(Exception e){}
        return result;
    }
    
    public static ResultSet delStudent(String SID)
    {
        try{
            getConnection();
            result = select.executeQuery("delete from Students where STUDENT_ID = '"+SID+"'");
        }catch(Exception e){}
        return result;
    }
    
}
