package com.z;

import java.awt.List;
import java.util.ArrayList;
import java.util.Scanner;

public class Demo2 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		ArrayList<Demo1> list=new ArrayList<Demo1>();
		for(int i=1;i>=0;i++){
		System.out.println("1���뿼����Ϣ��2��ѯ����ѧ����3��ѯ��߷� ��4ϵͳ�ر�");
		int num=sc.nextInt();
		
		if(num==1){
			System.out.println("�����뿼����Ϣ ��ʽ�ǣ�����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
			String str=sc.next();
			String[] arr=str.split(",");
			
			Demo1 rs=new Demo1();
			rs.setXingming(arr[0]);
			rs.setBianhao(arr[1]);
			rs.setYuwen(Integer.parseInt(arr[2]));
			rs.setShuxue(Integer.parseInt(arr[3]));
			rs.setYingyu(Integer.parseInt(arr[4]));
			
			list.add(rs);
			System.out.println("��ӳɹ�");
			
		}else if(num==2){
			for(Demo1 rs:list){
				rs.xinxi();
				
			}
		}else if(num==3){
			while(true){
			System.out.println("1��ӡ�ܷ���߷�2��ӡ��ѧ��߷�3��ӡ������߷�4��ӡӢ����߷�");
			int z =sc.nextInt();
			if(z==1){
				int max=0;
				String xingming=",";
				for(Demo1 rs:list){
					if(rs.getShuxue()+rs.getYingyu()+rs.getYingyu()>max){
						max=rs.getShuxue()+rs.getYingyu()+rs.getYingyu();
						xingming =rs.getXingming();
					}
				}
				
				System.out.println("��߷��ǣ�"+max+",��������"+xingming);
			}else if(z==2){
				int max=0;
				String xingming=",";
				for(Demo1 rs:list){
					if(max<rs.getShuxue()){
						max =rs.getShuxue();
						xingming =rs.getXingming();
						System.out.println("��ѧ��߷��ǣ�"+max+",��������"+xingming);
					}
				}
			}else if(z==3){
				int max=0;
				String xingming =",";
				for(Demo1 rs:list){
					if(max<rs.getYuwen()){
						max=rs.getYuwen();
						xingming =rs.getXingming();
					}
				}
				System.out.println("������߷��ǣ�"+max+",�������֣�"+xingming);
			}else if(z==4){
				int max =0;
				String xingming =",";
				for(Demo1 rs:list){
					if(max<rs.getYingyu()){
						max=rs.getYingyu();
						xingming =rs.getXingming();
					}
				}
				System.out.println("Ӣ����߷��ǣ�"+max+",�������֣�"+xingming);
			}else if(z==5){
				System.out.println("������һҳ");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
			}		
		}else if(num==4){
			System.out.println("ϵͳ�ر�");
			break;
		}else{
			System.out.println("������������淶");
		}
	}
		}
	}