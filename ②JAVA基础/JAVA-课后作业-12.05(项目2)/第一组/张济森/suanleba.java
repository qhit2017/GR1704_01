package s318;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class suanleba {
	public static void main(String[] args) {
		List<lei>list=new ArrayList<lei>();
		Scanner sc =new Scanner(System.in);
		while(true){
			System.out.println("1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int num = sc.nextInt();
			if(num==1){	
			System.out.println("������ͨѶ¼��Ϣ����ʽΪ������,�Ա�,�绰�����磺����,��,158");
			String str = sc.next();
			String []arr = str.split(",");
			lei s = new lei();
			s.setXingming(arr[0]);
			s.setXingbie(arr[1].charAt(0));
			s.setDianhua(arr[2]);
			list.add(s);
			System.out.println("��ӳɹ�");
			
			}else if(num==2){
				for(lei a:list){
					a.yun();
				
				}
				
			}else if(num==3){
				System.out.println("��������");
				String name = sc.next();
				for(lei a:list){
					if(name.equals(a.getXingming())){
						a.yun();
					}
				}
			}else if(num==4){                                 //�Ա������޷�ʹ��������
				System.out.println("�Ա�����");
				String sex = sc.next();
				 for (lei z:list) {
					 if(sex.equals(z.getXingbie())){
						 z.yun();
					 }
				 }                      
					 
						 
			}else if(num==5){
				System.out.println("�绰����");
				String dianhua = sc.next();
				 for(lei ml:list){
					 if(dianhua.equals(ml.getDianhua())){
						ml.yun(); 
					 }
				 }
			}else if(num==6){
				System.out.println("ֹͣ����");
				break;
			}else{
				System.out.println("������������������������");
			}
			
		    }
		
	        }

            }
