package com.王文政;

public class x1 {

		
		
		private String name;
		
		private String bianhao;
		
		private int yuwenchengji;
		
		private int shuxuechengji;
		
		private int yingyuchengji;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getBianhao() {
			return bianhao;
		}

		public void setBianhao(String bianhao) {
			this.bianhao = bianhao;
		}

		public int getYuwenchengji() {
			return yuwenchengji;
		}

		public void setYuwenchengji(int yuwenchengji) {
			this.yuwenchengji = yuwenchengji;
		}

		public int getShuxuechengji() {
			return shuxuechengji;
		}

		public void setShuxuechengji(int shuxuechengji) {
			this.shuxuechengji = shuxuechengji;
		}

		public int getYingyuchengji() {
			return yingyuchengji;
		}

		public void setYingyuchengji(int yingyuchengji) {
			this.yingyuchengji = yingyuchengji;
		}
		
		public void info(){
			System.out.println("考生姓名:"+name
					+",编号:"+bianhao
					+",语文成绩:"+yuwenchengji
					+",数学成绩:"+shuxuechengji
					+",英语成绩:"+yingyuchengji
					+",总成绩:"+(yuwenchengji+shuxuechengji+yingyuchengji));
		}
	

}
