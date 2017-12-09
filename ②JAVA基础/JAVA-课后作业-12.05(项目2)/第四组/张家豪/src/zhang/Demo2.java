package zhang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class Demo2 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Demo1>list = new ArrayList<Demo1>();
		while(true){
			System.out.println("请按键 1.录入通讯录信息 2.显示所有通讯录信息 3.姓名搜索 4.性别搜索 5.电话搜索 6.退出功能");
			int rs = sc.nextInt();
			if(rs==1){
				System.out.println("录入通讯录信息 格式如下： 姓名,性别,电话");
				String str=sc.next();
				String[]arr=str.split(",");
				
				
				Demo1 r = new Demo1();
				r.setXingming(arr[0]);
				r.setXingbie(arr[1].charAt(0));
				r.setDianhua(Integer.parseInt(arr[2]));
				r.xinxi();
				list.add(r);
				System.out.println("添加成功");
				
				
			}else if(rs==2){
				for(Demo1 a:list){
					a.xinxi();
				}
				System.out.println("显示所有通讯录信息");
			}else if(rs==3){
				System.out.println("请输入姓名");
				String str=sc.next();
				for(Demo1 s:list){
					if(str.equals(s.getXingming())){
						s.xinxi();
					}
				}
			}else if(rs==4){
				System.out.println("请输入性别");
				char sf=sc.next().charAt(0);
				for(Demo1 d:list){
					if(sf==d.getXingbie()){
						d.xinxi();
					}
				}
			}else if(rs==5){
				System.out.println("请输入电话");
				String sg=sc.next();
				for(Demo1 m:list){
					if(m.equals(m.getDianhua())){
						m.xinxi();
					}
				}
			}else if(rs==6){
				System.out.println("退出");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
		}
	}


}
