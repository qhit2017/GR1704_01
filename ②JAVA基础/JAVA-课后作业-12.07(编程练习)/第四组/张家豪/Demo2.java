package zhang;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Scanner;

public class Demo2 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		ArrayList<Demo1> list=new ArrayList<Demo1>();
		while(true){
			System.out.println("1������Ʒ 2���� 3���� 4�ο���� 5�˳�");
			int rs=sc.nextInt();
			if(rs==1){
				System.out.println("������Ʒ���磺��Ʒ�������,�۸�,��ʼ����");
				String str=sc.next();
				String []arr=str.split(",");
				
				Demo1 r=new Demo1();
				r.setBianhao(Integer.parseInt(arr[0]));
				r.setShangpinming(arr[1]);
				r.setJiage(Integer.parseInt(arr[2]));
				r.setShuliang(Integer.parseInt(arr[3]));
				list.add(r);
				System.out.println("��ӳɹ�");
			}else if(rs==2){
				System.out.println("����:�������ź�����");
				String str=sc.next();
				String []arr=str.split(",");
				boolean d=true;
				for(Demo1 r:list){
					if(r.getBianhao()==Integer.parseInt(arr[0])){
						r.setShuliang(r.getShuliang()+Integer.parseInt(arr[1]));
						System.out.println("�����ɹ�");
						d=false;
						
					}
					}
				if(d){
				System.out.println("����ʧ��");
					
				}
				
		
			
			}else if(rs==3){
				System.out.println("����:��������Ʒ��ź�����");
				String str=sc.next();
				String []arr=str.split(",");
				boolean s=true;
				for(Demo1 r:list){
					if(r.getBianhao()==Integer.parseInt(arr[0])&&r.getShuliang()>=Integer.parseInt(arr[1])){
						
						r.setShuliang(r.getShuliang()-Integer.parseInt(arr[1]));
						System.out.println("���۳ɹ�");
						s=false;
						break;
				}
			
				}
			
			
					if(s){
						System.out.println("����ʧ��");
								
					
		
				}
			}else if(rs==4){
				for(Demo1 r:list){
					r.xinxi();
				}
			}else if(rs==5){
				System.out.println("�˳�");
				break;
			}
		}
	}

}
