package jspproject1;

import java.sql.*;
import java.util.ArrayList;

public class Messager {
    private String tujuan;

    public Messager(String tujuan) {
        this.tujuan = tujuan;
    }

    public String getTujuan() {
        return this.tujuan;
    }

    public ArrayList<Message> getList() {
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<Message> hasil = new ArrayList<>();

        try {
            conn = DbConnection.connect();
            String sql = "SELECT * FROM percakapan WHERE tujuan=? ORDER BY id DESC";
            st = conn.prepareStatement(sql);
            st.setString(1, this.tujuan);
            rs = st.executeQuery();

            while (rs.next()) {
                Message msg = new Message();
                msg.pengirim = rs.getString("pengirim");
                msg.pesan = rs.getString("pesan");
                hasil.add(msg);
            }
            return hasil;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) {}
            try { if (st != null) st.close(); } catch (SQLException e) {}
            try { if (conn != null) conn.close(); } catch (SQLException e) {}
        }
    }

    public void addMessage(String pengirim, String pesan) {
        Connection conn = null;
        PreparedStatement st = null;

        try {
            conn = DbConnection.connect();
            String sql = "INSERT INTO percakapan (tujuan, pengirim, pesan) VALUES (?, ?, ?)";
            st = conn.prepareStatement(sql);
            st.setString(1, this.tujuan);
            st.setString(2, pengirim);
            st.setString(3, pesan);
            st.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try { if (st != null) st.close(); } catch (SQLException e) {}
            try { if (conn != null) conn.close(); } catch (SQLException e) {}
        }
    }
}