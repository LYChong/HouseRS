package houanduseservcieimpl;

import java.util.List;

import entity.HouandUse;
import houandusedaoimpl.HouandUsedaoimpl;
import ihouandusedao.IhouanduseDao;
import ihouanduseservice.IhouanduseService;

public class HouanduseServiceimpl implements IhouanduseService {
	IhouanduseDao  houandusedao=new HouandUsedaoimpl();
	//个人主页，查询发布出租房屋信息
	public List<HouandUse> queryhandu(int username){
		return houandusedao.queryhandu(username);
	}
	//个人主页，查询发布出售房屋信息
	public List<HouandUse> queryhandu2(int username){
		return houandusedao.queryhandu2(username);
	}
	public List<HouandUse> queryhousebymoney(int salemoney,int salemoney1){
		return houandusedao.queryhousebymoney(salemoney, salemoney1);
	}
}
