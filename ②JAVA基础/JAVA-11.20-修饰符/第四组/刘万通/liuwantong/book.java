package com.liuwantong;

public class book {

	private String name;
	private int price;
	private final String on="û��";
	private final int count=16552;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOn() {
		return on;
	}
	
	public int getCount() {
		return count;
	}
    public void getlnfo(){
    	System.out.println("����"+name+",�ҵļ۸���"+price+"����100ҳ"+on+"��,�ܹ���"+count+"ҳ");
    }
	
	
	
}
