package ��������ҵ;

import java.util.Scanner;

public class ��ҵ4 {
//����Ļ�ϴ�ӡ��n�еĽ�����ͼ�����磬��n=5,��ͼ������
	public static void main(String[] args) {
		
      Scanner sc =new Scanner(System.in);
      System.out.println("������һ������");
      int n =sc.nextInt();
      
      
      for(int i =1;i<=n;i++){
    	  System.out.println(2*i-1);
    	  for(int j =1; j<=2*i-1;j++){
    		  System.out.println("*");
    	  }
    	  System.out.println();
      }
		
	}
	
}
