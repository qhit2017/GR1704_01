package com.王文政;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class x2 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		List<x1>list = new ArrayList<x1>();
		while(true){
			System.out.println("请按键: 1.录入考生的高考信息 2.显示所有考生信息 3.查询最高分 包括：总分最高分和单科最高分 4.退出功能");
			int rs = sc.nextInt();
			if(rs==1){
			System.out.println("请输入考生的基本信息 格式如下: 佩斯特,1527,97,98,99");
			String str=sc.next();
			String[]arr=str.split(",");
			
			x1 sd =new x1();
			sd.setName(arr[0]);
			sd.setBianhao(arr[1]);
			sd.setYuwenchengji(Integer.parseInt(arr[2]));
			sd.setShuxuechengji(Integer.parseInt(arr[3]));
			sd.setYingyuchengji(Integer.parseInt(arr[4]));
			sd.info();
			list.add(sd);
			System.out.println("添加成功");
			}else if(rs==2){
				for(x1 alo:list){
					alo.info();
				}
				System.out.println("显示所有考生信息");
			}else if(rs==3){
				System.out.println("进入子界面 1.语文成绩 2.数学成绩 3.英语成绩");
				for(int a = 1;a>0;a++){
					int b =sc.nextInt();
					if(b==1){
						int max= 0;
						for(x1 c:list){
							if(max<c.getYuwenchengji()){
							max=c.getYuwenchengji();
						}
						}
						System.out.println("语文最高分:"+max);
					}else if(b==2){
						int max= 0;
						for(x1 v:list){
							if(max<v.getShuxuechengji()){
							max=v.getShuxuechengji();
						}
						}
						System.out.println("数学最高分:"+max);
					}else if(b==3){
						int max= 0;
						for(x1 g:list){
							if(max<g.getYingyuchengji()){
							max=g.getYingyuchengji();
						}
						}
						System.out.println("英语最高分:"+max);
					}else if(b==4){
						int max= 0;
						
						for(x1 h:list){
							if(h.getYuwenchengji()+h.getShuxuechengji()+h.getYingyuchengji()>max){
								max=h.getYuwenchengji()+h.getShuxuechengji()+h.getYingyuchengji();
							}
						}
						System.out.println("总分："+max);
					}else if(b==5){
						System.out.println("退出子界面 进入主界面");break;
					}
					}
					}else if(rs==4){
						System.out.println("系统停止");break;
					}else{
						System.out.println("您输入的数字不规范");
}

}
	}
}
