import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;


public class work {
		public static void main(String[] args) {
			List<people> list = new ArrayList<people>();
			Scanner sc = new Scanner(System.in);
			Random b = new Random();
			int i=0;
			boolean x =true;
			while(x){
			System.out.println("�뿪ʼ������ɸѡ����Ա�������Ϻ����룺�����ϡ�");
			String name =sc.next();	
			if(name.equals("������")){                                                                       
				x=false; 
				System.out.println("�����ϣ�׼����ʼ");
				break;
			}
			people a= new people();
			a.setName(name);
			list.add(a);
			System.out.println("��ӳɹ�");
			}
			System.out.println("��������Ҫ���ѡ����������");
			int f = sc.nextInt();
			for(int d=0;d<f;d++){
				int c =b.nextInt(list.size());
				list.get(c).info();
				list.remove(c);
			}
		}
}
