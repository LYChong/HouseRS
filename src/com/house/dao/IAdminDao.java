package com.house.dao;

import com.house.entity.Admin;

public interface IAdminDao {
	//增加管理员
	public Boolean addAdmin(Admin admin);
	//登录
	public Boolean queryAdmin(Admin admin);
	//查询管理员人数
	public int getTotalCount(); 
	//查询用户人数
	public int getUTotalCount();
}
