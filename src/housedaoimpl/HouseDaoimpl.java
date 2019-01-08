package housedaoimpl;

import entity.House;
import ihousedao.IhouseDao;
import uitl.DBuitl;

public class HouseDaoimpl implements IhouseDao {
//���ⷿ�����
	public boolean addhouse(House house) {
		try {
			String sql="insert into house(username,address,salemoney,area,houtype,floor,zhuangxiu,chaoxiang,csqk) values(?,?,?,?,?,?,?,?,?)";
		Object[] params= {house.getUsername(),house.getAddress(),house.getSalemoney(),house.getArea(),house.getHoutype(),house.getFloor(),house.getZhuangxiu(),house.getChaoxiang(),house.isCsqk()};
        boolean count=DBuitl.dosql(sql, params);
        if(count) {
        	return true;
        }else {
        	return false;
        }
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}		
	}
	//ɾ��������Ϣ
	public boolean deletehouse(int username){
		String sql="delete from house where houno=?";
		Object[] params= {username};
		return DBuitl.dosql(sql, params);
	}
	
	//���۷������
	public boolean addhouse2(House house) {
		try {
			String sql="insert into house(username,address,leasemoney,area,houtype,floor,zhuangxiu,chaoxiang,csqk) values(?,?,?,?,?,?,?,?,?)";
		Object[] params= {house.getUsername(),house.getAddress(),house.getLeasemoney(),house.getArea(),house.getHoutype(),house.getFloor(),house.getZhuangxiu(),house.getChaoxiang(),house.isCsqk()};
        boolean count=DBuitl.dosql(sql, params);
        if(count) {
        	return true;
        }else {
        	return false;
        }
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}	
	}
	
}
