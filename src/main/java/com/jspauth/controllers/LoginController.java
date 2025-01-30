package com.jspauth.controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspauth.dao.Dao;
import com.jspauth.models.Login;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) {

		// Fetch Form Data
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Set UserData to User Model
		Login user = new Login();
		user.setEmail(email);
		user.setPassword(password);

		try {
			int status = Dao.loginUser(user);
			if(status == 1) response.sendRedirect("index.jsp");
			else if(status == 2) System.out.println("Enter valid crendentials");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
}