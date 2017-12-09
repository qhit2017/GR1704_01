package com.f7;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class gyuff {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list=new ArrayList<xi>();
		List<jia>list2=new ArrayList<jia>();
		while(true){
			System.out.println("请输入：1.新增商品,2.进货,3.销售,4.参看库存,5.退出功能,6.进货记录,7.销售记录");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入格式：商品名称,编号,价格,数量");
				String str=sc.next();
				String []arr=str.split(",");
				xi x=new xi();
				x.setName(arr[0]);
				x.setBianhao(Integer.parseInt(arr[1]));
				x.setJiage(Integer.parseInt(arr[2]));
				x.setShuliang(Integer.parseInt(arr[3]));
				list.add(x);
				System.out.println("添加成功");
				
			}else if(i==2){
				
				System.out.println("进货:请输入编号和数量");
				String str=sc.next();
				String []arr=str.split(",");
				boolean x=true;
				for(xi b:list){
					if(b.getBianhao()==Integer.parseInt(arr[0])){
						b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
						jia a=new jia();
						a.setJinhuoshuliang(Integer.parseInt(arr[1]));
						a.setBianhao(b.getBianhao());
						a.setName(b.getName());
						a.setJiage(b.getJiage());
						a.setShuliang(b.getShuliang());
						list2.add(a);
						x=false;
						System.out.println("进货成功");
					}
				}
				if(x){
					System.out.println("");
				}
				
			}else if(i==3){
				System.out.println("销售：请输入销售编号和数量");
				String str=sc.next();
				String []arr=str.split(",");
				boolean x=true;
				for(xi b:list){
					if(b.getBianhao()==Integer.parseInt(arr[0])&&b.getShuliang()>=Integer.parseInt(arr[1])){
						b.setShuliang(b.getShuliang()-Integer.parseInt(arr[1]));
						System.out.println("销售成功");
						jia a=new jia();
						a.setXiaoshoshuliang(Integer.parseInt(arr[1]));
						a.setBianhao(b.getBianhao());
						a.setName(b.getName());
						a.setJiage(b.getJiage());
						a.setShuliang(b.getShuliang());
						list2.add(a);
						x=false;
						break;
					}
					
				}
				if(x){
					System.out.println("销售失败");
				}
			
			}else if(i==4){
				for(xi d:list){
					d.info();
				}
				
			}else if(i==5){
				System.out.println("退出");
				break;
			}else if(i==6){
				System.out.println("进货记录");
				for(jia c:list2){
					if(c.getJinhuoshuliang()>0){
						c.info2();
					}
				}
			}else if(i==7){
				System.out.println("销售记录");
				for(jia c:list2){
					if(c.getXiaoshoshuliang()>0){
						c.info3();
					}
			}
		}
		
	    
		
		
		
			
		}
		
		
		
		
		
		
		
	}
	
	
	
}
