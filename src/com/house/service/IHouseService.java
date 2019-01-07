package com.house.service;

import java.util.List;

import com.house.entity.House;

public interface IHouseService {
	//添加房屋信息
	public boolean addHouse(House house);
	
	//显示房屋信息
	public List<House> queryAllHouse();
	
	//更据houno删除房子
	public boolean deletHouse(int houno);
	
	//查询房子总数
	public int getHouseCount();
	
	//查询出租房子数
	public int getRentalHouseCount();

	


}
