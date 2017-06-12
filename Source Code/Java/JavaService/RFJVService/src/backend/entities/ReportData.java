package backend.entities;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class ReportData {

	private String transactionId;
	private double transactionAmount;
	private String transactionDate;
	private String transactionTime;
	private String transactionDesc;
	private String cardType;
	private String keyEntry;
	private String accountNumber;
	private String countryCode;
	private String fileSource;
	private String transactionType;
	private String productName;
	private int quantity;
	private String merchantName;
	private String transactionTypeName;
	
	public ReportData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReportData(String transactionId, double transactionAmount,
			String transactionDate, String transactionTime,
			String transactionDesc, String cardType, String keyEntry,
			String accountNumber, String countryCode, String fileSource,
			String transactionType, String productName, int quantity,
			String merchantName) {
		super();
		this.transactionId = transactionId;
		this.transactionAmount = transactionAmount;
		this.transactionDate = transactionDate;
		this.transactionTime = transactionTime;
		this.transactionDesc = transactionDesc;
		this.cardType = cardType;
		this.keyEntry = keyEntry;
		this.accountNumber = accountNumber;
		this.countryCode = countryCode;
		this.fileSource = fileSource;
		this.transactionType = transactionType;
		this.productName = productName;
		this.quantity = quantity;
		this.merchantName = merchantName;
	}

	@XmlElement
	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	@XmlElement
	public double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	@XmlElement
	public String getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}

	@XmlElement
	public String getTransactionTime() {
		return transactionTime;
	}

	public void setTransactionTime(String transactionTime) {
		this.transactionTime = transactionTime;
	}

	@XmlElement
	public String getTransactionDesc() {
		return transactionDesc;
	}

	public void setTransactionDesc(String transactionDesc) {
		this.transactionDesc = transactionDesc;
	}

	@XmlElement
	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	@XmlElement
	public String getKeyEntry() {
		return keyEntry;
	}

	public void setKeyEntry(String keyEntry) {
		this.keyEntry = keyEntry;
	}

	@XmlElement
	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	@XmlElement
	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	@XmlElement
	public String getFileSource() {
		return fileSource;
	}

	public void setFileSource(String fileSource) {
		this.fileSource = fileSource;
	}

	@XmlElement
	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	@XmlElement
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@XmlElement
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@XmlElement
	public String getMerchantName() {
		return merchantName;
	}

	public void setMerchantName(String merchantName) {
		this.merchantName = merchantName;
	}
	
	@XmlElement
	public String getTransactionTypeName() {
		return transactionTypeName;
	}

	public void setTransactionTypeName(String transactionTypeName) {
		this.transactionTypeName = transactionTypeName;
	}
}
