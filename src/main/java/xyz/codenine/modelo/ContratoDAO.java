/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import xyz.codenine.dto.Habitacion;
import xyz.codenine.dto.Imagen;
import xyz.codenine.util.Conexion;

/**
 *
 * @author ninus69
 */
public class ContratoDAO {

    public List<Imagen> listarPersona(String dni) {
        List<Imagen> img = new ArrayList<Imagen>();
        Conexion con = new Conexion();
        Connection conn = con.getConnection();
        ResultSet rs = null;
        try {
            String sql = "select idPersona, nombre, paterno, materno from persona where idPersona =" + dni + "";
            Statement pstm = conn.createStatement();
            rs = pstm.executeQuery(sql);
            while (rs.next()) {
                Imagen im = new Imagen();
                im.setDni(rs.getString("idPersona"));
                im.setNombre(rs.getString("nombre"));
                im.setPaterno(rs.getString("paterno"));
                im.setMaterno(rs.getString("materno"));
                img.add(im);
            }
            rs.close();
        } catch (Exception e) {
        } finally {
            con.desconectar();
        }
        return img;
    }

    public List<Habitacion> costoHab(String dni) {
        List<Habitacion> habs = new ArrayList<Habitacion>();
        Conexion con = new Conexion();
        Connection conn = con.getConnection();
        ResultSet rs;
        try {
            String sql = "select piso, costo   from habitacion\n"
                    + "inner join persona on habitacion.idhabitacion = persona.idhabitacion\n"
                    + "where persona.idpersona="+dni+"";
            Statement stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Habitacion hab = new Habitacion();
                hab.setPiso(rs.getString("piso"));
                hab.setCosto(rs.getDouble("costo"));
                habs.add(hab);
            }
            rs.close();
        } catch (Exception e) {
        } finally {
            con.desconectar();
        }

        return habs;
    }

}
