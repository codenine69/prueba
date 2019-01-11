/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import xyz.codenine.dto.Imagen;
import xyz.codenine.util.Conexion;

/**
 *
 * @author ninus69
 */
public class PerfilDAO {

    public List<Imagen> listarPersona(int cod) {
        List<Imagen> pers = new ArrayList<Imagen>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select idpersona,nombre,paterno,materno,DATE_FORMAT(fecha_nac,'%d/%m/%Y') as fecha_nac,telefono,tel_contacto,idpersona,piso,habitacion.idhabitacion as idhab,dni_foto from persona \n"
                    + "inner join habitacion on habitacion.idhabitacion = persona.idhabitacion\n"
                    + "where idPersona=" + cod + "";
            ResultSet rs = con.getDatos(sql);
            int n = 1;
            while (rs.next()) {
                Imagen per = new Imagen();
                per.setIdPersona(rs.getString("idpersona"));
                per.setNombre(rs.getString("nombre"));
                per.setPaterno(rs.getString("paterno"));
                per.setMaterno(rs.getString("materno"));
                per.setNacimiento(rs.getString("fecha_nac"));
                per.setTelefono(rs.getString("telefono"));
                per.setTelefono2(rs.getString("tel_contacto"));
                per.setDni(rs.getString("idpersona"));
                per.setHabitacion2(rs.getString("piso"));
                per.setHabitacion(rs.getInt("idhab"));
                per.setArchivoimg2(rs.getBytes("dni_foto"));
                per.setContador(n++);
                pers.add(per);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
//              JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return pers;
    }

    /*Metodo listar acompañante*/
    public List<Imagen> listarPersona2(int hab) {
        List<Imagen> pers = new ArrayList<Imagen>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select * from persona \n"
                    + "inner join habitacion on habitacion.idhabitacion = persona.idhabitacion \n"
                    + "where idtipo_persona = 2 and persona.idhabitacion=" + hab + "";
            ResultSet rs = con.getDatos(sql);
            int n = 1;
            while (rs.next()) {
                Imagen per = new Imagen();
                per.setIdPersona(rs.getString("idpersona"));
                per.setNombre(rs.getString("nombre"));
                per.setPaterno(rs.getString("paterno"));
                per.setMaterno(rs.getString("materno"));
                per.setNacimiento(rs.getString("fecha_nac"));
                per.setTelefono(rs.getString("telefono"));
                per.setDni(rs.getString("idpersona"));
                per.setHabitacion(rs.getInt("idhabitacion"));
                per.setHabitacion2(rs.getString("piso"));
                per.setArchivoimg2(rs.getBytes("dni_foto"));
                per.setContador(n++);
                pers.add(per);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
//              JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return pers;
    }

    /*Metodo listar acompañante*/
    public List<Imagen> contarAmigos(int hab) {
        List<Imagen> pers = new ArrayList<Imagen>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select count(*) as contador from persona \n"
                    + "where idtipo_persona =2 and idhabitacion="+hab+"";
            ResultSet rs = con.getDatos(sql);
            int n = 1;
            while (rs.next()) {
                Imagen per = new Imagen();
                per.setIdPersona(rs.getString("contador"));
                pers.add(per);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
//              JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return pers;
    }
}
