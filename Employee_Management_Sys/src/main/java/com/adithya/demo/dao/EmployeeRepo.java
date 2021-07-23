package com.adithya.demo.dao;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;



public class EmployeeRepo {
	Connection con = null;
	
	
	public EmployeeRepo() throws SQLException, ClassNotFoundException {
		String urlString = "jdbc:mysql://localhost:3306/empmansys";
		String usernameString ="root";
		String passwordsString="systemserver";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(urlString ,usernameString , passwordsString);
	}
	
	public int getId(String qry) throws SQLException
	{
		
		PreparedStatement st = con.prepareStatement(qry);
		ResultSet rSet =  st.executeQuery();
		if(rSet.next())
		{
			System.out.println(rSet.getInt(1));
			return rSet.getInt(1) ;
		}
		return 0;
	}
	
	
	public int insert( String tablename ,String sql) throws SQLException
	{
		
		if(tablename == "empmansys.registration")
		{	
			Statement st = con.createStatement();
			int out =  st.executeUpdate(sql);
			System.out.println("1 row added in registration table");
			return out;
		}
		
		if(tablename == "empmansys.user")
		{	
			Statement st = con.createStatement();
			int out =  st.executeUpdate(sql);
			System.out.println("1 row added in user table");
			return out;
		}
		
		if(tablename == "empmansys.leave")
		{	
			Statement st = con.createStatement();
			int out =  st.executeUpdate(sql);
			System.out.println("1 row added in leave table");
			return out;
		}
		if(tablename == "empmansys.emp")
		{	
			Statement st = con.createStatement();
			int out =  st.executeUpdate(sql);
			System.out.println("1 row added in emp table");
			return out;
		}
		
		
		return 0;
		
		
		
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
