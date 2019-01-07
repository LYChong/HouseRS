package com.house.service;

import com.house.entity.Admin;

public interface IAdminService {
	//增加管理员
	public boolean AddAdmin(Admin admin);
	//登录
	public boolean QueryAdmin(Admin admin);
	//查询管理员总人数
	public int getTotalCount();
	//查询用户总人数
	public int getUTotalCount();
}
