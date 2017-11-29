package com.ST5;

public class dog implements dongwu{
		private String name;
		private String pinzhong;
		private String yanse;
		private int nianling;
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPinzhong() {
			return pinzhong;
		}
		public void setPinzhong(String pinzhong) {
			this.pinzhong = pinzhong;
		}
		public String getYanse() {
			return yanse;
		}
		public void setYanse(String yanse) {
			this.yanse = yanse;
		}
		public int getNianling() {
			return nianling;
		}
		public void setNianling(int nianling) {
			this.nianling = nianling;
		}
		@Override
		public void chi() {
			// TODO Auto-generated method stub
			System.out.println("爱吃骨头。");
		}
		@Override
		public void jiao(String xingming) {
			// TODO Auto-generated method stub
			System.out.println(xingming+"叫的声音很大。");
		}
		@Override
		public void jiao(String xingming, String pinzhong) {
			// TODO Auto-generated method stub
			
		}
}
