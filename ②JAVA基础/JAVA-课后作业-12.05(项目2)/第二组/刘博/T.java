package T;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class T {
	
public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	List<T1> list =new ArrayList<T1>();
	for(int i=1;i<=6;i++){
		System.out.println("请按键：1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
		int b=sc.nextInt();
		if(b==1){
			System.out.println("录入通讯录信息");
			String str=sc.next();
			String []arr=str.split(",");
			 T1  p = new T1();
			p.setXingming(arr[0]);
			p.setXingbie(arr[1].charAt(0));
			p.setDianhua(arr[2]);
			list.add(p);
			System.out.println("录入成功");
		}else if(b==2){
			System.out.println("显示所有通讯录信息");
					for(T1 a:list){
					a.info();
					}
		}else if(b==3){
			System.out.println("请输入姓名：");
		String name = sc.next();
		for(T1 a :list){
			if(name.equals(a.getXingming())){	
				a.info();     
			}
		}
		}else if(b==4){
			System.out.println("请输入性别：");
			char name = sc.next().charAt(0);
			for(T1 t :list){
				if(name==t.getXingbie()){
					t.info();
		}else if(b==5){
			System.out.println("电话搜索");
		}else if(b==6){
			System.out.println("退出功能");
			break;
		}else{
			System.out.println("你输入的数字不规范");
		}
	}
		}
		}
}
}
