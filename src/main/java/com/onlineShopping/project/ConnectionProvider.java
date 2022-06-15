package com.onlineShopping.project;

import java.sql.*;


public class ConnectionProvider {


	public  static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineShopping","root","American");
			return connection;
		
		} catch (Exception e) {
			System.out.print(e);
			return null;

		}
	}

}
