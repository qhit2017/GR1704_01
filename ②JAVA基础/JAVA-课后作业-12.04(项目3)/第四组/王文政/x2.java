package com.������;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class x2 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		List<x1>list = new ArrayList<x1>();
		while(true){
			System.out.println("�밴��: 1.¼�뿼���ĸ߿���Ϣ 2.��ʾ���п�����Ϣ 3.��ѯ��߷� �������ܷ���߷ֺ͵�����߷� 4.�˳�����");
			int rs = sc.nextInt();
			if(rs==1){
			System.out.println("�����뿼���Ļ�����Ϣ ��ʽ����: ��˹��,1527,97,98,99");
			String str=sc.next();
			String[]arr=str.split(",");
			
			x1 sd =new x1();
			sd.setName(arr[0]);
			sd.setBianhao(arr[1]);
			sd.setYuwenchengji(Integer.parseInt(arr[2]));
			sd.setShuxuechengji(Integer.parseInt(arr[3]));
			sd.setYingyuchengji(Integer.parseInt(arr[4]));
			sd.info();
			list.add(sd);
			System.out.println("��ӳɹ�");
			}else if(rs==2){
				for(x1 alo:list){
					alo.info();
				}
				System.out.println("��ʾ���п�����Ϣ");
			}else if(rs==3){
				System.out.println("�����ӽ��� 1.���ĳɼ� 2.��ѧ�ɼ� 3.Ӣ��ɼ�");
				for(int a = 1;a>0;a++){
					int b =sc.nextInt();
					if(b==1){
						int max= 0;
						for(x1 c:list){
							if(max<c.getYuwenchengji()){
							max=c.getYuwenchengji();
						}
						}
						System.out.println("������߷�:"+max);
					}else if(b==2){
						int max= 0;
						for(x1 v:list){
							if(max<v.getShuxuechengji()){
							max=v.getShuxuechengji();
						}
						}
						System.out.println("��ѧ��߷�:"+max);
					}else if(b==3){
						int max= 0;
						for(x1 g:list){
							if(max<g.getYingyuchengji()){
							max=g.getYingyuchengji();
						}
						}
						System.out.println("Ӣ����߷�:"+max);
					}else if(b==4){
						int max= 0;
						
						for(x1 h:list){
							if(h.getYuwenchengji()+h.getShuxuechengji()+h.getYingyuchengji()>max){
								max=h.getYuwenchengji()+h.getShuxuechengji()+h.getYingyuchengji();
							}
						}
						System.out.println("�ܷ֣�"+max);
					}else if(b==5){
						System.out.println("�˳��ӽ��� ����������");break;
					}
					}
					}else if(rs==4){
						System.out.println("ϵͳֹͣ");break;
					}else{
						System.out.println("����������ֲ��淶");
}

}
	}
}
