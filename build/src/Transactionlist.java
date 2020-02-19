/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Transaction;

import Database.DBcontroller;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Dell
 */
public class Transactionlist {
    
    private ArrayList<Transaction> list;

    public Transactionlist() 
    {
        list = new ArrayList<Transaction>();
         try
        {
            ResultSet result;
            result = DBcontroller.getTransaction();
            while(result.next())
            {
                list.add(new Transaction(result.getString(1),result.getString(2),result.getString(3).split(" ")[0],result.getString(4).split(" ")[0]));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }

    public ArrayList<Transaction> getList() {
        return list;
    }

    public void setList(ArrayList<Transaction> list) {
        this.list = list;
    }
    
    

}
