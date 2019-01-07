package com.house.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.house.entity.Admin;
import com.mysql.cj.xdevapi.Statement;

//通用的数据库操作方法
public class DBUtil {
	private static final String URL = "jdbc:mysql://localhost:3306/housesale?useSSL=false";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	public static Connection connection = null;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return  DriverManager.getConnection(URL, USER, PASSWORD);
	}
	
	public static PreparedStatement createPreparedStatement(String sql,Object[] params) throws ClassNotFoundException, SQLException {
		pstmt = getConnection().prepareStatement(sql);
		if(params!=null) {
			for(int i=0;i<params.length;i++) {
				pstmt.setObject(i+1, params[i]);
			}
		}
		return pstmt;
	}
	
	public static void closeAll(ResultSet rs,PreparedStatement pstmt,Connection connection) {
		try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(connection!=null)connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询总数
	public static int getTotalCount(String sql) {
		int count = -1;
		try {
			 pstmt = createPreparedStatement(sql, null);
			 rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
 		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(rs, pstmt, connection);
		}
		return count;	
	}
	
	//通用的增删改
	public static boolean executeUpdate(String sql,Object[] params) {
		try {	
			pstmt = createPreparedStatement(sql, params);
			int count = pstmt.executeUpdate() ;
			if(count>0)
				return true;
			else 
				return false;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			closeAll(null, pstmt, connection);
		}
	}
	
	
	
	
	
	
	//通用的查   :  返回值一个集合  
	public static ResultSet executeQuery(String sql,Object[] params) {
		List<Admin> admins = new ArrayList<>();
		Admin admin = null;
		try {
			pstmt = createPreparedStatement(sql, params);
			rs = pstmt.executeQuery() ;
			return rs;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
