package com.zhangjisen;

public class shu implements Dongwu{
	private String name;
	private String type;
	private int leg;
	private int weight;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getLeg() {
		return leg;
	}
	public void setLeg(int leg) {
		this.leg = leg;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public void xinxi(){
		System.out.println("动物名字是"+name+",品种是"+type+",有"+leg+"条腿,体重为"+weight+"kg.");
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("喜欢吃奶酪");
	}
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("吱吱吱吱.....");
	}
	shu( String name,String type,int leg, int weight){
		this.name = name;
		this.weight = weight;
		this.leg = leg;
		this.type = type;
		
	}
	shu(){
		
	}
}
