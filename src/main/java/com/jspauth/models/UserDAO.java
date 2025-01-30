package com.jspauth.models;

import java.sql.*;

import com.config.DbConnection;

public class UserDAO {

	// Register User
	public boolean registerUser(User user) throws Exception {

		boolean isSuccess = false;

		Connection conn = DbConnection.getConnection();

		String query = "INSERT INTO users (first_name, last_name, email, password, mobile, address, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement ps = conn.prepareStatement(query);

		ps.setString(1, user.getFirstName());
		ps.setString(2, user.getLastName());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getPassword());
		ps.setString(5, user.getMobile());
		ps.setString(6, user.getAddress());
		ps.setString(7, user.getGender());

		try {
			// Executing Query
			ps.executeUpdate();
			isSuccess = true;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Login User
	public User loginUser(String email, String password) {
		return null;
	}

}