package entity;

public class HouandUse {
	private int username;
	private String password;
	private String telephone;
	private String name;
	private boolean saorzu;
	private House house;
	public HouandUse() {
	
	}
	public HouandUse(int username, String password, String telephone, String name, boolean saorzu, House house) {
		super();
		this.username = username;
		this.password = password;
		this.telephone = telephone;
		this.name = name;
		this.saorzu = saorzu;
		this.house = house;
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
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	
}
