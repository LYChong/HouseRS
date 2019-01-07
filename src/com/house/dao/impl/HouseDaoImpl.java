package com.house.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.house.dao.IHouseDao;
import com.house.entity.House;
import com.house.util.DBUtil;

public class HouseDaoImpl implements IHouseDao{

	//添加房屋信息返回布尔值
	public boolean addHouse(House house) {
		String sql="insert into house(username,address,salemoney,area,houtype,floor,zhuangxiu,chaoxiang,csqk,leasemoney) values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params= {house.getUsername(),house.getAddress(),house.getSalemoney(),house.getArea(),house.getHoutype(),house.getFloor(),house.getZhuangxiu(),house.getChaoxiang(),house.isCsqk(),house.getLeasemoney()};
        return DBUtil.executeUpdate(sql, params);    
	}

    //查询房屋信息
	public List<House> queryAllHouse() {
		List<House> houses = new ArrayList<>();
		House house = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from house";
			rs = DBUtil.executeQuery(sql, null);
			while(rs.next()) {
				int houno = rs.getInt("houno");
				int username = rs.getInt("username");
				String address = rs.getString("address");
				int salemoney = rs.getInt("salemoney");
				int area = rs.getInt("area");
				String houtype = rs.getString("houtype");
				String floor = rs.getString("floor");
				String zhuangxiu = rs.getString("zhuangxiu");
				String chaoxiang = rs.getString("chaoxiang");
				Boolean csqk =  rs.getBoolean("csqk");
				int leasemoney = rs.getInt("leasemoney");
				house = new House(houno, username, address, salemoney, area, houtype, floor, zhuangxiu, chaoxiang, leasemoney, csqk);
				houses.add(house);
			}
			return houses;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally {
			DBUtil.closeAll(rs, pstmt, DBUtil.connection);
		}
		
	}

	//更据houno删除房屋
	public boolean deleteHouse(int houno) {
		String sql = "delete from house where houno = ?";
		Object[] params = {houno};
		return DBUtil.executeUpdate(sql, params);
		
	}
}
