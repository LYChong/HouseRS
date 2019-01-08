package usedaoimpl;

import java.sql.ResultSet;

import entity.Use;
import iusedao.IuseDao;
import uitl.DBuitl;

public class UseDaoimpl implements IuseDao{
//�ж��Ƿ����
	public boolean isexist(int username) {
		try {
			String sql="select * from user where username=?";
			Object[] params= {username};
			ResultSet resultSet=DBuitl.doquerysql(sql, params);
			if(resultSet.next()) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
		return false;
		}
	}
//ע��
	public boolean signup(int username, String password,String telephone,String name,boolean saorzu) {
		String sql="insert into user(username,password,telephone,name,saorzu) values(?,?,?,?,?)";
		Object[] params= {username,password,telephone,name,saorzu};
		if(isexist(username)) {
			System.out.println("�û��Ѵ���");
			return false;
		}
		return DBuitl.dosql(sql, params);
		
	}
	
//��¼
	public boolean DL(Use use) {
		try {
			ResultSet re;
		String sql="select * from user where username=? and password=?";
		Object[] params= {use.getUsername(),use.getPassword()};
		re=DBuitl.doquerysql(sql, params);
		if(re.next()) {
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
