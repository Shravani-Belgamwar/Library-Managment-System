/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

/**
 *
 * @author Admin
 */
public class Register 
{
    private String Stud_Id;
    private String Name;
    private String Department;
    private String Year;
    private String Division;
    private String Email;
    
    public String getStud_Id()
    {
        return Stud_Id;
    }
    public void setStud_Id(String Stud_Id)
    {
        this.Stud_Id=Stud_Id;
    }
    
    public String getName()
    {
        return Name;
    }
    public void setName(String Name)
    {
        this.Name=Name;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    
    public String getYear() 
    {
        return Year;
    }

    public void setYear(String Year) 
    {
        this.Year = Year;
    }
    public String getDivision() 
    {
        return Division;
    }
    public void setDivision(String Division) 
    {
        this.Division = Division;
    }
    public String getEmail() 
    {
        return Email;
    }
    public void setEmail(String Email) 
    {
        this.Email = Email;
    }

   }
