package com.������;

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
			System.out.println("��������:"+name
					+",���:"+bianhao
					+",���ĳɼ�:"+yuwenchengji
					+",��ѧ�ɼ�:"+shuxuechengji
					+",Ӣ��ɼ�:"+yingyuchengji
					+",�ܳɼ�:"+(yuwenchengji+shuxuechengji+yingyuchengji));
		}
	

}
