package com.练习;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class lianxi4 {
	
	public static void main(String[] args) {
		
		
		Scanner sc= new Scanner(System.in);
		List<lianxi3>list = new ArrayList<lianxi3>();
		while(true){
			System.out.println("请按键  1.新增商品 2.进货  3.销售 4.查看库存 5.退出");
			int rs  = sc.nextInt();
			if(rs==1){
				System.out.println("新增商品 录入商品信息包含编号,名称,价格,初始数量");
				String str=sc.next();
				String[]arr=str.split(",");
				
				lianxi3 sd = new lianxi3();
				sd.setShangpinbianhao(arr[0]);
				sd.setMingcheng(arr[1]);
				sd.setJiage(Integer.parseInt(arr[2]));
				sd.setChushishuliang(Integer.parseInt(arr[3]));
				sd.info();
				list.add(sd);
				System.out.println("添加成功");
			}else if(rs==2){
				System.out.println("进货  输入商品编号以及数量");
				String sv=sc.next();
				String[]arr=sv.split(",");
				boolean i=true;
				for(lianxi3 alo:list){
					if(arr[0].equals(alo.getShangpinbianhao())){
						alo.setChushishuliang(alo.getChushishuliang()+Integer.parseInt(arr[1]));
						System.out.println("进货成功");
					}
					i=false;
					if(i){
						System.out.println("进货失败");
					}
				}
			}else if(rs==3){
				System.out.println("销售  输入商品编号以及数量");
				String sv=sc.next();
				String[]arr=sv.split(",");
				boolean i =true;
				for(lianxi3 alo:list){
					if(arr[0].equals(alo.getShangpinbianhao())){
						alo.setChushishuliang(alo.getChushishuliang()-Integer.parseInt(arr[1]));
						System.out.println("销售成功");
					}
					i=false;
					if(i){
						System.out.println("销售失败");
					}
				}
			}else if(rs==4){
				for(lianxi3 ggo:list){
					ggo.info();
				}
			}else if(rs==5){
				System.out.println("退出");break;
			}else{
				System.out.println("输入的数字不规范");
			}
		}
	}

}
