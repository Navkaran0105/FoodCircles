/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billingsystem;

import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author GTB Student
 */
public class addsubcategory extends javax.swing.JInternalFrame {

    /**
     * Creates new form addcategory
     */
    public addsubcategory() 
    {
        initComponents();
      
        fetchcat();
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jComboBox1 = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("Add Sub Category");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel2.setText("Choose Category");

        jButton1.setText("Add");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Choose" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("Sub Category Name");

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "SubCategory"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jButton2.setText("Update");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("Delete");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 185, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3))
                        .addGap(84, 84, 84)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButton1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jButton2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(117, 117, 117)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(397, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(32, 32, 32)
                        .addComponent(jLabel1)
                        .addGap(46, 46, 46)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(38, 38, 38)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3))
                        .addGap(40, 40, 40)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jButton1)
                            .addComponent(jButton2)
                            .addComponent(jButton3)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(80, 80, 80)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(111, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    void showsubcat()
    {
         String path = "jdbc:mysql://localhost/billingdb";
        try
        {
            Connection myconn =  DriverManager.getConnection(path, "mydbuser", "123");
            try      
            {
              String cat = jComboBox1.getSelectedItem().toString();
                String q = "select * from addsubcategory where category=?";
                PreparedStatement myst =  myconn.prepareStatement(q);
                myst.setString(1, cat);
               
                ResultSet res = myst.executeQuery();
                
                DefaultTableModel mymodel = (DefaultTableModel)jTable1.getModel();
                mymodel.setRowCount(0);
                while(res.next())
                {
                 String nm = res.getString("subcategory");
                 
                 Object myrow[] = {nm};
                 mymodel.addRow(myrow);
                 
                }
                
              
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(rootPane, "Error in query " + e.getMessage());
            }
            finally
            {
                myconn.close();
            }
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
        }
    }              
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        String path = "jdbc:mysql://localhost/billingdb";
        try
        {
            Connection myconn =  DriverManager.getConnection(path, "mydbuser", "123");
            try      
            {
              boolean flag=true;
              if(jTextField1.getText().length()<3)
              {
                  flag=false;
                  JOptionPane.showMessageDialog(rootPane, "Enter proper category");
              }
              else if(jComboBox1.getSelectedIndex()==0)
              {
                  flag=false;
                  JOptionPane.showMessageDialog(rootPane, "Please choose category");
              }
              if(flag==true)
              {
                String q = "insert into addsubcategory values(?,?)";
                PreparedStatement myst =  myconn.prepareStatement(q);
                myst.setString(1, jComboBox1.getSelectedItem().toString());
                myst.setString(2, jTextField1.getText());
                int res = myst.executeUpdate();
                if(res>0)
                {
                    JOptionPane.showMessageDialog(rootPane, "Sub Category added successfully");
                    showsubcat();
                }
              }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(rootPane, "Error in query " + e.getMessage());
            }
            finally
            {
                myconn.close();
            }
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        showsubcat();
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
      String cname = jTable1.getValueAt(jTable1.getSelectedRow(),0).toString();
        String url = "jdbc:mysql://localhost/billingdb";
        try
        {
          Connection myconn =  DriverManager.getConnection(url, "mydbuser", "123");
          try
          {
                String q = "update addsubcategory set subcategory=? where subcategory=?";
                PreparedStatement myst =  myconn.prepareStatement(q);
                myst.setString(1,jTextField1.getText());
                myst.setString(2,cname);
                int myres = myst.executeUpdate();
                if(myres>0)
                {
                     JOptionPane.showMessageDialog(rootPane, "SubCategory Updated Successfully");
                     showsubcat();
                }
                else
                {
                    JOptionPane.showMessageDialog(rootPane, "SubCategory not updated Successfully");
                }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(rootPane, "Error in query this query" + e.getMessage());
          }
          finally
          {
              myconn.close();
          }
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
      int  res = JOptionPane.showConfirmDialog(rootPane, "Are you sure to delete?","Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
        if(res==JOptionPane.YES_OPTION)
        {
            String url = "jdbc:mysql://localhost/billingdb";
            try
            {
              Connection myconn =  DriverManager.getConnection(url, "mydbuser", "123");
              try
              {
                    String q = "delete from addsubcategory where subcategory=?";
                    PreparedStatement myst =  myconn.prepareStatement(q);
                    myst.setString(1, jTextField1.getText());
                    int myres = myst.executeUpdate();
                    if(myres>0)
                    {
                         JOptionPane.showMessageDialog(rootPane, "SubCategory Deleted Successfully");
                         showsubcat();
                    }
                    else
                    {
                        JOptionPane.showMessageDialog(rootPane, "SubCategory not deleted Successfully");
                    }
              }
              catch(Exception e)
              {
                  JOptionPane.showMessageDialog(rootPane, "Error in query this query" + e.getMessage());
              }
              finally
              {
                  myconn.close();
              }
            }
            catch(SQLException e)
            {
                JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
            }
        }
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        String un = jTable1.getValueAt(jTable1.getSelectedRow(),0).toString();
        
        String url = "jdbc:mysql://localhost/billingdb";
        try
        {
          Connection myconn =  DriverManager.getConnection(url, "mydbuser", "123");
          try
          {
                String q = "select * from addsubcategory where subcategory=?";
                PreparedStatement myst =  myconn.prepareStatement(q);
                myst.setString(1, un);
                
                ResultSet myres = myst.executeQuery();
                if(myres.next())
                {
                    jTextField1.setText(myres.getString("subcategory"));
                    jButton2.setEnabled(true);
                    jButton3.setEnabled(true);
                    
                }
                else
                {
                    JOptionPane.showMessageDialog(rootPane, "Incorrect phone number");
                    jTextField1.setText(null);
                }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(rootPane, "Error in query " + e.getMessage());
          }
          finally
          {
              myconn.close();
          }
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
        }
        
    }//GEN-LAST:event_jTable1MouseClicked
    void fetchcat()
    {
        String path = "jdbc:mysql://localhost/billingdb";
        try
        {
            Connection myconn =  DriverManager.getConnection(path, "mydbuser", "123");
            try      
            {
                String q = "select * from addcategory";
                PreparedStatement myst =  myconn.prepareStatement(q);
                ResultSet res = myst.executeQuery();
                while(res.next())
                {
                   jComboBox1.addItem(res.getString("Category"));
                }
                if(jComboBox1.getItemCount()==1)
                {
                    jComboBox1.removeAllItems();//removes choose
                    jComboBox1.addItem("No Categories available");// add this message
                }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(rootPane, "Error in query " + e.getMessage());
            }
            finally
            {
                myconn.close();
            }
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
        }
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}