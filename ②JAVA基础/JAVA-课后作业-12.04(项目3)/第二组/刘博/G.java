package c1;

import java.lang.reflect.GenericDeclaration;
import java.util.ArrayList;
import java.util.Scanner;

public class G {
public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	ArrayList<G2> list=new ArrayList<G2>();
	while(true){
	System.out.println("1 ¼��ѧ����Ϣ,2��ʾ���п����ɼ�,3.��ѯ��Ϣ 4ϵͳֹͣ");
		int sum=sc.nextInt();
		if(sum==1){
			System.out.println("¼��ѧ����Ϣ��ʽ�ǣ�����,���,���ĳɼ�,Ӣ��ɼ�,��ѧ�ɼ�");
			String str = sc.next();
			String[] arr = str.split(",");
			G2 g2 = new G2();
			g2.setXingming(arr[0]);
			g2.setBianhao(arr[1]);
			g2.setYuwen(Integer.parseInt(arr[2]));
			g2.setShuxue(Integer.parseInt(arr[3]));
			g2.setYingyu(Integer.parseInt(arr[4]));
			
			list.add(g2);
			System.out.println("��ӳɹ�");	
		}else if(sum==2){
			for(G2 g2:list){
			g2.info();
			}
			System.out.println("��ʾ���п����ɼ�");
		}else if(sum==3){
			int a=0;
				while(true){
				System.out.println("1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�");
				for(G2 x:list)
					 a=sc.nextInt();
				if(a==1){
					System.out.println("��ӡ�ܷ���߷�");
				}else if(a==2){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getShuxue()){
							smu=p.getShuxue();
						}
						
					}
				System.out.println("��ѧ��߷�"+smu);
				}else if(a==3){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getYuwen()){
							smu=p.getYuwen();
						}
					}
					System.out.println("������߷�"+smu);
				}else  if(a==4){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getYingyu()){
							smu=p.getYingyu();
						}
					}
					System.out.println("��ӡӢ����߷�"+smu);
				}else if(a==5){
					System.out.println("������һ��");
					break;
				}else{
					System.out.println("����������ֲ��淶");
				}
			}
		}else if(sum==4){
			System.out.println("ϵͳֹͣ");
			break;
		}else{
			System.out.println("����������ֲ��淶");
		}
		}
	}
		
	
	

}

