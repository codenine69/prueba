/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author ninus69
 */
public class Conexion {

    Connection cn;
    String url = "jdbc:mysql://localhost/casa";
    String drv = "com.mysql.jdbc.Driver";
    String usu = "root";
    String pass = "root";
    public PreparedStatement pstm = null;
    public Statement stm = null;
    ResultSet rs = null;
    String sql = "";

    public Connection getConnection() {

        try {
            Class.forName(drv);//driver
            cn = DriverManager.getConnection(url, usu, pass);
            // pstm = cn.prepareStatement(sql);
            stm = cn.createStatement();
//            JOptionPane.showMessageDialog(null, "Conexion Exitosa PRUEB");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error de conexion: " + e);
        }
        return cn;
    }

    public ResultSet getDatos(String com) {
        try {
            this.getConnection();
            rs = stm.executeQuery(com);
        } catch (Exception e){
            JOptionPane.showMessageDialog(null, "Error getDatos: " + e);
        }
        return rs;
    }

    /*DESCONECTAR*/
    public void desconectar() {
        try {
            if (cn != null) {
                this.cn.close();
            }
        } catch (SQLException e) {
            System.out.println("Error de desconexion " + e.getMessage());
        }
    }

}
