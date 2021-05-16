package member.model.vo;

public class Member {

	// 회원번호
	private int memberNo;

	// 회원아이디(UNI)
	private String memberId;

	// 회원비밀번호
	private String memberPw;

	// 회원이름
	private String memberName;

	// 회원등급(DFT)
	private int memberGrade;

	// 회원성별(CHK)
	private String memberGender;

	// 회원전화번호
	private String memberPhone;

	// 회원주소
	private String memberAddr;

	// 회원이메일
	private String emailmemberEmail;

	// 가입일(DFT)
	private String memberEnter;

	// 분양예정
	private int memberAn;

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberAddr() {
		return memberAddr;
	}

	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}

	public String getEmailmemberEmail() {
		return emailmemberEmail;
	}

	public void setEmailmemberEmail(String emailmemberEmail) {
		this.emailmemberEmail = emailmemberEmail;
	}

	public String getMemberEnter() {
		return memberEnter;
	}

	public void setMemberEnter(String memberEnter) {
		this.memberEnter = memberEnter;
	}

	public int getMemberAn() {
		return memberAn;
	}

	public void setMemberAn(int memberAn) {
		this.memberAn = memberAn;
	}

	// Member ★ 모델 복사
	public void CopyData(Member param) {
		this.memberNo = param.getMemberNo();
		this.memberId = param.getMemberId();
		this.memberPw = param.getMemberPw();
		this.memberName = param.getMemberName();
		this.memberGrade = param.getMemberGrade();
		this.memberGender = param.getMemberGender();
		this.memberPhone = param.getMemberPhone();
		this.memberAddr = param.getMemberAddr();
		this.emailmemberEmail = param.getEmailmemberEmail();
		this.memberEnter = param.getMemberEnter();
		this.memberAn = param.getMemberAn();
	}
}