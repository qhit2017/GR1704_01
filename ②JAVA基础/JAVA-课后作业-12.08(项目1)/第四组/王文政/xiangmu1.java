package com.��ϰ;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class lianxi4 {
	
	public static void main(String[] args) {
		
		
		Scanner sc= new Scanner(System.in);
		List<lianxi3>list = new ArrayList<lianxi3>();
		while(true){
			System.out.println("�밴��  1.������Ʒ 2.����  3.���� 4.�鿴��� 5.�˳�");
			int rs  = sc.nextInt();
			if(rs==1){
				System.out.println("������Ʒ ¼����Ʒ��Ϣ�������,����,�۸�,��ʼ����");
				String str=sc.next();
				String[]arr=str.split(",");
				
				lianxi3 sd = new lianxi3();
				sd.setShangpinbianhao(arr[0]);
				sd.setMingcheng(arr[1]);
				sd.setJiage(Integer.parseInt(arr[2]));
				sd.setChushishuliang(Integer.parseInt(arr[3]));
				sd.info();
				list.add(sd);
				System.out.println("��ӳɹ�");
			}else if(rs==2){
				System.out.println("����  ������Ʒ����Լ�����");
				String sv=sc.next();
				String[]arr=sv.split(",");
				boolean i=true;
				for(lianxi3 alo:list){
					if(arr[0].equals(alo.getShangpinbianhao())){
						alo.setChushishuliang(alo.getChushishuliang()+Integer.parseInt(arr[1]));
						System.out.println("�����ɹ�");
					}
					i=false;
					if(i){
						System.out.println("����ʧ��");
					}
				}
			}else if(rs==3){
				System.out.println("����  ������Ʒ����Լ�����");
				String sv=sc.next();
				String[]arr=sv.split(",");
				boolean i =true;
				for(lianxi3 alo:list){
					if(arr[0].equals(alo.getShangpinbianhao())){
						alo.setChushishuliang(alo.getChushishuliang()-Integer.parseInt(arr[1]));
						System.out.println("���۳ɹ�");
					}
					i=false;
					if(i){
						System.out.println("����ʧ��");
					}
				}
			}else if(rs==4){
				for(lianxi3 ggo:list){
					ggo.info();
				}
			}else if(rs==5){
				System.out.println("�˳�");break;
			}else{
				System.out.println("��������ֲ��淶");
			}
		}
	}

}
