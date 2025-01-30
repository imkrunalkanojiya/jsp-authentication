package com.jspauth.controllers;

import com.jspauth.models.User;
import com.jspauth.models.UserDAO;

import jakarta.servlet.http.HttpServlet;

public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServlet request, HttpServlet response) throws Exception {

		// Fetch Form Data

		String firstName = request.getInitParameter("first-name");
		String lastName = request.getInitParameter("last-name");
		String email = request.getInitParameter("email");
		String mobile = request.getInitParameter("mobile");
		String address = request.getInitParameter("address");
		String gender = request.getInitParameter("gender");
		String password = request.getInitParameter("password");

		// Set UserData to User Model

		User user = new User();

		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setAddress(address);
		user.setGender(gender);
		user.setPassword(password);

		UserDAO dao = new UserDAO();

		if (dao.registerUser(user)) {
			System.out.println("User Registred Controller");
		} else {
			System.out.println("User not able to register from DAO");
		}

	}

}