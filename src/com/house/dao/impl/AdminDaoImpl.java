package com.house.dao.impl;

import java.sql.ResultSet;

import com.house.dao.IAdminDao;
import com.house.entity.Admin;
import com.house.util.DBUtil;

public class AdminDaoImpl implements IAdminDao{
	
	
	//增加管理员
	public Boolean addAdmin(Admin admin) {
		String sql = "insert into admin(name,pwd) values(?,?)";
		Object[] params = {admin.getName(),admin.getPwd()};
		return DBUtil.executeUpdate(sql, params);
	}
	
	//管理员登录
	public Boolean queryAdmin(Admin admin) {
		try {
			ResultSet rs = null;
			String sql="select * from admin where name=? and pwd=?";
			Object[] params= {admin.getName(),admin.getPwd()};
			rs = DBUtil.executeQuery(sql, params);
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
			} catch (Exception e) {
				// TODO: handle exception
				return false;
			}
	}

	//查询管理员总人数
	public int getTotalCount() {
		String sql = "select count(1) from admin";
		return DBUtil.getTotalCount(sql);
	}

	//查询用户总人数
	public int getUTotalCount() {
		String sql = "select count(1) from user";
		return DBUtil.getTotalCount(sql);
	}

}
