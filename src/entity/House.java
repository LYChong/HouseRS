package entity;

public class House {
private int houno;
private int username;
private String address;
private int salemoney;
private int area;
private String houtype;
private String floor;
private String zhuangxiu;
private String chaoxiang;
private int leasemoney;
private boolean csqk;
public House() {

}


public House(int houno, int username, String address, int salemoney, int area, String houtype, String floor,
		String zhuangxiu, String chaoxiang, int leasemoney, boolean csqk) {
	super();
	this.houno = houno;
	this.username = username;
	this.address = address;
	this.salemoney = salemoney;
	this.area = area;
	this.houtype = houtype;
	this.floor = floor;
	this.zhuangxiu = zhuangxiu;
	this.chaoxiang = chaoxiang;
	this.leasemoney = leasemoney;
	this.csqk = csqk;
}


public int getHouno() {
	return houno;
}
public void setHouno(int houno) {
	this.houno = houno;
}
public int getUsername() {
	return username;
}
public void setUsername(int username) {
	this.username = username;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getSalemoney() {
	return salemoney;
}
public void setSalemoney(int salemoney) {
	this.salemoney = salemoney;
}
public int getArea() {
	return area;
}
public void setArea(int area) {
	this.area = area;
}
public String getHoutype() {
	return houtype;
}
public void setHoutype(String houtype) {
	this.houtype = houtype;
}

public String getFloor() {
	return floor;
}
public void setFloor(String floor) {
	this.floor = floor;
}

public String getZhuangxiu() {
	return zhuangxiu;
}
public void setZhuangxiu(String zhuangxiu) {
	this.zhuangxiu = zhuangxiu;
}

public String getChaoxiang() {
	return chaoxiang;
}
public void setChaoxiang(String chaoxiang) {
	this.chaoxiang = chaoxiang;
}

public int getLeasemoney() {
	return leasemoney;
}
public void setLeasemoney(int leasemoney) {
	this.leasemoney = leasemoney;
}
public boolean isCsqk() {
	return csqk;
}
public void setCsqk(boolean csqk) {
	this.csqk = csqk;
}

}
