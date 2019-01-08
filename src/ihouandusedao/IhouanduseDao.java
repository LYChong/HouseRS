package ihouandusedao;

import java.util.List;

import entity.HouandUse;

public interface IhouanduseDao {
	//个人主页，查询发布出租房屋信息
public List<HouandUse> queryhandu(int username);
 //个人主页，查询发布出售房屋信息
public List<HouandUse> queryhandu2(int username);
//根据租金查询房屋
public List<HouandUse> queryhousebymoney(int salemoney,int salemoney1);
}
