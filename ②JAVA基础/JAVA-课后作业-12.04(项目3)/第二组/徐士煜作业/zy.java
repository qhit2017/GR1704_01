package 课堂练习;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zy {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<kaosheng>list=new ArrayList<kaosheng>();
		while(true){
		System.out.println("请输入： 1.录入高考考生信息 2.查询所有学生信息 3.查询最高分 4.程序结束");
		int num=sc.nextInt();
			if(num==1){
				System.out.println("请输入：学生信息  格式是   姓名   编号   语文成绩   数学成绩   英语成绩");
				String  w=sc.next();
				String [] arr=w.split(",");
				kaosheng a=new kaosheng();
				a.setXingming(arr[0]);
				a.setBianhao(arr[1]);
				a.setChinese(Integer.parseInt(arr[2]));
				a.setMath(Integer.parseInt(arr[3]));
				a.setEnglish(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("添加成功");
			}else if(num==2){
				for(kaosheng a:list){
					a.xinxi();}				
			}else if(num==3){
				while(true){
					System.out.println("输入1查询语文最高分，输入2查询数学最高分，输入3查询英语最高分,输入4查询总分最高分,输入5返回主菜单");
					int b=sc.nextInt();
					if(b==1){
						int p =0;
						for(kaosheng o:list){
							if(p<o.getChinese()){
								p=o.getChinese();	
							}
						}
						System.out.println("语文最高分是"+p);
						
					}else if(b==2){
						int p=0;
						for(kaosheng o:list){
							if(p<o.getMath()){
								p=o.getMath();
							}
						}
						System.out.println("数学最高分是"+p);
					}else  if(b==3){
						int p=0;
						for(kaosheng o:list){
							if(p<o.getEnglish()){
								p=o.getEnglish();
							}
						}
						System.out.println("英语最高分是"+p);
					}else if(b==4){
						int  p=0;
						for(kaosheng o:list){
							if(p<o.getChinese()+o.getEnglish()+o.getMath()){
								p=o.getChinese()+o.getEnglish()+o.getMath();
							}
						}
						System.out.println("总分最高分是"+p);
					}else if(b==5){
						System.out.println("返回主菜单");
						break;
					}else{
						System.out.println("您输入的数字有误请重新输入");
					}
					
				}
			}else if(num==4){
				System.out.println("查询结束");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
		}
	}

}
