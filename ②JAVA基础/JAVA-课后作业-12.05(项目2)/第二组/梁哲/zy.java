package lz;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zy {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<zy2> list=new ArrayList<zy2>();
		while(true){
			System.out.println("1¼��ͨѶ¼��Ϣ2��ʾ����ͨѶ¼��Ϣ3��������4�Ա�����5�绰����6�˳�����");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("��������ϵ�ˣ���ʽ������,�Ա�,�绰����");
				String str=sc.next();
				String arr[]=str.split(",");
				zy2 c=new zy2();
				c.setName(arr[0]);
				c.setXb(arr[1].charAt(0));
				c.setPhone(arr[2]);
				list.add(c);
				System.out.println("��ӳɹ�");
			}else if(a==2){
				for(zy2 c:list){
					c.info();
				}
			}else if(a==3){
					System.out.println("������������");
					String b=sc.next();
					for(zy2 s:list){
					 if(b.equals(s.getName())){
						s.info();
					 }
					}	 
			}else if(a==4){
					System.out.println("�������Ա�");
					char q=sc.next().charAt(0);
					for(zy2 d:list){
						if(q==d.getXb()){
							d.info();
						}
					}
			}else if(a==5){
				System.out.println("������绰����");
				String t=sc.next();
				for(zy2 w:list){
					if(t.equals(w.getPhone())){
						w.info();
					}
				}
				
				
			}else if(a==6){
				System.out.println("6�˳�����");
				break;
			}else{
				System.out.println("���������������");
			}
		}





		
	}
	

}
