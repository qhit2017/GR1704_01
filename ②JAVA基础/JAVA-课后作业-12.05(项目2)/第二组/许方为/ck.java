package 作业;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ck {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<lei>list=new ArrayList<lei>();
    while(true){
    	System.out.println("1.录入通讯录信息2.显示所有通讯录信息3	姓名搜索4	性别搜索.电话搜索");
    	int num=sc.nextInt();
    	if(num==1){
    		System.out.println("请输入 ,姓名,性别,电话");
    		int x=sc.nextInt();
    		String str=sc.next();
    		String[]arr=str.split(",");
    		lei b=new lei();
    		
    		b.setXingming(arr[0]);
    		b.setXingbie(arr[1].charAt(0));
    		b.setDianhua(Integer.parseInt(arr[2]));
    		list.add(b);
    		System.out.println("添加成功");
    		
    	}else if(num==2){
    		for (lei i:list) {
				i.xinxi();
			}
    		System.out.println("显示所有通讯录信息");
    	}else if(num==3){
    		System.out.println("姓名搜索");
    	}else if(num==4){
    		System.out.println("性别搜索");
    		
    	}else if(num==5){
    		System.out.println("电话搜索");
    		
			
		}else if(num==6){
			System.out.println("退出");
			break;
			
			
		}else {
			System.out.println("你输入的数字不对");
			
		}
    	
    			
    		

    }

			
		}
		
	}


