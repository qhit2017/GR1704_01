package com.xx;
/*
 * 1、录入考试信息信息包含姓名、编号、语文、数学、英语成绩，并计算出总成绩
2、显示所有考生信息包括姓名、编号、语文、数学、英语成绩、总成绩
3、当用户选择3时，又显示一个子菜单：
1	打印总分最高分
2	打印数学最高分
3	打印语文最高分
4	打印英语最高分
5	退出
   输入对应数字则显示对应分数，输入5则退出到主界面
4、退出功能可以退出系统

 */
public class ExamInfo {

	private String name;
	private String no;
	private int chinese;
	private int math;
	private int english;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	public void iofo(){
		System.out.println("姓名"+name+",编号"+no+",语文成绩"+chinese+"数学成绩"+math+"英语成绩"+english+"总分是"+(chinese+math+english));
	}
}
