package С��Ŀ;

import java.awt.List;
import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;

public class f2 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	java.util.List <f1>List=new ArrayList<f1>();
	
	while (true) {
		
		System.out.println("1.¼��ѧ����Ϣ2.��ʾ���п����ɼ�3.��ѯ��Ϣ4.ϵͳֹͣ");
		int num=sc.nextInt();
		if(num==1){
			System.out.println("¼��ѧ����Ϣ��ʽ����������ţ����ĳɼ�����ѧ�ɼ���Ӣ��ɼ�");
			String str=sc.next();
			String[]arr=str.split(",");
			f1 a=new f1();
			a.setXingming(arr[0]);
			a.setBianhao(arr[1]);
			a.setYuwe(Integer.parseInt(arr[2]));
			a.setShuxue(Integer.parseInt(arr[3]));
			a.setYingyu(Integer.parseInt(arr[4]));
		   List.add(a);
		   	System.out.println("��ӳɹ�");
		   	a.info();    
		}else if(num==2){
			for(f1 a:List){
		}
		}else if(num==3){
			System.out.println("��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
		while (true) {
			int a=sc.nextInt();
			if(a==1);
			int max=0;
			for(f1 y:List){
				if(y.getShuxue()+y.getYingyu()+y.getYuwe()>max){
					max=y.getShuxue()+y.getYingyu()+y.getYuwe();
				}
		}
			System.out.println("�ܷ���߷���"+max);
		}
		}else if(num==2){
			int  max=0;
			for(f1 o:List){
			if(max<o.getShuxue()){
				max=o.getShuxue();
			}
			}	
			System.out.println("��ѧ��߷�"+max);
		}else if(num==3){
			int max=0;
			for(f1 y:List){
				if(max<y.getYuwe())
					max=y.getYuwe();
			System.out.println("������߷�"+max);
			}
		}else if(num==4){
			int max=0;
			for(f1 y:List){
				if(max<y.getYingyu()){
					
				}
			}
			System.out.println("Ӣ����߷���"+max);
		}else if(num==5){
			System.out.println("�������˵�");
			break;
		}else{
			System.out.println("����Ĳ���ȷ");
		}
		
		}	
		
		}
}