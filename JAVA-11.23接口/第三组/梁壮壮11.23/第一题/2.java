package com.ST3;
//上边上、下边长、高、周长、面积
public class tixing implements xingzhuang{
		private int shangbianchang;
		private int xiabianchang;
		private int gao;
		private int zhochang;
		private int mianji;
		
		public int getShangbianchang() {
			return shangbianchang;
		}
		public void setShangbianchang(int shangbianchang) {
			this.shangbianchang = shangbianchang;
		}
		public int getXiabianchang() {
			return xiabianchang;
		}
		public void setXiabianchang(int xiabianchang) {
			this.xiabianchang = xiabianchang;
		}
		public int getGao() {
			return gao;
		}
		public void setGao(int gao) {
			this.gao = gao;
		}
		public int getZhochang() {
			return zhochang;
		}
		public void setZhochang(int zhochang) {
			this.zhochang = zhochang;
		}
		public int getMianji() {
			return mianji;
		}
		public void setMianji(int mianji) {
			this.mianji = mianji;
		}
		@Override
		public void zhouchang() {
			// TODO Auto-generated method stub
			System.out.println("周长是："+zhochang);
		}
		@Override
		public void mianji(int shangbianchang,int xiabianchang,int gao) {
			// TODO Auto-generated method stub	
			System.out.println("面积是："+((shangbianchang+xiabianchang)*gao/2));
		}
		@Override
		public void mianji(int bianchang) {
			// TODO Auto-generated method stub
			
		}
		
}
