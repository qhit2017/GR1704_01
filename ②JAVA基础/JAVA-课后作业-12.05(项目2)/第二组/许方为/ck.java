package ��ҵ;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ck {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<lei>list=new ArrayList<lei>();
    while(true){
    	System.out.println("1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3	��������4	�Ա�����.�绰����");
    	int num=sc.nextInt();
    	if(num==1){
    		System.out.println("������ ,����,�Ա�,�绰");
    		int x=sc.nextInt();
    		String str=sc.next();
    		String[]arr=str.split(",");
    		lei b=new lei();
    		
    		b.setXingming(arr[0]);
    		b.setXingbie(arr[1].charAt(0));
    		b.setDianhua(Integer.parseInt(arr[2]));
    		list.add(b);
    		System.out.println("��ӳɹ�");
    		
    	}else if(num==2){
    		for (lei i:list) {
				i.xinxi();
			}
    		System.out.println("��ʾ����ͨѶ¼��Ϣ");
    	}else if(num==3){
    		System.out.println("��������");
    	}else if(num==4){
    		System.out.println("�Ա�����");
    		
    	}else if(num==5){
    		System.out.println("�绰����");
    		
			
		}else if(num==6){
			System.out.println("�˳�");
			break;
			
			
		}else {
			System.out.println("����������ֲ���");
			
		}
    	
    			
    		

    }

			
		}
		
	}


