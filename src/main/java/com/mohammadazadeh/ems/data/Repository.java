package com.mohammadazadeh.ems.data;

import java.sql.*;
import java.util.*;

import com.mohammadazadeh.ems.domain.*;

public class Repository
{
	public static User getUser(String username)
	{
		User user = null;
		Connection con;
		Statement st;
		ResultSet rs;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from ems.users where (username='" + username + "')");
			if (rs.next()) {
				user = new User(rs.getString("username"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("father_name"), rs.getString("ssn"), rs.getString("birthday"), rs.getString("phone"), rs.getString("address"), rs.getString("email") );
			}
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return user;
	}
	
	public static List<User> getUserList(String user_role)
	{
		List<User> userList = new ArrayList<User>();
		Connection con;
		Statement st;
		ResultSet rs;
		ResultSet rss;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from ems.users");
			while (rs.next()) {
				rss = st.executeQuery("select * from ems.user_roles where (username='" + rs.getString("username") + "')");
				if (rss.next())
				{
					if (rss.getString("user_role").equals(user_role))
					{
						User user = new User(rs.getString("username"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("father_name"), rs.getString("ssn"), rs.getString("birthday"), rs.getString("phone"), rs.getString("address"), rs.getString("email") );
						userList.add(user);
					}
				}
			}
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return userList;
	}
	
	public static String getRole(String username)
	{
		String role = null;
		Connection con;
		Statement st;
		ResultSet rs;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from ems.user_roles where (username='" + username + "')");
			if (rs.next()) {
				role = rs.getString("user_role");
			}
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return role;
	}
	
	public static List<Assignment> getAssignmentList()
	{
		List<Assignment> list = new ArrayList<Assignment>();
		Connection con;
		Statement st;
		ResultSet rs;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from ems.assignment");
			while (rs.next()) {
				Assignment assignment;
				assignment = new Assignment(rs.getInt("assignment_number"), rs.getString("course_name"), rs.getString("deadline"), rs.getString("content"), rs.getString("attachment") );
				list.add(assignment);
			}
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return list;
	}
	
	public static int addAssignment(String name, String attachment) throws SQLException
	{
		Connection con;
		Statement st;
		ResultSet rs;
		int id = -1;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			st.executeUpdate("insert into ems.assignment (course_name, attachment)  values ('" + name + "', '" + attachment + "')" );
			rs = st.executeQuery("select * from ems.assignment where (course_name = '" + name + "' and attachment = '" + attachment + "')" );
			if (rs.next())
				id = rs.getInt("id");
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return id;
	}
	
	public static int addUser(String username, String password, String firstname, String lastname, String fatherName, String ssn, String email, String phone, String address, String userRole)
	{
		Connection con;
		Statement st;
		ResultSet rs;
		int id = -1;
		try
		{
			con = JDBCUtil.getConnection();
			st = con.createStatement();
			st.executeUpdate("insert into ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone)  values ('" + firstname + "', '" + lastname + "', '" + username + "', '" + password + "', '" + fatherName + "', '" + address + "', '" + email + "', '" + ssn + "', '" + phone + "')" );
			rs = st.executeQuery("select * from ems.users where (username = '" + username + "')" );
			if (rs.next())
			{
				id = rs.getInt("id");
				st.executeUpdate("insert into ems.user_roles (username, user_role)  values ('" + username + "', '" + userRole + "')" );
			}
			con.close();
		}
		catch (SQLException sqlEx)
		{
			sqlEx.printStackTrace();
		}
		return id;
	}
}