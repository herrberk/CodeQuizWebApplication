package com.herrberk.quiz.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.herrberk.quiz.DatabaseConnectionFactory;

@WebServlet("/checkRegister")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegistrationController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Get the form fields filled by the user
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Connection con = DatabaseConnectionFactory.createConnection();
		boolean error = false;

		// Create the table in the database if non-existent
		DatabaseConnectionFactory.createTable();

		// Check if the username exists in the database
		boolean exists = DatabaseConnectionFactory.checkUsername(username);

		try {
			Statement st = con.createStatement();
			String sql = "INSERT INTO users values ('" + username + "','" + password + "','" + email + "'"
					+ ",0,0,0,0,0,0,0,0)";
			System.out.println(sql);
			st.execute(sql);
			error = false;
		} catch (SQLException sqe) {
			System.out.println("Error : While Inserting record into the database");
			error = true;
			System.out.println(sqe);
		}
		try {
			con.close();
		} catch (SQLException se) {
			System.out.println("Error : While Closing Connection");
			error = true;
		}
		request.setAttribute("newUser", username);

		if (!error && !exists) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsps/regSuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsps/regFailure.jsp");
			dispatcher.forward(request, response);
		}
	}
}
