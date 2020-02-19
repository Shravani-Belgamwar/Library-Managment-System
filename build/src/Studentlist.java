/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

import Database.DBcontroller;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 *
 * @author Dell
 */
public class Studentlist {
    
    private ArrayList<Studentdetails> list;

    public Studentlist() 
    {
        list = new ArrayList<Studentdetails>();
         try
        {
            ResultSet result;
            result = DBcontroller.getStudentdetails();
            while(result.next())
            {
                list.add(new Studentdetails(result.getString(1),result.getString(2),result.getString(3),result.getString(4),result.getString(5),result.getString(6)));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }

    public ArrayList<Studentdetails> getlist() {
        return list;
    }

    public void setlist(ArrayList<Studentdetails> list) {
        this.list = list;
    }

}
