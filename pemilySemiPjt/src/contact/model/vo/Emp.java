package contact.model.vo;

public class Emp {
	private int empNo;
	private String empName;
	private int empGrade;
	private String empGender;
	private String empPhone;
	private int empStore;
	private String empEnter;
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp(int empNo, String empName, int empGrade, String empGender, String empPhone, int empStore,
			String empEnter) {
		super();
		this.empNo = empNo;
		this.empName = empName;
		this.empGrade = empGrade;
		this.empGender = empGender;
		this.empPhone = empPhone;
		this.empStore = empStore;
		this.empEnter = empEnter;
	}
	public int getEmpNo() {
		return empNo;
	}
	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getEmpGrade() {
		return empGrade;
	}
	public void setEmpGrade(int empGrade) {
		this.empGrade = empGrade;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public String getEmpPhone() {
		return empPhone;
	}
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	public int getEmpStore() {
		return empStore;
	}
	public void setEmpStore(int empStore) {
		this.empStore = empStore;
	}
	public String getEmpEnter() {
		return empEnter;
	}
	public void setEmpEnter(String empEnter) {
		this.empEnter = empEnter;
	}
	
	
}
