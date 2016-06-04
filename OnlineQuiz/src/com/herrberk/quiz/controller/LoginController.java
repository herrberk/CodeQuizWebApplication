package com.herrberk.quiz.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.herrberk.quiz.DatabaseConnectionFactory;
import com.herrberk.quiz.SecurityMechanism;

@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Create the DB if non-existent
		DatabaseConnectionFactory.createDB();

		// Create the table in the database if non-existent
		DatabaseConnectionFactory.createTable();

		Connection con = DatabaseConnectionFactory.createConnection();
		ResultSet set = null;
		int i = 0;
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
		session.setAttribute("errorMessage", "Error! Invalid Username or Password..");
		session.setAttribute("tryAgain", "Please Try Again..");
		try {
			Statement st = con.createStatement();
			SecurityMechanism sm = new SecurityMechanism();
			String sql = "SELECT * FROM users WHERE username='" +
			username + "' and password='" + sm.getEncrypted(password) + "' ";
			set = st.executeQuery(sql);
			
			while (set.next()) {
				i = 1;
			}
			if (i != 0) {
				session.setAttribute("user", username);
				rd = request.getRequestDispatcher("/WEB-INF/jsps/home.jsp");
				rd.forward(request, response);

			} else {
				rd = request.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
			    session.setAttribute("errorMessage", " ");
			    session.setAttribute("tryAgain", " ");
				rd.forward(request, response);
			}
		} catch (SQLException sqe) {
			System.out.println("Error : While Fetching records from database");
		}
		try {
			con.close();
		} catch (SQLException se) {
			System.out.println("Error : While Closing Connection");
		}
	}

}
