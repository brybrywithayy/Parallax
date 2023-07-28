package com.gainsay.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
                Map<Pilot> pilots = new HashMap<>();

                return faction;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // get pilot
    public Pilot getPilotById(int id) {
        Connection conn = ConnectionUtil.getConnection();
        try {
            String sql = "SELECT * FROM pilot WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String crime = rs.getString("crime");
                Ship ship = getShipById("ship_id")
                int wins = rs.getInt("wins");
                int losses = rs.getInt("losses");
                return new Pilot(name, crime, ship, wins, losses);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // get all pilots for faction
    public List<Pilot> getPilotsByFactionId(int id) {
        Connection conn = ConnectionUtil.getConnection();
        try {
            String sql = "SELECT * FROM pilot WHERE factionId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            List<Pilot> pilots = new ArrayList<>();
            while (rs.next()) {
                String name = rs.getString("name");
                String crime = rs.getString("crime");
                // Ship ship = new Ship(rs.getString("ship")); TODO: get method to feed correct ship in here
                int wins = rs.getInt("wins");
                int losses = rs.getInt("losses");
                Pilot pilot = new Pilot(name, crime, ship, wins, losses);
                pilots.add(pilot);
            }
        }
    }

    // get ship
    public Ship getShipById(int id) {
        Connection conn = ConnectionUtil.getConnection();
        try {
            String sql = "SELECT * FROM ship WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int shipId = rs.getInt("ship_id");
                String name = rs.getString("ship_name");
                String weapon = rs.getString("weapon_name");
                int health = rs.getInt("health");
                int speed = rs.getInt("speed");
                int damage = rs.getInt("damage");
                Ship ship = new Ship(shipId, name, weapon, health, speed, damage);
                return ship;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // get faction wins

    // get faction losses

    // get pilot wins

    // get pilot losses

    // update faction wins

    // update faction losses

    // update pilot wins

    // update pilot losses
}
