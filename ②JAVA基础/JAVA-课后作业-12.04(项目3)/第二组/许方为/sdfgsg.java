package �ֵ�;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;

public class sdfgsg {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xuesheng>list=new ArrayList<xuesheng>();
		while (true){
			
			System.out.println("1.¼��ѧ����Ϣ2.��ʾ���п����ɼ�3.��ѯ��Ϣ4.ϵͳֹͣ");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("¼��ѧ����Ϣ��ʽ�ǣ�����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
				String str =sc.next();
				String[] arr=str.split(",");
				xuesheng g=new xuesheng();
				g.setXingming(arr[0]);
				g.setBianhoa(arr[1]);
				g.setYingyuchenhji(arr[2]);
				g.setShuxuchenji(arr[3]);
				g.setYuwenchengji(arr[4]);
				
				
				list.add(g);
				System.out.println("��ӳɹ�");
			
		}else if (num==2){
			for(xuesheng g:list){
				
				g.xinxi();
			}
			
				
				
			System.out.println("��ʾ���п����ɼ�");
		}else if (num==3){
			while(true){
				System.out.println("1.��ӡ�ܷ���߷�2��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
				int a=sc.nextInt();
			if(a==1){
				System.out.println("�ܷ���߷�");
			}else if(a==2){
				
				int max=0;
				for(xuesheng b:list){
					if(max<Integer.parseInt(b.getShuxuchenji())){
						
					}
					
					
				}
				
				
			
				System.out.println("��ѧ��߷�");
			}else if(a==3){
				System.out.println("������߷�");
			}else if(a==4){
				System.out.println("Ӣ����߷�");
			}else if(a==5){
				System.out.println("�˳�");
			}
				
				
				}
				
			
		
			
				
			
			
			
			
			
			
			System.out.println("��ѯ��Ϣ");
		}else if (num==4){
			System.out.println("ϵͳֹͣ");
			break;
		}else {
			System.out.println("����������ֲ��淶");
		}
			
		}
			
	}
		
			
		
}
		
	


