/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Transaction;

/**
 *
 * @author Dell
 */
import java.util.Date;
import java.text.SimpleDateFormat;
public class Transaction {
    
    private String St_id;
    private String Bk_id;
    private String Issuedate;
    private String Returndate;

    public Transaction() {
    }

    public Transaction(String St_id, String Bk_id, String Issuedate, String Returndate) {
        this.St_id = St_id;
        this.Bk_id = Bk_id;
        this.Issuedate = Issuedate;
        this.Returndate = Returndate;
    }

    public String getSt_id() {
        return St_id;
    }

    public void setSt_id(String St_id) {
        this.St_id = St_id;
    }

    public String getBk_id() {
        return Bk_id;
    }

    public void setBk_id(String Bk_id) {
        this.Bk_id = Bk_id;
    }

    public String getIssuedate() {
        
        return Issuedate;
    }

    public void setIssuedate(String Issuedate) {
        
        this.Issuedate = Issuedate;
    }

    public String getReturndate() {
        return Returndate;
    }

    public void setReturndate(String Returndate) {
        this.Returndate = Returndate;
    }
    
    
}
