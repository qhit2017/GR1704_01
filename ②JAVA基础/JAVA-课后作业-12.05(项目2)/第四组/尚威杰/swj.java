import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class swj {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<tongxunxinxi>list = new ArrayList<tongxunxinxi>();
		while(true){
			System.out.println("�밴����1��¼��ͨѶ¼��Ϣ 2����ʾ����ͨѶ��Ϣ 3���������� 4���Ա����� 5���绰���� 6���˳�����");
			int i =sc.nextInt();
			if(i==1){
				System.out.println("����������");
				String xingming =sc.next();
				System.out.println("�������Ա�");
				String xingbie = sc.next();
				System.out.println("������绰����");
				String dianhua = sc.next();
				
				tongxunxinxi a = new tongxunxinxi();
				a.setXingming(xingming);
				a.setXingbie(xingbie);
				a.setDianhua(dianhua);
				list.add(a);
				System.out.println("������");
						
			}else if(i==2){
				for(tongxunxinxi o:list){
					o.xinxi();
				}
			}else if(i==3){
				System.out.println("��������");
			}else if(i==4){
				System.out.println("�Ա�����");
			}else if(i==5){
				System.out.println("�绰����");
			}else if(i==6){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("����������ֲ���ȷ");
			}
		}
		
	}
}
	
	
	
