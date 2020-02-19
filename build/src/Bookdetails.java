/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Book;

/**
 *
 * @author Admin
 */
public class Bookdetails 
{
    private String BookNo;
    private String BookId;
    private String ISBN;
    private String Title;
    private String Author;
    private String Publication;
    private String Quantity;

    public Bookdetails() 
    {
        
    }
    
    public Bookdetails(String BookNo,String BookId,String ISBN, String Title,String Author, String Publication,String Quantity) 
    {
        this.BookNo = BookNo;
        this.BookId = BookId;
        this.ISBN = ISBN;
        this.Title = Title;
        this.Author = Author;
        this.Publication = Publication;
        this.Quantity = Quantity;
    }

    public String getBookNo() 
    {
        return BookNo;
    }

    public void setBookNo(String BookNo) 
    {
        this.BookNo = BookNo;
    }
    
    public String getBookId() 
    {
        return BookId;
    }

    public void setBookId(String BookId) 
    {
        this.BookId = BookId;
    }

    public String getISBN() 
    {
        return ISBN;
    }

    public void setISBN(String ISBN) 
    {
        this.ISBN = ISBN;
    }

    public String getTitle() 
    {
        return Title;
    }

    public void setTitle(String Title) 
    {
        this.Title = Title;
    }

    public String getAuthor() 
    {
        return Author;
    }

    public void setAuthor(String Author) 
    {
        this.Author = Author;
    }

    public String getPublication() 
    {
        return Publication;
    }

    public void setPublication(String Publication) 
    {
        this.Publication = Publication;
    }

    public String getQuantity() 
    {
        return Quantity;
    }

    public void setQuantity(String Quantity) 
    {
        this.Quantity = Quantity;
    }
}
