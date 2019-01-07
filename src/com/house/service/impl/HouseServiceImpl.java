package com.house.service.impl;

import java.util.List;

import com.house.dao.IHouseDao;
import com.house.dao.impl.HouseDaoImpl;
import com.house.entity.House;
import com.house.service.IHouseService;

public class HouseServiceImpl implements IHouseService {
	IHouseDao houseDao = new HouseDaoImpl();
	
	
 	//添加房屋信息
	public boolean addHouse(House house) {
		return	houseDao.addHouse(house);
	}
	
	
	//查询房屋信息
	public List<House> queryAllHouse() {
		return houseDao.queryAllHouse();
	}


	//删除房子信息
	public boolean deletHouse(int houno) {
		return houseDao.deleteHouse(houno);
	}

}
