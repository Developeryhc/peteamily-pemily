package faq.model.vo;

public class Faq {
	
	private int faqNo;
	private String faqTiite;
	private String faqWriter;
	private String faqContent;
	private String faqDate;
	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Faq(int faqNo, String faqTiite, String faqWriter, String faqContent, String faqDate) {
		super();
		this.faqNo = faqNo;
		this.faqTiite = faqTiite;
		this.faqWriter = faqWriter;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
	}
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getFaqTiite() {
		return faqTiite;
	}
	public void setFaqTiite(String faqTiite) {
		this.faqTiite = faqTiite;
	}
	public String getFaqWriter() {
		return faqWriter;
	}
	public void setFaqWriter(String faqWriter) {
		this.faqWriter = faqWriter;
	}
	public String getFaqContentBr() {
		return faqContent.replaceAll("\r\n", "<br>");
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public String getFaqDate() {
		return faqDate;
	}
	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}
	
	
	
}
