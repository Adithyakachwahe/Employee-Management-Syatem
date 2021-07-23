package com.adithya.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegistrationRepo {
	
Connection con = null;
	
	
	public RegistrationRepo() throws SQLException, ClassNotFoundException {
		String urlString = "jdbc:mysql://localhost:3306/empmansys";
		String usernameString ="root";
		String passwordsString="systemserver";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(urlString ,usernameString , passwordsString);
	}
	
	
	public String display_details_one(String sql) throws ClassNotFoundException, SQLException {
		
		Statement st = con.createStatement();
		ResultSet rSet =  st.executeQuery(sql);    //DDL , DML ,DQL
		
		while(rSet.next()){
//			System.out.println(rSet.getString(1));
			String data = rSet.getString(1);
//			System.out.println(data);
			return data;
		}
		
		
		st.close();
		con.close();
		return "Not Entered";
		
	}
}
