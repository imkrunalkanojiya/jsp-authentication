package com.jspauth.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jspauth.models.Login;
import com.jspauth.models.Register;

public class Dao {

	// Register User
	public static int registerUser(Register user) throws Exception {
		int isSuccess = 0;
		Connection conn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspauth", "root", "");
			if (conn == null) {
				throw new SQLException("Database connection is null.");
			}

			PreparedStatement ps = conn.prepareStatement(
					"INSERT into users (first_name, last_name, email, password, mobile, address, gender) VALUES (?, ?, ?, ?, ?, ?, ?)");

			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getMobile());
			ps.setString(6, user.getAddress());
			ps.setString(7, user.getGender());

			isSuccess = ps.executeUpdate();
			// Executing Query

			if (isSuccess > 0) {
				isSuccess = 1;
			}

		} catch (SQLException e) {
			// Handle SQL exceptions
			System.out.println("Error in registerUser: " + e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close(); // Close the connection in the finally block
				} catch (SQLException e) {
					System.out.println("Error closing connection: " + e.getMessage());
				}
			}
		}
		return isSuccess;
	}

	// Login User

	public static int loginUser(Login user) throws Exception {

		int isSuccess = 0;
		Connection conn = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspauth", "root", "");
			if (conn == null) {
				throw new SQLException("Database connection is null.");
			}

			PreparedStatement ps = conn
					.prepareStatement("SELECT email,password FROM users WHERE email=? AND password=?");
			
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				String email = rs.getString(1);
				String password = rs.getString(2);
				
				user.setEmail(email);
				user.setPassword(password);
				
				if(rs.getString(1) == user.getEmail() && rs.getString(2) == user.getPassword()) {
					isSuccess = 1;					
				}else {
					isSuccess = 2;
				}
				
				
			}else {
				System.out.println("Details Not Found!");
				isSuccess = 0;
			}
			

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return isSuccess;

	}
}