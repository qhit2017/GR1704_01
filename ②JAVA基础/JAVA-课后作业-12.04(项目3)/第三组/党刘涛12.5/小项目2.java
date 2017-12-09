package fuxi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class 小项目2 {
	/*
	 * 1、录入考试信息信息包含姓名、编号、语文、数学、英语成绩，并计算出总成绩
2、显示所有考生信息包括姓名、编号、语文、数学、英语成绩、总成绩
3、当用户选择3时，又显示一个子菜单：
1	打印总分最高分
2	打印数学最高分
3	打印语文最高分
4	打印英语最高分
5	退出
   输入对应数字则显示对应分数，输入5则退出到主界面
4、退出功能可以退出系统

	 */
	
	public static void main(String[] args) {
		List<student>list=new ArrayList<student>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1、录入考试信息2、显示所有考生信息3.进入子菜单,查询单科最高分以及总分最高分4.退出系统");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入考生信息:姓名、编号、语文、数学、英语成绩"
						+ "例如:张三,170,59,86,58");
				String str =sc.next();
				String arr[]=str.split(",");
				student a=new student();
				a.setBianhao(Integer.parseInt(arr[1]));
				a.setName(arr[0]);
				a.setShuxue(Integer.parseInt(arr[2]));
				a.setYingyu(Integer.parseInt(arr[3]));
				a.setYuwen(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("保存成功");
			}else if(i==2){
				System.out.println("显示所有考生信息");
				for(student a:list){
					a.info();
				}
			}else if(i==3){
				System.out.println("进入子菜单，1查询语文最高成绩2.查询数学最高分3.查询英语最高分4.查询总分最高分5.返回主页面");
				while(true){
					int e=sc.nextInt();
					
					if(e==1){
						int max=0;String name="";
						System.out.println("查询语文最高分");
						for(student a:list){
							if(a.getYuwen()>max){
								max=a.getYuwen();
								name=a.getName();
							}
						}
						System.out.println(name+"是语文最高分："+max);
					}else if(e==2){
						int max=0; String name="";
						System.out.println("查询数学最高分");
						for(student q:list){
							if(q.getShuxue()>max){
								max=q.getShuxue();
								name=q.getName();
							}
						}
						System.out.println("数学最高分是"+name+max+"分");
					}else if(e==3){
						int max=0;String name="";
						System.out.println("查询英语最高分");
						for(student w:list){
							if(max<w.getYingyu()){
								max=w.getYingyu();
								name=w.getName();
							}
						}
						System.out.println("英语最高分是："+name+max+"分");
					}else if(e==4){
						int max=0;String name="";
						System.out.println("查询总分最高分");
						for(student k:list){
							if(max<k.getShuxue()+k.getYingyu()+k.getYuwen()){
								max=k.getShuxue()+k.getYingyu()+k.getYuwen();
								name=k.getName();
							}
						}
						System.out.println("总分最高是："+name+"考了"+max+"分");
					}else if(e==5){
						System.out.println("返回主页面");break;
					}else{
						System.out.println("您输入的数字有误请重新输入");
					}
				}
			}else if(i==4){
				System.out.println("程序结束");break;
			}
		}
	}
}
