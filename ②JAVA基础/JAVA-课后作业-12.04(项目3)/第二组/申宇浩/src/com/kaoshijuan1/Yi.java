package com.kaoshijuan1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San k=new Si();
		while(true){
			System.out.println("�����룺1��¼�뿼����Ϣ��2����ѯ����ѧ����3�������Ӳ˵���4���˳�");
			int i=sc.nextInt();
			if(i==1){
			k.yi(jihe, sc);
			}else if(i==2){
				k.er(jihe);
			}else if(i==3){
				k.san(jihe, sc);
			}else if(i==4){
				System.out.println("���˳�����");
				break;
			}
			
		}
	}
}
		


