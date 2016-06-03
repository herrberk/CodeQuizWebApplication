package com.herrberk.quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class DatabaseConnectionFactory {

	private static String dbURL = "jdbc:mysql://localhost/quiz";
	private static String dbUser = "admin";
	private static String dbPassword = "admin";

	/**
	 * Creates the database connection to the specified database
	 * 
	 * @return con of type Connection (returns null if connection is
	 *         unsuccessful)
	 */
	public static Connection createConnection() {
		Connection con = null;
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException ex) {
				System.out.println("Error: unable to load driver class!");
				System.exit(1);
			}
			con = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		} catch (SQLException sqe) {
			System.out.println("Error: While Creating connection to database");
			sqe.printStackTrace();
		}
		return con;
	}

	/**
	 * Creates the users table if it doesn't exist in the database
	 * 
	 * @return status of type boolean
	 */
	public static boolean createTable() {

		boolean status = false;
		Connection con = DatabaseConnectionFactory.createConnection();

		try {
			Statement st = con.createStatement();
			String sql = "CREATE TABLE IF NOT EXISTS users"
					+ "(username VARCHAR(100), password VARCHAR(15), email VARCHAR(100), java INT(10),"
					+ " javascript INT(10),  sequel INT(10),  python INT(10),  css INT(10),  php INT(10),  c INT(10),  ruby INT(10))";
			//System.out.println(sql);
			st.executeUpdate(sql);
			status = true;
		} catch (SQLException sqe) {
			System.out.println("Error : While Creating Table (Table Already Exists)");
			status = false;
		}

		try {
			con.close();
		} catch (SQLException se) {
			System.out.println("Error : While Closing Connection");
			status = false;
		}

		return status;
	}

	/**
	 * Checks if the username exists in the database
	 * 
	 * @param username
	 * @return exists of type boolean
	 */
	public static boolean checkUsername(String username) {

		boolean exists = false;
		Connection con = DatabaseConnectionFactory.createConnection();

		try {
			Statement st = con.createStatement();
			String sql = "Select * from  users where username='" + username + "'";
			st.executeUpdate(sql);
			exists = true;
			st.close();
		} catch (Exception e) {
			exists = false;
		}

		if (exists) {
			System.out.println("Username already exists !");
		} else {
			System.out.println("Username is available.");
		}
		return exists;
	}

	/**
	 * Retrieves the test results of the user
	 * 
	 * @param username
	 * @return tests of type LinkedList<Integer>
	 */

	public static LinkedList<Integer> retrieveUserData(String username) {

		LinkedList<Integer> tests = new LinkedList<>();
		Connection con = DatabaseConnectionFactory.createConnection();

		try {
			Statement st = con.createStatement();
			String sql = "Select * from users where username='" + username + "'";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				tests.add(rs.getInt("java"));
				tests.add(rs.getInt("javascript"));
				tests.add(rs.getInt("sequel"));
				tests.add(rs.getInt("python"));
				tests.add(rs.getInt("css"));
				tests.add(rs.getInt("php"));
				tests.add(rs.getInt("c"));
				tests.add(rs.getInt("ruby"));
			}
			
			st.close();
		} catch (Exception e) {
			System.out.println("Error : Cannot Retrieve User Data!");
			System.out.println(e);
		}

		return tests;
	}
}
