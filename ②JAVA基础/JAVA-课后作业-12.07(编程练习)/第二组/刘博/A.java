package T;

import java.awt.List;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Scanner;

import javax.swing.ListCellRenderer;
import javax.swing.border.LineBorder;

public class A {
public static void main(String[] args) {
	ArrayList<B>list=new ArrayList<B>();
	Scanner sc=new Scanner(System.in);
	for(int i=1;i<=5;i++){
		System.out.println("1.������Ʒ2.����3.����4.�ο����5.�˳�����");
		int a=sc.nextInt();
		if(a==1){
			System.out.println("�������Ʒ�� ������Ʒ��¼����Ʒ��Ϣ ��ʽ:��Ʒ,��Ʒ����,��Ʒ���,��Ʒ�۸�,��Ʒ��ʼ����");
			String str=sc.next();
			String []arr =str.split(",");
			B c = new B();
			c.setShangpin(arr[0]);
			c.setMingchen(arr[1]);
			c.setBianhao(arr[2]);
			c.setJiage(arr[3]);
			c.setShuliang(arr[4]);
			list.add(c);
			System.out.println("��ӳɹ�");
		}else if(a==2){
		String str=sc.next();
		String[]arr =str.split(",");
		for(B b:list){
			if(arr[0].equals(b.getBianhao())){
			b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
			System.out.println("�����ɹ�");
			}else{
				System.out.println("����ʧ��");
			}
				
		}
		}else if(a==3){
			System.out.println("����");
			String str=sc.next();
			String[] arr =str.split(",");
			for(B b:list){
				if(b.getBianhao().equals(arr[0])){
					b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
					System.out.println();
				}
			}
		}else if(a==4){
			for(B c:list){
				c.info();
			}
			System.out.println("�ο����");
		}else if(a==5){
			System.out.println("�˳�����");
			break;
		}else{
			System.out.println("����������ֲ��淶");
		}
	}
	
	
	
	
	
}
	
}

