package T;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class T {
	
public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	List<T1> list =new ArrayList<T1>();
	for(int i=1;i<=6;i++){
		System.out.println("�밴����1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
		int b=sc.nextInt();
		if(b==1){
			System.out.println("¼��ͨѶ¼��Ϣ");
			String str=sc.next();
			String []arr=str.split(",");
			 T1  p = new T1();
			p.setXingming(arr[0]);
			p.setXingbie(arr[1].charAt(0));
			p.setDianhua(arr[2]);
			list.add(p);
			System.out.println("¼��ɹ�");
		}else if(b==2){
			System.out.println("��ʾ����ͨѶ¼��Ϣ");
					for(T1 a:list){
					a.info();
					}
		}else if(b==3){
			System.out.println("������������");
		String name = sc.next();
		for(T1 a :list){
			if(name.equals(a.getXingming())){	
				a.info();     
			}
		}
		}else if(b==4){
			System.out.println("�������Ա�");
			char name = sc.next().charAt(0);
			for(T1 t :list){
				if(name==t.getXingbie()){
					t.info();
		}else if(b==5){
			System.out.println("�绰����");
		}else if(b==6){
			System.out.println("�˳�����");
			break;
		}else{
			System.out.println("����������ֲ��淶");
		}
	}
		}
		}
}
}
