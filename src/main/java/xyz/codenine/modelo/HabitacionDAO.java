/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import xyz.codenine.dto.Contacto;
import xyz.codenine.dto.Habitacion;
import xyz.codenine.dto.Historial;
import xyz.codenine.dto.TipoPersona;
import xyz.codenine.util.Conectar;
import xyz.codenine.util.Conexion;

/**
 *
 * @author ninus69
 */
public class HabitacionDAO {

    public List<Habitacion> listarHabitacion() {
        List<Habitacion> habs = new ArrayList<Habitacion>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select * from habitacion";
            ResultSet rs = con.getDatos(sql);
            int n = 0;
            while (rs.next()) {
                Habitacion per = new Habitacion();
                per.setIdHabitacion(rs.getInt("idHabitacion"));
                per.setPiso(rs.getString("piso"));
                habs.add(per);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return habs;
    }

    public List<TipoPersona> listarTipoPersona() {
        List<TipoPersona> pers = new ArrayList<TipoPersona>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select * from tipo_persona";
            ResultSet rs = con.getDatos(sql);
            int n = 0;
            while (rs.next()) {
                TipoPersona per = new TipoPersona();
                per.setTipoPersona(rs.getInt("idtipo_persona"));
                per.setDescripcion(rs.getString("descripcion"));
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

    public List<Contacto> listarContacto() {
        List<Contacto> conc = new ArrayList<Contacto>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select * from contacto";
            ResultSet rs = con.getDatos(sql);
            int n = 0;
            while (rs.next()) {
                Contacto per = new Contacto();
                per.setIdContacto(rs.getInt("idcontacto"));
                per.setParentesco(rs.getString("parentesco"));
                conc.add(per);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
//              JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return conc;
    }

//     registrar pago
    public void registrarPago(Historial hi) {
        Conectar conec = new Conectar();
        String sql = "insert into historial values(?,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);

            ps.setInt(1, hi.getIdHabitacion());
            ps.setInt(2, hi.getIdPersona());
            ps.setString(3, hi.getFecha_pago());
            ps.setDouble(4, hi.getCantidad());
            ps.setString(5, hi.getDetalle());
//            ps.setString(7, vo.getCreacion());
            ps.executeUpdate();
//            JOptionPane.showMessageDialog(null, "ok imagen");
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "error pago: " + ex);
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

//     listar historial
    public List<Historial> listarHistorial(int cod) {
        List<Historial> hist = new ArrayList<Historial>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select piso, per_idpersona, DATE_FORMAT(fecha_pago,'%d/%m/%Y') as fecha_pago, cantidad, detalle from historial\n"
                    + "inner join habitacion on habitacion.idhabitacion = historial.hab_idhabitacion\n"
                    + "where per_idpersona=" + cod + "";
            ResultSet rs = con.getDatos(sql);
            int n = 0;
            while (rs.next()) {
                Historial his = new Historial();
                his.setHabitacion(rs.getString("piso"));
                his.setIdPersona(rs.getInt("per_idpersona"));
                his.setCantidad(rs.getDouble("cantidad"));
                his.setFecha_pago(rs.getString("fecha_pago"));
                his.setDetalle(rs.getString("detalle"));
                hist.add(his);
            }
            rs.close();
//             JOptionPane.showMessageDialog(null, "oka mdaldito" );
        } catch (SQLException e) {
//              JOptionPane.showMessageDialog(null, "error personal: " + e);
        } finally {
            con.desconectar();
        }
        return hist;
    }
}
