package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class kaoshiti {

	public static void main(String[] args) {
		List<xuesheng> list=new ArrayList<xuesheng>();
		Scanner  sc=new  Scanner(System.in);
		for(int  i=1;i>=1;i++){
		System.out.println("1.¼�뿼���ĸ߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4.�˳�����");
		int  q=sc.nextInt();
		if(q==1){
			System.out.println("������ѧ����Ϣ ��ʽ��     ����    ���    ���ĳɼ�     ��ѧ�ɼ�   Ӣ��ɼ�   ");
			String r=sc.next();
			String []arr=r.split(",");
			xuesheng  a=new xuesheng();
			
			a.setXingming(arr[0]);
			a.setBianhao(Integer.parseInt(arr[1]));
			a.setYuwen(Integer.parseInt(arr[2]));
			a.setShuxue(Integer.parseInt(arr[3]));
			a.setYingyu(Integer.parseInt(arr[4]));
			list.add(a);
			System.out.println("��ӳɹ�");
		}else  if(q==2){
			
			for(xuesheng  b:list){
				b.xinxi();
			}
		}else  if(q==3){
			System.out.println("��ѯ��߷�");
			while(true){
				
				System.out.println("1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�	");
				int  s=sc.nextInt();
				if(s==1){
					System.out.println("��ӡ�ܷ���߷�");
					int   max=0;
					
					for(xuesheng d:list){
						if(d.getShuxue()+d.getYingyu()+d.getYuwen()>max){
							max=d.getShuxue()+d.getYingyu()+d.getYuwen();
						}
					}
					System.out.println("�ܷ����ֵ��"+max);
					
				}else  if(s==2){
					
					int  max=0;
					for(xuesheng d:list){
						if(max<d.getShuxue()){
							
						}
					}
					System.out.println("��ѧ��߷���"+max);
					
				}else  if(s==3){
					
					int  max=0;
					for(xuesheng d:list){
						if(max<d.getYuwen()){
							
						}
					}
					System.out.println("����Ӣ��"+max);
				}else  if(s==4){
					System.out.println("��ӡӢ����߷�");
					int max=0;
					for(xuesheng d:list){
						if(max<d.getYingyu()){
							
						}
					}
					System.out.println("Ӣ��Ӣ��"+max);
				}else  if(s==5){
					System.out.println("�˳�");
					break;
				}else{
					System.out.println("����������ֲ��淶������������");
				}	
			}
		}else  if(q==4){
			System.out.println("�˳�����");
			break;
		}else {
			System.out.println("���������������������");
		}
		}
		
		
		
		
		
		
		
		
	}
	
	
	
}
