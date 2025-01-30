package com.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static Connection getConnection() throws Exception {

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspauth", "root", "");

		return conn;
	}

}