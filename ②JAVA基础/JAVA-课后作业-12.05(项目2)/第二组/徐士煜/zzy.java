package 课堂练习;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class zzy {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<dianhuabu>list=new ArrayList<dianhuabu>();
		while(true){
			System.out.println("1.录入通讯录  2.显示通讯录信息  3.姓名搜索  4.性别搜索   5.电话搜索   6.退出程序");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("请输入 姓名，性别，电话");
				String  w=sc.next();
				String [] arr=w.split(",");
				dianhuabu a=new dianhuabu();
				a.setXingming(arr[0]);
				a.setXingbie(arr[1].charAt(0));
				a.setDianhua(Integer.parseInt(arr[2]));
				list.add(a);
				System.out.println("成功录入");
			}else if(num==2){
				for(dianhuabu a:list){
					a.info();}	
			}else if(num==3){
				System.out.println("请输入姓名");
				String xingming=sc.next();
				for(dianhuabu a:list){
				if(xingming.equals(a.getXingming())){
					a.info();
				}
				}
			}else if(num==4){
				System.out.println("请输入性别");
				char xingbie=sc.next().charAt(0);
				for(dianhuabu a:list){
				if(xingbie==a.getXingbie()){	
				}
				}
			}else if(num==5){
				System.out.println("请输入电话号码");
				String dianhua=sc.next();
				for(dianhuabu b:list){
				if(dianhua.equals(b.getDianhua())){
				b.info();
			}else if(num==6){
				System.out.println("退出程序");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
					}
			}
		}
	}
		
}
