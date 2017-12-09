import java.util.ArrayList;
import java.util.List;

import java.util.Scanner;


public class jiemian {
		public static void main(String[] args) {
			Scanner sc =new Scanner(System.in);
			List<student> list = new ArrayList<student>();
			fangfa y = new fangfa();
			
			while(true){
				System.out.println("请输入:1 录入考生信息   2 查询所有考生信息  3 查询最高分  4 退出系统");
				int i = sc.nextInt();
				if(i==1){
					y.tianjia(list, sc);
				}else if(i==2){
					y.chaxun(list);
				}else if(i==3){
					y.max(list, sc);
				}else if(i==4){
					System.out.println("系统关闭。");break;
				}
			}
		}
}
