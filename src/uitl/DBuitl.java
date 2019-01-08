package uitl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class DBuitl {
private static final String Driver="com.mysql.cj.jdbc.Driver";
private static final String url="jdbc:mysql://localhost:3306/housesale";
private static final String username="root";
private static final String password="root";
public static Connection connection;
public static PreparedStatement preparedStatement;
public static ResultSet resultset=null;
//连接
public static Connection getconnection() {
	try {
		Class.forName(Driver);
		return DriverManager.getConnection(url, username, password);
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return null;
	}
}
//增删改
public static boolean dosql(String sql, Object[] params) {
	System.out.println("1111");
	try {
		connection=getconnection();
		preparedStatement=connection.prepareStatement(sql);
		System.out.println("2222");
		if(params==null) {
			params=new Object[0];
		}
		for(int i=0;i<params.length;i++) {
			preparedStatement.setObject(i+1, params[i]);
		
		}
		int count=preparedStatement.executeUpdate();
		System.out.println(count);
		if(count>0) {
			return true;
		}else {
			return false;
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return false;
	}finally {
		getclose(connection,null,preparedStatement);
	}
}
//查
public static ResultSet doquerysql(String sql,Object[] params){ 
	try {
		connection=getconnection();
		preparedStatement=connection.prepareStatement(sql);
		if(params==null) {
			params=new Object[0];
		}
		for(int i=0;i<params.length;i++) {
			preparedStatement.setObject(i+1, params[i]);
			
		}
		resultset= preparedStatement.executeQuery();
		return resultset;
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return null;
	}
}
//关闭连接
public static void getclose(Connection connection,ResultSet resultSet,PreparedStatement preparedStatement) {
	try {
		if(connection!=null)
			connection.close();
		if(resultSet!=null)
			resultSet.close();
		if(preparedStatement!=null)
			preparedStatement.close();
	} catch (Exception e) {
		System.out.println("关闭失败");
	}
	
		
}
}
