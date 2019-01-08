package ihouanduseservice;

import java.util.List;

import entity.HouandUse;

public interface IhouanduseService {
	public List<HouandUse> queryhandu(int username);
	public List<HouandUse> queryhandu2(int username);
	public List<HouandUse> queryhousebymoney(int salemoney,int salemoney1);
}
