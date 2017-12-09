package com.x;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Cs {
public static void main(String[] args) {
	List<lei>list=new ArrayList<lei>();
	Scanner sc=new Scanner(System.in);
	System.out.println("模拟一个进销系统，其业务范围包括:1 新增商品,2进货,3销售,4参看库存,5退出功能");
	while(true){
		int x=sc.nextInt();
		if (x==1) {
			System.out.println("请输入需要添加的商品：编号,名称,价格,数量。如：001,红茶,2,100");
			lei c=new lei();
			String str=sc.next();
			String []arr=str.split(",");
			c.setSpbh(arr[0].codePointAt(0));
			c.setMc(arr[1]);
			c.setJg(Double.parseDouble(arr[2]));
			c.setSl(Integer.parseInt(arr[3]));
			
			list.add(c);
			System.out.println("添加成功");
		}else if(x==2){
			System.out.println("请输入进货的商品编号和其需要添加的数量：如：g01,50");
			String str=sc.next();
			String []arr=str.split(",");
			
			String spbh=arr[0];
			int sl=Integer.parseInt(arr[1]);
			
			boolean flag=true;
			for (lei i:list) {
				if (arr[0].equals(i.getSpbh())) {
					i.setSl( i.getSl()+Integer.parseInt(arr[1]));
					flag=false;
				
				}
			}if( flag){
				System.out.println("进货失败");
				
				
			}
			
		}else if(x==3){
			System.out.println("请输入进货的商品编号和其需要添加的数量：如：g01,50");
			System.out.println("销售");
			String str=sc.next();
			String []arr=str.split(",");
			boolean flag=true;
			for (lei i:list) {
				if (arr[1].equals(i.getSpbh())&&Integer.parseInt(arr[1])<=i.getSpbh()) {
					i.setSl( i.getSl()-Integer.parseInt(arr[1]));
				
					flag=false;
					
				}
					
		}
			if( flag){
				System.out.println("进货失败");
			}
		}else if(x==4){
			System.out.println("参看库存");
			for (lei i:list) {
				i.iofo();
			}
			
		}else if(x==5){
			System.out.println("退出功能");
			break;
		}else {
			System.out.println("您输入的操作不规范");
		}
	}
			
}
}
