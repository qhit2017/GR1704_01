package zhang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class Demo2 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Demo1>list = new ArrayList<Demo1>();
		while(true){
			System.out.println("�밴�� 1.¼��ͨѶ¼��Ϣ 2.��ʾ����ͨѶ¼��Ϣ 3.�������� 4.�Ա����� 5.�绰���� 6.�˳�����");
			int rs = sc.nextInt();
			if(rs==1){
				System.out.println("¼��ͨѶ¼��Ϣ ��ʽ���£� ����,�Ա�,�绰");
				String str=sc.next();
				String[]arr=str.split(",");
				
				
				Demo1 r = new Demo1();
				r.setXingming(arr[0]);
				r.setXingbie(arr[1].charAt(0));
				r.setDianhua(Integer.parseInt(arr[2]));
				r.xinxi();
				list.add(r);
				System.out.println("��ӳɹ�");
				
				
			}else if(rs==2){
				for(Demo1 a:list){
					a.xinxi();
				}
				System.out.println("��ʾ����ͨѶ¼��Ϣ");
			}else if(rs==3){
				System.out.println("����������");
				String str=sc.next();
				for(Demo1 s:list){
					if(str.equals(s.getXingming())){
						s.xinxi();
					}
				}
			}else if(rs==4){
				System.out.println("�������Ա�");
				char sf=sc.next().charAt(0);
				for(Demo1 d:list){
					if(sf==d.getXingbie()){
						d.xinxi();
					}
				}
			}else if(rs==5){
				System.out.println("������绰");
				String sg=sc.next();
				for(Demo1 m:list){
					if(m.equals(m.getDianhua())){
						m.xinxi();
					}
				}
			}else if(rs==6){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}


}
