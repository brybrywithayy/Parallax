package com.gainsay.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Used for database connection
 * This way it is decoupled from the DAO which makes both look cleaner
 * Note the singleton pattern
 */
public class ConnectionUtil {
    private static String url = "";
    private static String username = "";
    private static String password = "";

    // here's our singleton static object
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                connection = DriverManager.getConnection(url, username, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

}
