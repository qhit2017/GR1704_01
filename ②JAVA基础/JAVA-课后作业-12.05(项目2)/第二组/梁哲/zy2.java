package lz;

public class zy2 {
	private  String name;
	private	 char xb;
	private  String phone;
	
		public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getXb() {
		return xb;
	}

	public void setXb(char xb) {
		this.xb = xb;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

		public void info(){
			System.out.println("姓名是："+name+",性别是："+xb+",电话号码是："+phone);
		}
		
	
}
