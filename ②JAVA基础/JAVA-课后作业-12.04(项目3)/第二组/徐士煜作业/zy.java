package ������ϰ;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zy {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<kaosheng>list=new ArrayList<kaosheng>();
		while(true){
		System.out.println("�����룺 1.¼��߿�������Ϣ 2.��ѯ����ѧ����Ϣ 3.��ѯ��߷� 4.�������");
		int num=sc.nextInt();
			if(num==1){
				System.out.println("�����룺ѧ����Ϣ  ��ʽ��   ����   ���   ���ĳɼ�   ��ѧ�ɼ�   Ӣ��ɼ�");
				String  w=sc.next();
				String [] arr=w.split(",");
				kaosheng a=new kaosheng();
				a.setXingming(arr[0]);
				a.setBianhao(arr[1]);
				a.setChinese(Integer.parseInt(arr[2]));
				a.setMath(Integer.parseInt(arr[3]));
				a.setEnglish(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("��ӳɹ�");
			}else if(num==2){
				for(kaosheng a:list){
					a.xinxi();}				
			}else if(num==3){
				while(true){
					System.out.println("����1��ѯ������߷֣�����2��ѯ��ѧ��߷֣�����3��ѯӢ����߷�,����4��ѯ�ܷ���߷�,����5�������˵�");
					int b=sc.nextInt();
					if(b==1){
						int p =0;
						for(kaosheng o:list){
							if(p<o.getChinese()){
								p=o.getChinese();	
							}
						}
						System.out.println("������߷���"+p);
						
					}else if(b==2){
						int p=0;
						for(kaosheng o:list){
							if(p<o.getMath()){
								p=o.getMath();
							}
						}
						System.out.println("��ѧ��߷���"+p);
					}else  if(b==3){
						int p=0;
						for(kaosheng o:list){
							if(p<o.getEnglish()){
								p=o.getEnglish();
							}
						}
						System.out.println("Ӣ����߷���"+p);
					}else if(b==4){
						int  p=0;
						for(kaosheng o:list){
							if(p<o.getChinese()+o.getEnglish()+o.getMath()){
								p=o.getChinese()+o.getEnglish()+o.getMath();
							}
						}
						System.out.println("�ܷ���߷���"+p);
					}else if(b==5){
						System.out.println("�������˵�");
						break;
					}else{
						System.out.println("�������������������������");
					}
					
				}
			}else if(num==4){
				System.out.println("��ѯ����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}

}
