package ������ϰ;

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
		System.out.println("��������"+xingming+"�������"+bianhao+"���ĳɼ�"+chinese+"��ѧ�ɼ�"+math+"Ӣ��ɼ�"+english+"�ܷ���"+(chinese+math+english));
	}
}
