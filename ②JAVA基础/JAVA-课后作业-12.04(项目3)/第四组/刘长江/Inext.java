package com.liuchangjiang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Inext {

	public static void main(String[] args) {
		List<Examinfo> list = new ArrayList<Examinfo>();
		Scanner sc = new Scanner(System.in);
		
		while(true){
			System.out.println("�����밴��   1.¼��ѧ����Ϣ 2.��ѯ����ѧ�� 3.�����߷� 4.ϵͳ�ر�");
			int num = sc.nextInt();
			if(num==1){
			System.out.println("�����뿼����Ϣ:����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
			String str = sc.next();	
			String [] arr = str.split(",");
			Examinfo exam = new Examinfo();	
			
			exam.setName(arr[0]);	
			exam.setNo(arr[1]);	
			exam.setShuxue(Integer.parseInt(arr[2]));	
			exam.setYuwen(Integer.parseInt(arr[3]));
			exam.setYingyu(Integer.parseInt(arr[4]));
			list.add(exam);
				System.out.println("¼��ɹ�");
			}else if(num==2){
				for(Examinfo e:list){
					e.info();
					}
			}else if(num==3){
				while(true){
					System.out.println("��ѡ��1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
					int x=sc.nextInt();
				if(x==1){
					int max = 0;
					String name = "";
					for(Examinfo s:list){
					if(s.getShuxue()+s.getYuwen()+s.getYingyu()>max){
					max = s.getShuxue()+s.getYuwen()+s.getYingyu();
					name = s.getName();
				}		
				}	
					System.out.println("���֣�"+name+"���ܷ���߷֣�"+max);
				}else if(x==2){
					int max = 0;
					String name = "";
					for(Examinfo e:list){
					if(e.getShuxue()>max){
					max = e.getShuxue();
					
				}
				}
					System.out.println("���֣�"+name+"���ܷ���߷֣�"+max);
				}else if(x==3){
					int max = 0;
					String name = "";
					for(Examinfo e:list){
					if(e.getYuwen()>max){
					max = e.getYuwen();
				    
				}
				}
					System.out.println("���֣�"+name+"���ܷ���߷֣�"+max);
				}else if(x==4){
				    int max = 0;
				    String name = "";
					for(Examinfo e:list){
					if(e.getYingyu()>max){
					max = e.getYingyu();
					
				}
				}
					System.out.println("���֣�"+name+"���ܷ���߷֣�"+max);
				}else if(x==5){
					System.out.println("�˳�");
					break;
				}
	            }
				
			}else if(num==4){
				System.out.println("ϵͳ�ر�");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
