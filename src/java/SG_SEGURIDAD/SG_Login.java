/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SG_SEGURIDAD;

import BD_MANAGER.Database;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Types;
import java.util.Date;

/**
 *
 * @author Achury
 */
public class SG_Login {

    int RespuestaSolicitud;

    Database db = new Database();
    ResultSet rs = null;
    Statement stmt = null;
    PreparedStatement pst;
    CallableStatement Prc = null;

    private String crprcion_nmbre;
    private String ssion_tpo;
    private String ssion_nmbre;
    private String ssion_clve;
    private String ssion_cdgo;
    private String nmbre_usrio;

    java.text.SimpleDateFormat fcha = new java.text.SimpleDateFormat("yyyyMMdd");

    public PreparedStatement getPst() {
        return pst;
    }

    public void setPst(PreparedStatement pst) {
        this.pst = pst;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public int getRespuestaSolicitud() {
        return RespuestaSolicitud;
    }

    public void setRespuestaSolicitud(int RespuestaSolicitud) {
        this.RespuestaSolicitud = RespuestaSolicitud;
    }

    public String getCrprcion_nmbre() {
        return crprcion_nmbre;
    }

    public void setCrprcion_nmbre(String crprcion_nmbre) {
        this.crprcion_nmbre = crprcion_nmbre;
    }

    public String getSsion_tpo() {
        return ssion_tpo;
    }

    public void setSsion_tpo(String ssion_tpo) {
        this.ssion_tpo = ssion_tpo;
    }

    public String getSsion_nmbre() {
        return ssion_nmbre;
    }

    public void setSsion_nmbre(String ssion_nmbre) {
        this.ssion_nmbre = ssion_nmbre;
    }

    public String getSsion_clve() {
        return ssion_clve;
    }

    public void setSsion_clve(String ssion_clve) {
        this.ssion_clve = ssion_clve;
    }

    public String getSsion_cdgo() {
        return ssion_cdgo;
    }

    public void setSsion_cdgo(String ssion_cdgo) {
        this.ssion_cdgo = ssion_cdgo;
    }

    public String getNmbre_usrio() {
        return nmbre_usrio;
    }

    public void setNmbre_usrio(String nmbre_usrio) {
        this.nmbre_usrio = nmbre_usrio;
    }

    public void ValidarUsuario(String Crprcion_Nmbre, String Ssion_Tpo, String Ssion_Nmbre , String Ssion_Clve) throws java.sql.SQLException {

        try {

            Prc = Database.getConnection().prepareCall("{call PR_INCIAR_SSION(?,?,?,?,?,?,?)}");

            // Parametros de Entrada
            Prc.setString(1, Crprcion_Nmbre);//IN_CRPRCION_NMBRE
            Prc.setString(2, Ssion_Tpo);//IN_SSION_TPO
            Prc.setString(3, Ssion_Nmbre); //PRUEBA
            Prc.setString(4, Ssion_Clve); //PRUEBA

            //  Prc.setString(10, "PR_INICIAR_SSION_" + fcha.format(new Date()) + ".txt");
            // Parametros de Salida
            Prc.registerOutParameter(4, Types.VARCHAR);
            Prc.registerOutParameter(5, Types.VARCHAR);
            Prc.registerOutParameter(6, Types.VARCHAR);
            Prc.registerOutParameter(7, Types.VARCHAR);

            //Ejecuto del procedimiento
            Prc.execute();

            ssion_nmbre = Prc.getString(6);
            ssion_clve = Prc.getString(7);
            ssion_cdgo = Prc.getString(8);
            nmbre_usrio = Prc.getString(9);

        } catch (java.sql.SQLException ex) {
            System.out.println("Error ValidarUsuario " + ex.getMessage());
        } finally {
            Prc.close();
        }
    }

}
