package entity;

public class Use {
private int username;
private String password;
private String telephone;
private String name;
boolean saorzu;
public Use() {
	
}
public Use(int username, String password, String telephone, String name, boolean saorzu) {
	super();
	this.username = username;
	this.password = password;
	this.telephone = telephone;
	this.name = name;
	this.saorzu = saorzu;
}
public int getUsername() {
	return username;
}
public void setUsername(int username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public boolean isSaorzu() {
	return saorzu;
}
public void setSaorzu(boolean saorzu) {
	this.saorzu = saorzu;
}

}
