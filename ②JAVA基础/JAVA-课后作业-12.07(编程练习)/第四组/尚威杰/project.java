import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.xml.parsers.FactoryConfigurationError;


public class project {

	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);
		List<shangpin>list = new ArrayList<shangpin>();
		while(true){
			System.out.println("�����룺1 ������Ʒ 2 ���� 3 ���� 4 �ο�ͼ�� 5 �Ƴ�����");
			int i =sc.nextInt();
			if(i==1){
				System.out.println("��������");
				String bianhao = sc.next();
				System.out.println("����������");
				String mingcheng = sc.next();
				System.out.println("������۸�");
				int jiage =sc.nextInt();
				System.out.println("������������");
				int chushishuliang = sc.nextInt();
				
				shangpin a = new shangpin();
				a.setBianhao(bianhao);
				a.setMingcheng(mingcheng);
				a.setJiage(jiage);
				a.setChushishuliang(chushishuliang);
				list.add(a);
				
				System.out.println("��ӳɹ�");
			}else if(i==2){
				System.out.println("���� �����������Լ���������");
				String y =sc.next();
				String []arr = y.split(",");
				for(shangpin c:list){
					if(arr[0].equals(c.getBianhao())){
						c.setChushishuliang(c.getChushishuliang()+Integer.parseInt(arr[1]));
				System.out.println("�����ɹ�");
					}else{
						System.out.println("����ʧ��");
					}
				}
			}else if(i==3){
				System.out.println("���� ������Ʒ����Լ���������");
				String y =sc.next();
				String []arr = y.split(",");
				boolean u = true;
				for(shangpin c:list){
					if(arr[0].equals(c.getBianhao())){
						c.setChushishuliang(c.getChushishuliang()-Integer.parseInt(arr[1]));
						System.out.println("���۳ɹ�");
						//break;
					}
					u=false;
					if(u){
						System.out.println("����ʧ��");
						
					}
				}
			}else if(i==4){
				for(shangpin x:list){
					x.xinxi();
				}
			}else if(i==5){
				System.out.println("�Ƴ�����");
				break;
			}else{
				System.out.println("��������������");
			}
		}
		
	}
	
}
