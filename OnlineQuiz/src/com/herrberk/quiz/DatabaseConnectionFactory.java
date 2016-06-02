package com.herrberk.quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnectionFactory {

	private static String dbURL="jdbc:mysql://localhost/quiz";
	private static String dbUser="admin";
	private static String dbPassword="admin";

	/**
	 * Creates the database connection to the specified database
	 * @return con of type Connection (returns null if connection is unsuccessful)
	 */
	public static Connection createConnection()
	{
		Connection con=null;
		try{
			try {
				Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException ex) {
				System.out.println("Error: unable to load driver class!");
				System.exit(1);
			}			
			con = DriverManager.getConnection(dbURL,dbUser,dbPassword);
		}
		catch(SQLException sqe){ System.out.println("Error: While Creating connection to database");sqe.printStackTrace();}
		return con;
	}

	/**
	 * Creates the users table if it doesn't exist in the database
	 * @return status of type boolean 
	 */
	public static boolean createTable(){

		boolean status=false;
		Connection con=DatabaseConnectionFactory.createConnection();

		try
		{
			Statement st=con.createStatement();
			String sql = "CREATE TABLE IF NOT EXISTS users" +
					"(username VARCHAR(100), password VARCHAR(15), email VARCHAR(100), java INT(10),"+
					" javascript INT(10),  sequel INT(10),  python INT(10),  css INT(10),  php INT(10),  c INT(10),  ruby INT(10))";
			System.out.println(sql);
			st.executeUpdate(sql);
			status = true;
		}catch(SQLException sqe){
			System.out.println("Error : While Creating Table (Table Already Exists)");
			status = false;
		}

		try
		{
			con.close();	
		}catch(SQLException se){
			System.out.println("Error : While Closing Connection");
			status=false;
		}

		return status;
	}

}



