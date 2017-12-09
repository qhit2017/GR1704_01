package lz;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zy {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<zy2> list=new ArrayList<zy2>();
		while(true){
			System.out.println("1录入通讯录信息2显示所有通讯录信息3姓名搜索4性别搜索5电话搜索6退出功能");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("请输入联系人：格式：姓名,性别,电话号码");
				String str=sc.next();
				String arr[]=str.split(",");
				zy2 c=new zy2();
				c.setName(arr[0]);
				c.setXb(arr[1].charAt(0));
				c.setPhone(arr[2]);
				list.add(c);
				System.out.println("添加成功");
			}else if(a==2){
				for(zy2 c:list){
					c.info();
				}
			}else if(a==3){
					System.out.println("请输入姓名：");
					String b=sc.next();
					for(zy2 s:list){
					 if(b.equals(s.getName())){
						s.info();
					 }
					}	 
			}else if(a==4){
					System.out.println("请输入性别：");
					char q=sc.next().charAt(0);
					for(zy2 d:list){
						if(q==d.getXb()){
							d.info();
						}
					}
			}else if(a==5){
				System.out.println("请输入电话号码");
				String t=sc.next();
				for(zy2 w:list){
					if(t.equals(w.getPhone())){
						w.info();
					}
				}
				
				
			}else if(a==6){
				System.out.println("6退出功能");
				break;
			}else{
				System.out.println("您输入的数字有误！");
			}
		}





		
	}
	

}
