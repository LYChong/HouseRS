package com.house.service.impl;

import com.house.dao.IAdminDao;
import com.house.dao.impl.AdminDaoImpl;
import com.house.entity.Admin;
import com.house.service.IAdminService;

public class AdminServiceImpl implements IAdminService{
	IAdminDao adminDao = new AdminDaoImpl();
	
	//增加管理员
	public boolean AddAdmin(Admin admin) {
		adminDao.addAdmin(admin);
		return true;
	}

	//登录
	public boolean QueryAdmin(Admin admin) {
		return adminDao.queryAdmin(admin);	
	}

	//查询管理员人数
	public int getTotalCount() {
		return adminDao.getTotalCount();
	}

	//查询用户人数
	public int getUTotalCount() {
		return adminDao.getUTotalCount();
	}
	
}
