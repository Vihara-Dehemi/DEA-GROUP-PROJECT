/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.LapDtls;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wwwkr
 */
public class LapDAOImpl implements LapDAO {

    private Connection conn;

    public LapDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean addLaps(LapDtls b) {
        boolean f = false;

        try {
            String sql = "INSERT INTO lap_dtls (lapname,price,lapCategory,status,photo,user_email) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps;
            ps = conn.prepareStatement(sql);
            ps.setString(1, b.getLapName());
            ps.setString(2, b.getPrice());
            ps.setString(3, b.getLapCategory());
            ps.setString(4, b.getStatus());
            ps.setString(5, b.getPhotoName());
            ps.setString(6, b.getEmail());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LapDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return f;

    }

    @Override
    public List<LapDtls> getAllLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {
            String sql = "SELECT * FROM lap_dtls ";
            PreparedStatement ps;
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LapDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    @Override
    public LapDtls getLapById(int id) {

        LapDtls b = null;
        try {

            String sql = "SELECT * FROM lap_dtls WHERE lapId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }

    @Override
    public boolean updateEditLap(LapDtls b) {
        boolean f = false;

        try {

            String sql = "UPDATE lap_dtls SET lapname=?,price=?,status=? WHERE lapId =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getLapName());
            ps.setString(2, b.getPrice());
            ps.setString(3, b.getStatus());
            ps.setInt(4, b.getlapId());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }

    @Override
    public boolean deleteLaps(int id) {

        boolean f = false;

        try {

            String sql = "DELETE FROM lap_dtls WHERE lapId =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<LapDtls> getNewLap() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE lapCategory=? AND status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "New");
            ps.setString(2, "Active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<LapDtls> getRecentLap() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Active");

            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<LapDtls> getOldLaps() {

        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE lapCategory=? AND status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Old");
            ps.setString(2, "Active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    @Override
    public List<LapDtls> getAllRecentLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Active");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<LapDtls> getAllNewLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE lapCategory=? AND status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "New");
            ps.setString(2, "Active");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<LapDtls> getAllOldLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;

        try {

            String sql = "SELECT * FROM lap_dtls WHERE lapCategory=? AND status=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Old");
            ps.setString(2, "Active");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setLapId(rs.getInt(1));
                b.setLapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setLapCategory(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
