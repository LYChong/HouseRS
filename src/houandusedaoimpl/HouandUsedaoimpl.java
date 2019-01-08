package houandusedaoimpl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.HouandUse;
import entity.House;
import ihouandusedao.IhouanduseDao;
import uitl.DBuitl;

public class HouandUsedaoimpl implements IhouanduseDao{
//个人主页，查询发布出租房屋信息
	public List<HouandUse> queryhandu(int username) {
		try {
			String sql="select * from user a, house b where a.username=? and a.username=b.username and csqk=1";
	    Object[] params= {username};
	    ResultSet resultSet=DBuitl.doquerysql(sql, params);
	    List<HouandUse> houanduses=new ArrayList<HouandUse>();
	    while(resultSet.next()) {
	    	String password = resultSet.getString("password");
	    	String telephone=resultSet.getString("telephone");
	    	String name=resultSet.getString("name");
	    	boolean saorzu=resultSet.getBoolean("saorzu");
	    	int houno=resultSet.getInt("houno");
	    	String address=resultSet.getString("address");
	    	int salemoney=resultSet.getInt("salemoney");
	    	int area= resultSet.getInt("area");
	    	String houtype=resultSet.getString("houtype");
	    	String floor=resultSet.getString("floor");
	    	String zhuangxiu=resultSet.getString("zhuangxiu");
	    	String chaoxiang=resultSet.getString("chaoxiang");
	    	boolean csqk=resultSet.getBoolean("csqk");
	    	House house=new House(houno, username, address, salemoney, area, houtype, floor, zhuangxiu, chaoxiang,0, csqk);
	    	HouandUse houanduse=new HouandUse(username, password, telephone, name, saorzu, house) ;
	    	houanduses.add(houanduse);
	    	
	    }
	    return houanduses;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	//个人主页，查询发布出售房屋信息
	public List<HouandUse> queryhandu2(int username) {
		try {
			String sql="select * from user a, house b where a.username=? and a.username=b.username and csqk=0";
	    Object[] params= {username};
	    ResultSet resultSet=DBuitl.doquerysql(sql, params);
	    List<HouandUse> houanduses=new ArrayList<HouandUse>();
	    while(resultSet.next()) {
	    	String password = resultSet.getString("password");
	    	String telephone=resultSet.getString("telephone");
	    	String name=resultSet.getString("name");
	    	boolean saorzu=resultSet.getBoolean("saorzu");
	    	int houno=resultSet.getInt("houno");
	    	String address=resultSet.getString("address");
	    	int leasemoney=resultSet.getInt("leasemoney");
	    	int area= resultSet.getInt("area");
	    	String houtype=resultSet.getString("houtype");
	    	String floor=resultSet.getString("floor");
	    	String zhuangxiu=resultSet.getString("zhuangxiu");
	    	String chaoxiang=resultSet.getString("chaoxiang");
	    	boolean csqk=resultSet.getBoolean("csqk");
	    	House house=new House(houno, username, address, 0, area, houtype, floor, zhuangxiu, chaoxiang,leasemoney, csqk);
	    	HouandUse houanduse=new HouandUse(username, password, telephone, name, saorzu, house) ;
	    	houanduses.add(houanduse);
	    	
	    }
	    return houanduses;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	public List<HouandUse> queryhousebymoney(int salemoney,int salemoney1) {
		try {
			String sql="select * from user a, house b where a.username=b.username and b.salemoney between ? and ?";
	    Object[] params= {salemoney,salemoney1};
	    ResultSet resultSet=DBuitl.doquerysql(sql, params);
	    List<HouandUse> houanduses=new ArrayList<HouandUse>();
	    while(resultSet.next()) {
	    	int salemoney2=resultSet.getInt("salemoney");
	    	int username=resultSet.getInt("username");
	    	String password = resultSet.getString("password");
	    	String telephone=resultSet.getString("telephone");
	    	String name=resultSet.getString("name");
	    	boolean saorzu=resultSet.getBoolean("saorzu");
	    	int houno=resultSet.getInt("houno");
	    	String address=resultSet.getString("address");
	    	int leasemoney=resultSet.getInt("leasemoney");
	    	int area= resultSet.getInt("area");
	    	String houtype=resultSet.getString("houtype");
	    	String floor=resultSet.getString("floor");
	    	String zhuangxiu=resultSet.getString("zhuangxiu");
	    	String chaoxiang=resultSet.getString("chaoxiang");
	    	boolean csqk=resultSet.getBoolean("csqk");
	    	House house=new House(houno, username, address, salemoney2, area, houtype, floor, zhuangxiu, chaoxiang,leasemoney, csqk);
	    	HouandUse houanduse=new HouandUse(username, password, telephone, name, saorzu, house) ;
	    	houanduses.add(houanduse);
	    }
	    return houanduses;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

}
