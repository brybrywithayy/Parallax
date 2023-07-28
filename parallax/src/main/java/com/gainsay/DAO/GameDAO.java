package com.gainsay.DAO;

import java.sql.*;

import com.gainsay.Model.*;
import com.gainsay.Util.ConnectionUtil;

public class GameDAO {
    
    /*
     * Contains all methods to access the database
     */

    // Retrive faction by id - will need to process faction in Factory before using
    public Faction getFactionById(int id) {
        Connection conn = ConnectionUtil.getConnection();

        try {
            String sql = "SELECT * FROM faction WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String factionName = rs.getString("factionName");
                String homeSystem = rs.getString("homeSystem");
                String description = rs.getString("description");
                int wins = rs.getInt("wins");
                int losses = rs.getInt("losses");
                Faction faction = new Faction(factionName, homeSystem, description, wins, losses);
                return faction;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // get pilot

    // get all pilots for faction

    // get ship

    // get faction wins

    // get faction losses

    // get pilot wins

    // get pilot losses

    // update faction wins

    // update faction losses

    // update pilot wins

    // update pilot losses
}
