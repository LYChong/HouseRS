package com.house.dao;

import java.util.List;

import com.house.entity.House;

public interface IHouseDao {
	//添加房屋信息
	public boolean addHouse(House house);
	
	//查询房屋信息
	public List<House> queryAllHouse();
	
	//更据houno删除房子
	public boolean deleteHouse(int houno);

}