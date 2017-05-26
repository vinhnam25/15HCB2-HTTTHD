package backend.entities;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Merchant {

	private int MerchantId;
	private String MerchantName;
	private int TypeId;
	private String TypeName;
	private int ProvinceId;
	private int DistrictId;
	private String DistrictName;
	private String ProvinceName;
	private String Address1;
	private String Address2;
	private String Address3;
	private int IsActive;
	private int OwnerId;
	private String Phone;
	private String Fax;
	private String Zip;
	private String Email;
	private int AgentId;
	private Date FirtActiveDate;
	private Date LastActiveDate;
	private String Status;
	private Date ApprovalDate;
	
	public Merchant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Merchant(int merchantId, String merchantName, int provinceId,
			int districtId, String address1, String address2, String address3,
			int isActive, int ownerId, String phone, String fax, String zip,
			String email, int agentId, Date firtActiveDate,
			Date lastActiveDate, String status, Date approvalDate) {
		super();
		MerchantId = merchantId;
		MerchantName = merchantName;
		ProvinceId = provinceId;
		DistrictId = districtId;
		Address1 = address1;
		Address2 = address2;
		Address3 = address3;
		IsActive = isActive;
		OwnerId = ownerId;
		Phone = phone;
		Fax = fax;
		Zip = zip;
		Email = email;
		AgentId = agentId;
		FirtActiveDate = firtActiveDate;
		LastActiveDate = lastActiveDate;
		Status = status;
		ApprovalDate = approvalDate;
	}

	@XmlElement
	public int getMerchantId() {
		return MerchantId;
	}

	public void setMerchantId(int merchantId) {
		MerchantId = merchantId;
	}

	@XmlElement
	public String getMerchantName() {
		return MerchantName;
	}

	public void setMerchantName(String merchantName) {
		MerchantName = merchantName;
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
	public String getAddress1() {
		return Address1;
	}

	public void setAddress1(String address1) {
		Address1 = address1;
	}

	@XmlElement
	public String getAddress2() {
		return Address2;
	}

	public void setAddress2(String address2) {
		Address2 = address2;
	}

	@XmlElement
	public String getAddress3() {
		return Address3;
	}

	public void setAddress3(String address3) {
		Address3 = address3;
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

	@XmlElement
	public int getAgentId() {
		return AgentId;
	}

	public void setAgentId(int agentId) {
		AgentId = agentId;
	}

	@XmlElement
	public Date getFirtActiveDate() {
		return FirtActiveDate;
	}

	public void setFirtActiveDate(Date firtActiveDate) {
		FirtActiveDate = firtActiveDate;
	}

	@XmlElement
	public Date getLastActiveDate() {
		return LastActiveDate;
	}

	public void setLastActiveDate(Date lastActiveDate) {
		LastActiveDate = lastActiveDate;
	}

	@XmlElement
	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@XmlElement
	public Date getApprovalDate() {
		return ApprovalDate;
	}

	public void setApprovalDate(Date approvalDate) {
		ApprovalDate = approvalDate;
	}

	@XmlElement
	public String getDistrictName() {
		return DistrictName;
	}

	public void setDistrictName(String districtName) {
		DistrictName = districtName;
	}

	@XmlElement
	public String getProvinceName() {
		return ProvinceName;
	}

	public void setProvinceName(String provinceName) {
		ProvinceName = provinceName;
	}

	@XmlElement
	public int getTypeId() {
		return TypeId;
	}

	public void setTypeId(int typeId) {
		TypeId = typeId;
	}

	@XmlElement
	public String getTypeName() {
		return TypeName;
	}

	public void setTypeName(String typeName) {
		TypeName = typeName;
	}
	
	
}
