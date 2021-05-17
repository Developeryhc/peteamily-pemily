package ca.model.vo;

import java.util.ArrayList;

import inca.model.vo.Inca;

public class Adopt {
	private ArrayList<Inca> inca;
	private ArrayList<Ca> ca;
	public Adopt() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Adopt(ArrayList<Inca> inca, ArrayList<Ca> ca) {
		super();
		this.inca = inca;
		this.ca = ca;
	}
	public ArrayList<Inca> getInca() {
		return inca;
	}
	public void setInca(ArrayList<Inca> inca) {
		this.inca = inca;
	}
	public ArrayList<Ca> getCa() {
		return ca;
	}
	public void setCa(ArrayList<Ca> ca) {
		this.ca = ca;
	}

}
