/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

/**
 *
 * @author Dell
 */
public class Studentdetails {
    
    private String StudentId;
    private String Name;
    private String Department;
    private String Year;
    private String Division;
    private String Email;

    public Studentdetails() {
    }

    public Studentdetails(String StudentId, String Name, String Department, String Year, String Division, String Email) {
        this.StudentId = StudentId;
        this.Name = Name;
        this.Department = Department;
        this.Year = Year;
        this.Division = Division;
        this.Email = Email;
    }

    public String getStudentId() {
        return StudentId;
    }

    public void setStudentId(String StudentId) {
        this.StudentId = StudentId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getYear() {
        return Year;
    }

    public void setYear(String Year) {
        this.Year = Year;
    }

    public String getDivision() {
        return Division;
    }

    public void setDivision(String Division) {
        this.Division = Division;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    
    
}
