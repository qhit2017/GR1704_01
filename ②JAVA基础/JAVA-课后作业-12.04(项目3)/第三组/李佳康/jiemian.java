import java.util.ArrayList;
import java.util.List;

import java.util.Scanner;


public class jiemian {
		public static void main(String[] args) {
			Scanner sc =new Scanner(System.in);
			List<student> list = new ArrayList<student>();
			fangfa y = new fangfa();
			
			while(true){
				System.out.println("������:1 ¼�뿼����Ϣ   2 ��ѯ���п�����Ϣ  3 ��ѯ��߷�  4 �˳�ϵͳ");
				int i = sc.nextInt();
				if(i==1){
					y.tianjia(list, sc);
				}else if(i==2){
					y.chaxun(list);
				}else if(i==3){
					y.max(list, sc);
				}else if(i==4){
					System.out.println("ϵͳ�رա�");break;
				}
			}
		}
}
