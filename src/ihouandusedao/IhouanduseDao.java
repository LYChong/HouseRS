package ihouandusedao;

import java.util.List;

import entity.HouandUse;

public interface IhouanduseDao {
	//������ҳ����ѯ�������ⷿ����Ϣ
public List<HouandUse> queryhandu(int username);
 //������ҳ����ѯ�������۷�����Ϣ
public List<HouandUse> queryhandu2(int username);
//��������ѯ����
public List<HouandUse> queryhousebymoney(int salemoney,int salemoney1);
}
