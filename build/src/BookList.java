/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Book;


import Database.DBcontroller;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class BookList 
{
    private ArrayList<Bookdetails> list;

    public BookList() 
    {
        list = new ArrayList<Bookdetails>();
         try
        {
            ResultSet result;
            result = DBcontroller.getBookdetails();
            while(result.next())
            {
                list.add(new Bookdetails(result.getString(1),result.getString(2),result.getString(3),result.getString(4),result.getString(5),result.getString(6),result.getString(7)));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }

    public ArrayList<Bookdetails> getList() 
    {
        return list;
    }

    public void setList(ArrayList<Bookdetails> list) 
    {
        this.list = list;
    }
}
