package xyz.codenine.modelo;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import xyz.codenine.dto.Imagen;
import xyz.codenine.util.Conectar;
import xyz.codenine.util.Conexion;

public class ImagenDAO {

    /*Metodo listar*/
    public List<Imagen> listarPersona() {
        List<Imagen> pers = new ArrayList<Imagen>();
        Conexion con = new Conexion();
        try {
            int b = 2;
            //  String sql = "SELECT SISUBD_C_CODI04, SISUBD_V_DESC15 FROM SISUBDIRECCION WHERE SIUU_C_CODI03="+persona.getUnidad()+"";
            String sql = "select idpersona,nombre,paterno,materno,DATE_FORMAT(fecha_nac,'%d/%m/%Y') as fecha_nac,telefono,tel_contacto,idpersona,piso,habitacion.idhabitacion as idhab,dni_foto from persona \n"
                    + "inner join habitacion on habitacion.idhabitacion = persona.idhabitacion \n"
                    + "where idtipo_persona =1";
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
                per.setHabitacion(rs.getInt("idhab"));
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
   


    /*Metodo agregar*/
    public void Agregar_ImagenVO(Imagen vo) {
        Conectar conec = new Conectar();
        String sql = "insert into persona values(?,?,?,?,?,?,?,?,?,null,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);

            ps.setString(1, vo.getIdPersona());
            ps.setString(2, vo.getNombre());
            ps.setString(3, vo.getPaterno());
            ps.setString(4, vo.getMaterno());
            ps.setString(5, vo.getNacimiento());
            ps.setString(6, vo.getTelefono());
            ps.setString(7, vo.getTipo_doc());
            ps.setBlob(8, vo.getArchivoimg());
            ps.setString(9, vo.getFecha_ingreso());
            ps.setInt(10, vo.getHabitacion());
            ps.setInt(11, vo.getTipoPersona());
            ps.setInt(12, vo.getIdContacto());
            ps.setString(13, vo.getTelefono2());
//            ps.setString(7, vo.getCreacion());
            ps.executeUpdate();
//            JOptionPane.showMessageDialog(null, "ok imagen");
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "error imagen: " + ex);
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

//    public void mostrar( int id){
//        Conexion con = new Conexion();
//            PreparedStatement ps = null;
//            ResultSet rs = null;
//            byte[] b = null;
//
//            try {
//                ps = con.getConnection().prepareStatement("SELECT PER_V_ADJ FROM PERSONA WHERE PER_I_COD = ?");
//                ps.setInt(1, id);
//                rs = ps.executeQuery();
//                while (rs.next()) {
//                    b = rs.getBytes(1);
//                }
//                InputStream bos = new ByteArrayInputStream(b);
//
//                int tamanoInput = bos.available();
//                byte[] datosIMAGEN = new byte[tamanoInput];
//                bos.read(datosIMAGEN, 0, tamanoInput);
//
//                response.getOutputStream().write(datosIMAGEN);
//                bos.close();
//                ps.close();
//                rs.close();
//                con.desconectar();
//
//            } catch (Exception ex) {
//                System.out.println(ex.getMessage());
//            }
//    }
//    /*Metodo Modificar*/
//    public void Modificar_ImagenVO(ImagenVO vo) {
//        Conexion conec = new Conexion();
//        String sql = "UPDATE imagen2 SET nombreimg = ?, archivoimg = ? WHERE codigoimg = ?";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setString(1, vo.getNombreimg());
//            ps.setBlob(2, vo.getArchivoimg());
//            ps.setInt(3, vo.getCodigoimg());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }
//
//    /*Metodo Modificar*/
//    public void Modificar_ImagenVO2(ImagenVO vo) {
//        Conexion conec = new Conexion();
//        String sql = "UPDATE imagen2 SET nombreimg = ? WHERE codigoimg = ?";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setString(1, vo.getNombreimg());
//            ps.setInt(2, vo.getCodigoimg());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }
//
//    /*Metodo Eliminar*/
//    public void Eliminar_ImagenVO(int id) {
//        Conexion conec = new Conexion();
//        String sql = "DELETE FROM imagen2 WHERE codigoimg = ?";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }
//
//
//    /*Metodo Consulta id*/
//    public ImagenVO getImagenVOById(int studentId) {
//        ImagenVO vo = new ImagenVO();
//        Conexion db = new Conexion();
//        PreparedStatement preparedStatement = null;
//        ResultSet rs = null;
//        String query = "SELECT * FROM imagen2 WHERE codigoimg = ?";
//        try {
//            preparedStatement = db.getConnection().prepareStatement(query);
//            preparedStatement.setInt(1, studentId);
//            rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                vo.setCodigoimg(rs.getInt(1));
//                vo.setNombreimg(rs.getString(2));
//                vo.setArchivoimg2(rs.getBytes(3));
//            }
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                rs.close();
//                preparedStatement.close();
//                db.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//        return vo;
//    }
}
