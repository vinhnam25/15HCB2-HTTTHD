package backend.entities;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Agent {
	
	private int AgentId;
	private String AgentName;
	private int ProvinceId;
	private int DistrictId;
	private String Address;
	private int IsActive;
	private int OwnerId;
	private String Phone;
	private String Fax;
	private String Zip;
	private String Email;
	
	@XmlElement
	public int getAgentId() {
		return AgentId;
	}

	public void setAgentId(int agentId) {
		AgentId = agentId;
	}
	
	@XmlElement
	public String getAgentName() {
		return AgentName;
	}

	public void setAgentName(String agentName) {
		AgentName = agentName;
	}
	
	@XmlElement
	public int getProvinceId() {
		return ProvinceId;
	}

	public void setProvinceId(int provinceId) {
		ProvinceId = provinceId;
	}
	
	@XmlElement
	public int getDistrictId() {
		return DistrictId;
	}

	public void setDistrictId(int districtId) {
		DistrictId = districtId;
	}
	
	@XmlElement
	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}
	
	@XmlElement
	public int getIsActive() {
		return IsActive;
	}

	public void setIsActive(int isActive) {
		IsActive = isActive;
	}
	
	@XmlElement
	public int getOwnerId() {
		return OwnerId;
	}

	public void setOwnerId(int ownerId) {
		OwnerId = ownerId;
	}
	
	@XmlElement
	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}
	
	@XmlElement
	public String getFax() {
		return Fax;
	}

	public void setFax(String fax) {
		Fax = fax;
	}
	
	@XmlElement
	public String getZip() {
		return Zip;
	}

	public void setZip(String zip) {
		Zip = zip;
	}
	
	@XmlElement
	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}


	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}
}
