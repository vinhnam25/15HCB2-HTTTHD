package backend.entities;

import javax.xml.bind.annotation.XmlRootElement;

import com.sun.xml.internal.txw2.annotation.XmlElement;

@XmlRootElement
public class User {

	private int userid;
	private String username;
	private String password;
	private String fullname;
	private String phone;
	private int roleid;
	private int isactive;
	private String token;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userid, String username, String password, String fullname,
			String phone, int roleid, int isactive) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.phone = phone;
		this.roleid = roleid;
		this.isactive = isactive;
		token = "";
	}

	@XmlElement
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@XmlElement
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@XmlElement
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@XmlElement
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	@XmlElement
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@XmlElement
	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	@XmlElement
	public int getIsactive() {
		return isactive;
	}

	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}

	@XmlElement
	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	
	
	
}
