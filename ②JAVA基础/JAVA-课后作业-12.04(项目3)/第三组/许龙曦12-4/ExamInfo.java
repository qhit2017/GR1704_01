package com.xx;
/*
 * 1��¼�뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�
2����ʾ���п�����Ϣ������������š����ġ���ѧ��Ӣ��ɼ����ܳɼ�
3�����û�ѡ��3ʱ������ʾһ���Ӳ˵���
1	��ӡ�ܷ���߷�
2	��ӡ��ѧ��߷�
3	��ӡ������߷�
4	��ӡӢ����߷�
5	�˳�
   �����Ӧ��������ʾ��Ӧ����������5���˳���������
4���˳����ܿ����˳�ϵͳ

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
		System.out.println("����"+name+",���"+no+",���ĳɼ�"+chinese+"��ѧ�ɼ�"+math+"Ӣ��ɼ�"+english+"�ܷ���"+(chinese+math+english));
	}
}
