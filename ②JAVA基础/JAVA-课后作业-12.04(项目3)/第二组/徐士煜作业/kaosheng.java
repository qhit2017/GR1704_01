package 课堂练习;

public class kaosheng {
	private String xingming;
	private String bianhao;
	private int chinese;
	private int math;
	private int english;
	
	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
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

	public void xinxi(){
		System.out.println("考生名字"+xingming+"考生编号"+bianhao+"语文成绩"+chinese+"数学成绩"+math+"英语成绩"+english+"总分是"+(chinese+math+english));
	}
}
