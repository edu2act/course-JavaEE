package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class DbConnection {
	private Connection con;

	public DbConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/07-01?user=root&password=&characterEncoding=utf8");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public User login(String userName, String password) {
		PreparedStatement pre = null;
		ResultSet res = null;
		User u = null;
		String sql = "select * from users where username=? and password=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userName);
			pre.setString(2, password);
			res = pre.executeQuery();
			if (res.next()) {
				u = new User();
				u.setId(res.getInt("id"));
				u.setUserName(res.getString("username"));
				u.setPassword(res.getString("password"));
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				if (res != null)
					res.close();
				if (pre != null)
					pre.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return u;
	}

	public ArrayList<User> select() {
		PreparedStatement pre = null;
		ResultSet res = null;
		ArrayList<User> list = new ArrayList<User>();
		String sql = "select * from users";
		try {
			pre = con.prepareStatement(sql);
			res = pre.executeQuery();
			while (res.next()) {
				User u = new User();
				u.setId(res.getInt("id"));
				u.setUserName(res.getString("username"));
				u.setPassword(res.getString("password"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				if (res != null)
					res.close();
				if (pre != null)
					pre.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return list;
	}

	public boolean insert(String userName, String password) {
		PreparedStatement pre = null;
		String sql = "insert into `users`(username,password) values(?,?)";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userName);
			pre.setString(2, password);
			pre.execute();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		} finally {
			try {
				if (pre != null)
					pre.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}
