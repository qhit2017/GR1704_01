package com.qierkang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmu {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<fangfa>list=new ArrayList<fangfa>();
		while(true){
			System.out.println("1.¼�뿼���ĸ߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4.�˳�����");
			int t=sc.nextInt();
			if(t==1){
				System.out.println("�밴��,��ʽ������,���,����,��ѧ,Ӣ��");
				String str=sc.next();
				String[]arr= str.split(",");
				fangfa a=new fangfa();
				a.setMingzhi(arr[0]);
				a.setBianhao(Integer.parseInt(arr[1]));
				a.setYuwen(Integer.parseInt(arr[2]));
				a.setShuxue(Integer.parseInt(arr[3]));
				a.setYingyu(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("��ӳɹ�");
			}else if(t==2){
				for(fangfa v:list){
					v.info();
				}
			}else if(t==3){
				while(true){
					System.out.println("1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
					int i=sc.nextInt();
					if(i==1){
						int b=0;
						for(fangfa s:list){
							if(b<s.getShuxue()+s.getYuwen()+s.getYingyu()){
								b=s.getShuxue()+s.getYuwen()+s.getYingyu();
							}
						}
						System.out.println("�ܷ���߷�"+b);
					}else if(i==2){
						int h=0;
						for(fangfa w:list){
							if(h<w.getShuxue()){
								h=w.getShuxue();
							}
						}
						System.out.println("��ѧ��߷�:"+h);
					}else if(i==3){
						int d=0;
						for(fangfa z:list){
							if(d<z.getYuwen()){
								d=z.getYuwen();
							}
						}
						System.out.println("������߷�:"+d);
					}else if(i==4){
						int x=0;
						for(fangfa k:list){
							if(x<k.getYingyu()){
								x=k.getYingyu();
							}
						}
						System.out.println("Ӣ����߷�:"+x);
					}else if(i==5){
						System.out.println("������һ��");
						break;
					}else{
						System.out.println("����������ֲ��淶");
					}
				}
			}else if(t==4){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}
}
