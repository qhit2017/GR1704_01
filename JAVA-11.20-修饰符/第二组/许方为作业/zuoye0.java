package com.yushengjie;

public class Book {
		private String name;
		private int price;
		private String no;
		private int count;
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
		public String getNo() {
			return no;
		}
		public void setNo(String no) {
			this.no = no;
		}
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
		public void getInfo() {
			System.out.println("书名是:"+name+",价格是:"+price+",有"+no+"本.");
			
		}

}
