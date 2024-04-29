/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import mypackage.LapDtls;

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

            String sql = "INSERT INTO lap_dtls (lapname,price,photo,category) VALUES (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getlapName());
            ps.setString(2, b.getPrice());
            ps.setString(3, b.getPhotoName());
            ps.setString(4, b.getCategory());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<LapDtls> getAllLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls a = null;

        try {
            String sql = "SELECT * FROM lap_dtls";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                a = new LapDtls();
                a.setlapId(rs.getInt(1));
                a.setlapName(rs.getString(2));
                a.setPrice(rs.getString(3));
                a.setPhotoName(rs.getString(4));
                a.setCategory(rs.getString(5));
                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
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
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }

    @Override
    public boolean updateEditLaps(LapDtls b) {
        boolean f = false;
        try {
            String sql = "UPDATE lap_dtls SET lapname=?,price=? where lapId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getlapName());
            ps.setString(2, b.getPrice());
            ps.setInt(3, b.getlapId());

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
            String sql = "DELETE FROM lap_dtls WHERE lapId=?";
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
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "DELL");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<LapDtls> getASUSNewLap() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;
        try {
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "ASUS");

            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<LapDtls> getMSINewLap() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;
        try {
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "MSI");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);
                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<LapDtls> getAllMSILaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;
        try {
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "MSI");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }

    @Override
    public List<LapDtls> getAllASUSLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;
        try {
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "ASUS");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<LapDtls> getAllDELLLaps() {
        List<LapDtls> list = new ArrayList<LapDtls>();
        LapDtls b = null;
        try {
            String sql = "SELECT * FROM lap_dtls WHERE category=? ORDER BY lapId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "DELL");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                b = new LapDtls();
                b.setlapId(rs.getInt(1));
                b.setlapName(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setPhotoName(rs.getString(4));
                b.setCategory(rs.getString(5));

                list.add(b);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
