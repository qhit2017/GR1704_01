package com.xiaoshou;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiaoshou {

	
	public static void main(String[] args) {
		
		List<shuxing>list=new ArrayList<shuxing>();
		Scanner sc=new Scanner(System.in);
		while (true){
		System.out.println("1   新增商品2   进货3   销售4   参看库存5   退出功能");
		int i=sc.nextInt();
			if(i==1){
				System.out.println(" 新增商品,录入商品信息包含商品编号、名称、价格、初始数量  比如,1245,水果,45,457");
				String a=sc.next();
				String arr[]=a.split(",");
				shuxing b=new shuxing();
				b.setBianhao(Integer.parseInt(arr[0]));
				b.setName(arr[1]);
				b.setJiage(Integer.parseInt(arr[2]));
				b.setShuliang(Integer.parseInt(arr[3]));
				b.info();
				list.add(b);
				System.out.println("录入成功");
			}else if(i==2){
				
				System.out.println("进货 输入商品编号和数量，如有此编号商品，则增加相应数量，如没有则显示进货失败。");
				String a1=sc.next();
				String arr[]=a1.split(",");
				boolean x=true;
				for(shuxing b1:list){
	
					if(b1.getBianhao()==Integer.parseInt(arr[0])){
					b1.setShuliang(b1.getShuliang()+Integer.parseInt(arr[1]));
					System.out.println("添加成功");
					x =false;
					break;
				}
				}
				if(x){
					System.out.println("添加失败");
				}
			}else if(i==3){
				System.out.println("销售3、销售，输入商品编号和数量，如有此编号商品且商品数量大于销售数量，则减少相应数量，否则显示销售失败");
				String a2=sc.next();
				String arr[]=a2.split(",");
				for(shuxing b2:list){
					if(b2.getBianhao()==Integer.parseInt(arr[0])&&b2.getShuliang()>Integer.parseInt(arr[1])){
						b2.setShuliang(b2.getShuliang()-Integer.parseInt(arr[1]));
					}
				}
			}else if(i==4){
				for(shuxing b3:list){
					b3.info();
				}
			}else if(i==5){
				System.out.println("退出");
				break;
			}else{
				System.out.println("亲，输入错误哦！！");
			}
		}
	}
}
