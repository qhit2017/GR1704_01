package com.xxx;

public class people {
		private String name;
		private	char sex;
		private String dianhua;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public char getSex() {
			return sex;
		}
		public void setSex(char sex) {
			this.sex = sex;
		}
		public String getDianhua() {
			return dianhua;
		}
		public void setDianhua(String dianhua) {
			this.dianhua = dianhua;
		}
		public void info(){
			System.out.println("������"+name+",�Ա�"+sex+"�绰���룺"+dianhua);
		}
}
