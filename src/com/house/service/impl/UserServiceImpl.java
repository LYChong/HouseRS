package com.house.service.impl;

import com.house.dao.IUserDao;
import com.house.dao.impl.UserDaoImpl;
import com.house.service.IUserService;
import com.house.util.DBUtil;

public class UserServiceImpl implements IUserService{
	IUserDao userDao =  new UserDaoImpl();
	//查询用户总人数
	public int getUserCount() {
		
		return userDao.getUserCount();
	}

	//查询房东人数
	public int getLandlordCount() {
		// TODO Auto-generated method stub
		return userDao.getLandlordCount();
	}
	
	

}
