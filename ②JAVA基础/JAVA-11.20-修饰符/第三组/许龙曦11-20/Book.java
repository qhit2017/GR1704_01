package com.xulongxi;

public class Book {
    private String name;
	private double price;
	private final static String no="û��";
	private final int count=100;
	
	
      public String getName() {
		return name;
      }
      
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public static String getNo() {
		return no;
	}

	public int getCount() {
		return count;
	}

	public void xinxi(){
    	  System.out.println("������"+getName()+",�۸�"+getPrice()+"Ԫ"+",����,"+getCount()+"ҳ"+getNo()+"��");
      }
}