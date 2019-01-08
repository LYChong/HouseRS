package useserviceimpl;

import entity.Use;
import iusedao.IuseDao;
import iuseservice.IuseService;
import usedaoimpl.UseDaoimpl;
//зЂВс
public class UseServiceimpl implements IuseService {
    IuseDao iusedao=new UseDaoimpl();
	public boolean signup(int username, String password, String telephone, String name, boolean saorzu) {
		return iusedao.signup(username, password, telephone, name, saorzu);
	}
	public boolean DL(Use use) {
		return iusedao.DL(use);
	}

}
