package com.xx;
import java.awt.List;
import java.util.ArrayList;
/*
 * ģ��һ���߿�����ϵͳ����ҵ��Χ������
1	¼�뿼���ĸ߿���Ϣ
2	��ʾ���п�����Ϣ
3	��ѯ��߷�, ����: �ܷ���߷� �� ������߷�
4	�˳�����

 */
import java.util.Scanner;

public class Index {
public static void main(String[] args) {
   Scanner sc=new Scanner(System.in);
	java.util.List<ExamInfo>list=new ArrayList<ExamInfo>();
	while(true){
		
		System.out.println("1¼�뿼���ĸ߿���Ϣ,2��ʾ���п�����Ϣ,3��ѯ��߷�,����: �ܷ���߷� �� ������߷�,4�˳�����");
		int num=sc.nextInt();
		if (num==1) {
			/*System.out.println("�����뿼������");
			String name =sc.next();
			System.out.println("�����뿼�����");
			String no =sc.next();
			System.out.println("�����뿼�����ĳɼ�");
			int chinese=sc.nextInt();
			System.out.println("�����뿼����ѧ�ɼ�");
			int math=sc.nextInt();
			System.out.println("�����뿼��Ӣ��ɼ�");
			int english=sc.nextInt();*/
			
			System.out.println("������ѧ����������š����ġ���ѧ��Ӣ��ɼ���������,024,78,89,90");
			String str=sc.next();
			String[]arr=str.split(",");
			ExamInfo esam=new ExamInfo();
			
			esam.setName(arr[0]);
			esam.setNo(arr[1]);
			esam.setChinese(Integer.parseInt(arr[2]));
			esam.setMath(Integer.parseInt(arr[3]));
			esam.setEnglish(Integer.parseInt(arr[4]));
			
			list.add(esam);
			System.out.println("��ӳɹ�");
			
		}else if(num==2){
			for (ExamInfo i:list) {
				i.iofo();
				
			}
		
		}else if(num==3){
			while(true){
				System.out.println("��ѡ��1��ӡ�ܷ���߷� 2��ӡ��ѧ��߷� 3��ӡ������߷� 4��ӡӢ����߷� 5	�˳�");
				int x=sc.nextInt();
				if(x==1){
					System.out.println("��ӡ�ܷ���߷�");
										
				}else if(x==2){
					int max=0;
					String name="";
					for (ExamInfo e:list) {
						if(max<e.getMath()){
						max=e.getMath();
						name=e.getName();
						
						
					}
					System.out.println("��ѧ��߷��ǣ�"+max+",����������"+name);
				}
				}else if(x==3){
					int max=0;
					for (ExamInfo e:list) {
						if(max<e.getChinese());
						max=e.getChinese();
				}
					System.out.println("������߷���:"+max);
			}else if(x==4){
				int max=0;
				for (ExamInfo e:list) {
					if(max<e.getEnglish());
					max=e.getEnglish();
			}
				System.out.println("Ӣ����߷��ǣ�"+max);
			}else if(x==5){
				System.out.println("������һ��");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
			}
			
		}else if(num==4){
			System.out.println("4�˳�����");
			break;
	}else {
		System.out.println("����������ֲ��淶");
		
	}
	}
}
}
