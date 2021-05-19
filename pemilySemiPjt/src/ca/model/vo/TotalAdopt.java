package ca.model.vo;

import java.util.ArrayList;

public class TotalAdopt {
	private ArrayList<Adopt> totalAdopt;
	private int totalCount;
	public TotalAdopt() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TotalAdopt(ArrayList<Adopt> totalAdopt, int totalCount) {
		super();
		this.totalAdopt = totalAdopt;
		this.totalCount = totalCount;
	}
	public ArrayList<Adopt> getTotalAdopt() {
		return totalAdopt;
	}
	public void setTotalAdopt(ArrayList<Adopt> totalAdopt) {
		this.totalAdopt = totalAdopt;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
}
