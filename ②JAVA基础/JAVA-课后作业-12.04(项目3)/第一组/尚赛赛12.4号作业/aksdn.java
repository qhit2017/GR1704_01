package sksa;



import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class aksdn {
	
	public static void main(String[] args) {
		
		List<lei>list=new ArrayList<lei>();
		Scanner sc =new Scanner(System.in);
		while(true){
			System.out.println("1������ѧ����Ϣ2����ѯ����ѧ��3����ѯ��߷�4���˳�");
		int sum = sc.nextInt();	
			if(sum==1){
				System.out.println("������ѧ����Ϣ������,���,���ĳɼ�, Ӣ��ɼ�");
				String j = sc.next();
				String[]arr=j.split(",");
				
				lei z = new lei();
				z.setXingming(arr[0]);
				z.setBianhao(Integer.parseInt(arr[1]));
				z.setYuwen(Integer.parseInt(arr[2]));
				z.setShuxue(Integer.parseInt(arr[3]));
				z.setYingyu(Integer.parseInt(arr[4]));
				list.add(z);
				System.out.println("��ӳɹ�����ѡ��");
			}else if(sum==2){
				for(lei a :list){
					a.yun();
				}
					
				
			}else if(sum==3){
				while(true){
					System.out.println("1,��ѯ�ܷ���߷�2,������߷�3,��ѧ��߷�4,Ӣ����߷�5,�˳�");
					int z =sc.nextInt();
					if(z==1){
						int max = 0;
						for(lei a: list){
							if(max<a.getShuxue()+a.getYuwen()+a.getYingyu()){
								max=a.getShuxue()+a.getYuwen()+a.getYingyu();
							}
						}
						System.out.println("�ܷ���߷�Ϊ��"+max);
					}else if(z==2){
					
						int max =0;
						for(lei a: list){
							if(max<a.getYuwen()){
								max = a.getYuwen();
							}
						}
						System.out.println("������߷�Ϊ��"+max);
					}else if(z==3){
						int max = 0;
						for(lei a:list){
							if(max<a.getShuxue()){
								max = a.getShuxue();
							}
						}
						System.out.println("��ѧ��߷�Ϊ��"+max);
					}else if(z==4){
						int max = 0;
						for(lei a:list){
							if(max<a.getYingyu()){
								max= a.getYingyu();
							}
						}
						System.out.println("Ӣ����߷�Ϊ��"+max);
					}else if(z==5){
						System.out.println("�������˵�");
						break;
					}else{
						System.out.println("�������������������������");
					}
					
				}
					
			}else if(sum==4){
		System.out.println("�˳�");
		break;
			}else{
				System.out.println("������������������������");
				
				
			}
				
					}
		}
		
		
		
	

	}

