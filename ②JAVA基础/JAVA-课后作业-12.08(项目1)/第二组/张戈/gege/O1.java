package com.gege;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class O1 {
	public static void main(String[] args) {
		List<shangpin> list=new ArrayList<shangpin>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("请输入：1.新增商品2.进货3.销售4.参看库存5.退出功能");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("请输入：商品名称,商品编号,商品价格,商品数量");
				String str=sc.next();
				String arr[] =str.split(",");
				shangpin sp=new shangpin();
				sp.setName(arr[0]);
				sp.setBianhao(arr[1]);
				sp.setJiage(Double.parseDouble(arr[2]));
				sp.setShuliang(Integer.parseInt(arr[3]));
				list.add(sp);
				System.out.println("添加成功");
			}else if(num==2){
				System.out.println("请输入：商品编号,进货数量");
				String str1=sc.next();
				String arr1[] =str1.split(",");
				boolean c=true;
				for(shangpin sp:list){
					if(arr1[0].equals(sp.getBianhao())){
						sp.setShuliang(sp.getShuliang()+(Integer.parseInt(arr1[1])));
						c=false;
						System.out.println("进货成功");
					}
				}
				if(c){
					System.out.println("进货失败");
				}
			}else if(num==3){
				System.out.println("请输入：商品编号,出售数量");
				String str2=sc.next();
				String arr2[] =str2.split(",");
				boolean x=true;
				for(shangpin sp:list){
					if(arr2[0].equals(sp.getBianhao())){
						sp.setShuliang(sp.getShuliang()-Integer.parseInt(arr2[1]));
						x=false;
						System.out.println("出售成功");
					}
				}
				if(x){
					System.out.println("出售失败");
				}
				
			}else if(num==4){
				System.out.println("参看库存");
			}else if(num==5){
				System.out.println("系统结束");
				break;
			}else{
				System.out.println("请输正确按键！");
			}
			
		}
		
		
		
	}

}
