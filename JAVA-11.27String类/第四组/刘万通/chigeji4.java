package ghsghs;

import java.util.Scanner;

public class chigeji4 {
/*ģ��ʵ�ּ������Ĺ���
    Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15*/
    
	public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("�������һ����");
	int i=sc.nextInt();	
	System.out.println("�����������");
	char a=sc.next().charAt(0);
	System.out.println("������ڶ�����");	
	int b=sc.nextInt();	
	switch(a){
	case '+':{
		System.out.println(i+"+"+b+"="+(i+b));
		break;
	}
	case '-':{
		System.out.println(i+"-"+b+"="+(i-b));	
		break;
	}
	case '*':{
		System.out.println(i+"*"+b+"="+(i*b));	
		break;
	}
	case '/':{
		System.out.println(i+"/"+b+"="+(i/b));	
		break;
		
		
	}
	}
	}	
}
	
	
	
	

