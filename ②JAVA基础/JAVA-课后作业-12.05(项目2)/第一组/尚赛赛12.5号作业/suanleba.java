package s318;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class suanleba {
	public static void main(String[] args) {
		List<lei>list=new ArrayList<lei>();
		Scanner sc =new Scanner(System.in);
		while(true){
			System.out.println("1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int num = sc.nextInt();
			if(num==1){	
			System.out.println("请输入通讯录信息，格式为：姓名,性别,电话。比如：张三,男,158");
			String str = sc.next();
			String []arr = str.split(",");
			lei s = new lei();
			s.setXingming(arr[0]);
			s.setXingbie(arr[1].charAt(0));
			s.setDianhua(arr[2]);
			list.add(s);
			System.out.println("添加成功");
			
			}else if(num==2){
				for(lei a:list){
					a.yun();
				
				}
				
			}else if(num==3){
				System.out.println("姓名搜索");
				String name = sc.next();
				for(lei a:list){
					if(name.equals(a.getXingming())){
						a.yun();
					}
				}
			}else if(num==4){                                 //性别搜索无法使用有问题
				System.out.println("性别搜索");
				String sex = sc.next();
				 for (lei z:list) {
					 if(sex.equals(z.getXingbie())){
						 z.yun();
					 }
				 }                      
					 
						 
			}else if(num==5){
				System.out.println("电话搜索");
				String dianhua = sc.next();
				 for(lei ml:list){
					 if(dianhua.equals(ml.getDianhua())){
						ml.yun(); 
					 }
				 }
			}else if(num==6){
				System.out.println("停止程序");
				break;
			}else{
				System.out.println("您输入的数字有误，请从新输入");
			}
			
		    }
		
	        }

            }
