package com.house.dao.impl;

import com.house.dao.IUserDao;
import com.house.util.DBUtil;

public class UserDaoImpl implements IUserDao{

	//查询用户总人数
	public int getUserCount() {
		String sql = "select count(1) from user";
		return DBUtil.getTotalCount(sql);
	}

	//查询房东总人数
	public int getLandlordCount() {
		String sql = "select count(1) from user where saorzu=1";
		return DBUtil.getTotalCount(sql);
	}

}
