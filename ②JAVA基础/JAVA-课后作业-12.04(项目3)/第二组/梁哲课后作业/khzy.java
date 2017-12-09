package zy;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/*
 * 独立完成java基础试卷1的项目
 */
public class khzy {
	public static void main(String[] args) {
		List<khzy2> list=new ArrayList<khzy2>();
		Scanner sc=new Scanner(System.in);
	    while(true){
	    	System.out.println("请输入：1录入学生高考信息2显示所有学生信息3查询最高分，包括：总分最高和单科最高分4程序结束");
	    	int i=sc.nextInt();
	    	if(i==1){
	    		System.out.println("添加学生：格式是：姓名,编号,语文成绩,数学成绩,英语成绩");
	    		String str=sc.next();
	    		String arr[]=str.split(",");
	    		khzy2 a=new khzy2();
	    		a.setXingming(arr[0]);
	    		a.setBianhao(arr[1]);
	    		a.setYuwen(Integer.parseInt(arr[2]));
	    		a.setShuxue(Integer.parseInt(arr[3]));
	    		a.setYingyu(Integer.parseInt(arr[4]));
	    		list.add(a);
	    		System.out.println("添加成功");
	    	}else if(i==2){
	    		for(khzy2 e:list){
	    			e.info();
	    		}
	    	}else if(i==3){
	    		while(true){
	    			System.out.println("请输入1打印总分最高分2打印语文最高分3打印数学最高分4打印英语最高分5返回上一层");
	    			int x=sc.nextInt();
	    			if(x==1){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getYuwen()+a.getShuxue()+a.getYingyu()){
	    						max=a.getYuwen()+a.getShuxue()+a.getYingyu();
	    					}
	    				}
	    				System.out.println("总分最高分是："+max);
	    			}else if(x==2){
	    				int max=0;
	    				for(khzy2 b:list){
	    					if(max<b.getYuwen()){
	    						
	    					}
	    				}
	    				System.out.println("语文最高分是"+max);
	    			}else if(x==3){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getShuxue()){
	    						
	    					}
	    				}
	    				System.out.println("数学最高分是"+max);
	    			}else if(x==4){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getYingyu()){
	    						max=a.getYingyu();
	    					}
	    				}
	    				System.out.println("英语最高分是"+max);
	    			}else if(x==5){
	    				System.out.println("返回上一层");
	    				break;
	    			}else{
	    				System.out.println("您输入的数字有误");
	    			}
	    		}
	    		
	    	}else if(i==4){
	    		System.out.println("程序结束");
	    		break;
	    	}else {
	    		System.out.println("请输入规范的数字");
	    	}
	    }
		
		
		
	}
}
