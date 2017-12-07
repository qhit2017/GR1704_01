package com.ST5;

public class laoshu implements dongwu{
		private String name;
		private String pinzhong;
		private int legs;
		private int tizhong;
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
		public int getLegs() {
			return legs;
		}
		public void setLegs(int legs) {
			this.legs = legs;
		}
		public int getTizhong() {
			return tizhong;
		}
		public void setTizhong(int tizhong) {
			this.tizhong = tizhong;
		}
		@Override
		public void chi() {
			// TODO Auto-generated method stub
			System.out.println("∫…¿º Û≥‘∫…¿º∂π°£");
		}
		@Override
		public void jiao(String xingming) {
			// TODO Auto-generated method stub
			
		}
		@Override
		public void jiao(String xingming, String pinzhong) {
			// TODO Auto-generated method stub
			System.out.println(pinzhong+xingming+"≤ªª·Ω–°£");
		}
		
}
