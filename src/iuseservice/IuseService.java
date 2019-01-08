package iuseservice;

import entity.Use;

public interface IuseService {
	public boolean signup(int username, String password,String telephone,String name,boolean saorzu);
    public boolean DL(Use use);
}
