package com.herrberk.quiz;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class ShowResults {

	public ShowResults() {
	}

	public static void save(String user,int result, String selectedExam) {	

		Connection con=DatabaseConnectionFactory.createConnection();

		try
		{
			Statement st=con.createStatement();
			String sql="SELECT java,javascript,sequel,python,css,php,c,ruby FROM users WHERE username = '"+user+"'";
			System.out.println(sql);
			st.executeUpdate(sql);
		}catch(SQLException sqe){
			System.out.println("Error : While importing from the database");
			}
	
		try
		{
			con.close();	
		}catch(SQLException se){
			System.out.println("Error : While Closing Connection");
		}
	}
}
