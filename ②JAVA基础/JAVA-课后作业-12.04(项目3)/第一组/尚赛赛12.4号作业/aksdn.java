package sksa;



import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class aksdn {
	
	public static void main(String[] args) {
		
		List<lei>list=new ArrayList<lei>();
		Scanner sc =new Scanner(System.in);
		while(true){
			System.out.println("1，输入学生信息2，查询所有学生3，查询最高分4，退出");
		int sum = sc.nextInt();	
			if(sum==1){
				System.out.println("请输入学生信息：姓名,编号,语文成绩, 英语成绩");
				String j = sc.next();
				String[]arr=j.split(",");
				
				lei z = new lei();
				z.setXingming(arr[0]);
				z.setBianhao(Integer.parseInt(arr[1]));
				z.setYuwen(Integer.parseInt(arr[2]));
				z.setShuxue(Integer.parseInt(arr[3]));
				z.setYingyu(Integer.parseInt(arr[4]));
				list.add(z);
				System.out.println("添加成功，请选择");
			}else if(sum==2){
				for(lei a :list){
					a.yun();
				}
					
				
			}else if(sum==3){
				while(true){
					System.out.println("1,查询总分最高分2,语文最高分3,数学最高分4,英语最高分5,退出");
					int z =sc.nextInt();
					if(z==1){
						int max = 0;
						for(lei a: list){
							if(max<a.getShuxue()+a.getYuwen()+a.getYingyu()){
								max=a.getShuxue()+a.getYuwen()+a.getYingyu();
							}
						}
						System.out.println("总分最高分为："+max);
					}else if(z==2){
					
						int max =0;
						for(lei a: list){
							if(max<a.getYuwen()){
								max = a.getYuwen();
							}
						}
						System.out.println("语文最高分为："+max);
					}else if(z==3){
						int max = 0;
						for(lei a:list){
							if(max<a.getShuxue()){
								max = a.getShuxue();
							}
						}
						System.out.println("数学最高分为："+max);
					}else if(z==4){
						int max = 0;
						for(lei a:list){
							if(max<a.getYingyu()){
								max= a.getYingyu();
							}
						}
						System.out.println("英语最高分为："+max);
					}else if(z==5){
						System.out.println("返回主菜单");
						break;
					}else{
						System.out.println("您输入的数字有误请重新输入");
					}
					
				}
					
			}else if(sum==4){
		System.out.println("退出");
		break;
			}else{
				System.out.println("你输入的数字有误，请从新输入");
				
				
			}
				
					}
		}
		
		
		
	

	}

