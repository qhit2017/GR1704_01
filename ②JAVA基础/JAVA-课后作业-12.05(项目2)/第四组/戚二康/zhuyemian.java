package com.qierkang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zhuyemian {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<fangfa>list=new ArrayList<fangfa>();
		while(true){
			System.out.println("�밴����1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int r=sc.nextInt();
			if(r==1){
				System.out.println("������,��ʽ������,�Ա�,�绰����");
				String str=sc.next();
				String[]arr=str.split(",");
				fangfa s=new fangfa();
				s.setXingming(arr[0]);
				s.setXingbie(arr[1].charAt(0));
				s.setDianhua(arr[2]);
				list.add(s);
				System.out.println("��ӳɹ�");
			}else if(r==2){
				for(fangfa a:list){
					a.info();
				}
			}else if(r==3){
				System.out.println("������������");
				String w=sc.next();
				for(fangfa t:list){
					if(w.equals(t.getXingming())){
						t.info();
					}
				}
			}else if(r==4){
				System.out.println("�������Ա�");
				char b=sc.next().charAt(0);
				for(fangfa d:list){
					if(b==d.getXingbie()){
						d.info();
					}
				}
			}else if(r==5){
				String a=sc.next();
				for(fangfa f:list){
					if(a.equals(f.getDianhua())){
						f.info();
					}
				}
				System.out.println("�绰����");
			}else if(r==6){
				System.out.println("ϵͳ�ر�");
				break;
			}
		}
	}

}
