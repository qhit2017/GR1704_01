package com.yu;

public class Student {
	private String name;
	private String bianhao;
	private int chinese;
	private int math;
	private int english;
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
	public int getChinese() {
		return chinese;
	}
	public void setChinese(int chinese) {
		this.chinese = chinese;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	public void info(){
		System.out.println("姓名是"+name+",编号是"+bianhao+
				",语文成绩是"+chinese+"数学成绩是"+math+"英语成绩是"+english
				+"总成绩是"+(chinese+math+english));
	}

}
