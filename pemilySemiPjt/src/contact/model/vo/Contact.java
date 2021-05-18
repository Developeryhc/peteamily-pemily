package contact.model.vo;

public class Contact {
	private int partnerNo;
	private String partnerName;
	private String partnerEmp;
	private String phone;
	private String email;
	private String content;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(int partnerNo, String partnerName, String partnerEmp, String phone, String email, String content) {
		super();
		this.partnerNo = partnerNo;
		this.partnerName = partnerName;
		this.partnerEmp = partnerEmp;
		this.phone = phone;
		this.email = email;
		this.content = content;
	}
	public int getPartnerNo() {
		return partnerNo;
	}
	public void setPartnerNo(int partnerNo) {
		this.partnerNo = partnerNo;
	}
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	public String getPartnerEmp() {
		return partnerEmp;
	}
	public void setPartnerEmp(String partnerEmp) {
		this.partnerEmp = partnerEmp;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
