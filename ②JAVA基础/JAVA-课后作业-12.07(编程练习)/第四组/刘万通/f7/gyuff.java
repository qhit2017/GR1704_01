package com.f7;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class gyuff {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list=new ArrayList<xi>();
		List<jia>list2=new ArrayList<jia>();
		while(true){
			System.out.println("�����룺1.������Ʒ,2.����,3.����,4.�ο����,5.�˳�����,6.������¼,7.���ۼ�¼");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("�������ʽ����Ʒ����,���,�۸�,����");
				String str=sc.next();
				String []arr=str.split(",");
				xi x=new xi();
				x.setName(arr[0]);
				x.setBianhao(Integer.parseInt(arr[1]));
				x.setJiage(Integer.parseInt(arr[2]));
				x.setShuliang(Integer.parseInt(arr[3]));
				list.add(x);
				System.out.println("��ӳɹ�");
				
			}else if(i==2){
				
				System.out.println("����:�������ź�����");
				String str=sc.next();
				String []arr=str.split(",");
				boolean x=true;
				for(xi b:list){
					if(b.getBianhao()==Integer.parseInt(arr[0])){
						b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
						jia a=new jia();
						a.setJinhuoshuliang(Integer.parseInt(arr[1]));
						a.setBianhao(b.getBianhao());
						a.setName(b.getName());
						a.setJiage(b.getJiage());
						a.setShuliang(b.getShuliang());
						list2.add(a);
						x=false;
						System.out.println("�����ɹ�");
					}
				}
				if(x){
					System.out.println("");
				}
				
			}else if(i==3){
				System.out.println("���ۣ����������۱�ź�����");
				String str=sc.next();
				String []arr=str.split(",");
				boolean x=true;
				for(xi b:list){
					if(b.getBianhao()==Integer.parseInt(arr[0])&&b.getShuliang()>=Integer.parseInt(arr[1])){
						b.setShuliang(b.getShuliang()-Integer.parseInt(arr[1]));
						System.out.println("���۳ɹ�");
						jia a=new jia();
						a.setXiaoshoshuliang(Integer.parseInt(arr[1]));
						a.setBianhao(b.getBianhao());
						a.setName(b.getName());
						a.setJiage(b.getJiage());
						a.setShuliang(b.getShuliang());
						list2.add(a);
						x=false;
						break;
					}
					
				}
				if(x){
					System.out.println("����ʧ��");
				}
			
			}else if(i==4){
				for(xi d:list){
					d.info();
				}
				
			}else if(i==5){
				System.out.println("�˳�");
				break;
			}else if(i==6){
				System.out.println("������¼");
				for(jia c:list2){
					if(c.getJinhuoshuliang()>0){
						c.info2();
					}
				}
			}else if(i==7){
				System.out.println("���ۼ�¼");
				for(jia c:list2){
					if(c.getXiaoshoshuliang()>0){
						c.info3();
					}
			}
		}
		
	    
		
		
		
			
		}
		
		
		
		
		
		
		
	}
	
	
	
}
