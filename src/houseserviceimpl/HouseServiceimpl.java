package houseserviceimpl;

import entity.House;
import housedaoimpl.HouseDaoimpl;
import ihousedao.IhouseDao;
import ihouseservice.IhouseService;

public class HouseServiceimpl implements IhouseService {
IhouseDao housedao=new HouseDaoimpl();
//出售房屋添加
public boolean addhouse(House house) {
	return housedao.addhouse(house);
}
//删除房屋信息
public boolean deletehouse(int username) {
	return housedao.deletehouse(username);
}
//出租房屋添加
public boolean addhouse2(House house) {
	return housedao.addhouse2(house);
	
}
}
