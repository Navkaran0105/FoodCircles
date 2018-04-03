
package billingsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author GTB Student
 */
public class BillingSystem {
    public static void main(String[] args) 
    {
         String path = "jdbc:mysql://localhost/billingdb";
         try
             (Connection myconn = DriverManager.getConnection(path, "mydbuser", "123")) {
             String q = "select * from adduser";
             PreparedStatement myst =  myconn.prepareStatement(q);
             ResultSet res = myst.executeQuery();
             if(res.next())
             {
                 Login obj=new Login();
                 obj.setVisible(true);
             }
             else
             {
                 addadmin obj = new addadmin();
                 obj.setVisible(true);
             }
         }
         catch(Exception e)
         {
             JOptionPane.showMessageDialog(null, "Error in query " + e.getMessage());
         }
            
      
    }
    

}