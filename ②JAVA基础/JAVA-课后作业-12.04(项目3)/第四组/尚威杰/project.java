import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class project {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<kaoshixinxi> list=new ArrayList<kaoshixinxi>();
			while(true){
				System.out.println("请按键 1：录入考生的高考信息 2：显示所有考生信息 3：查询最高分，包括：总分最高分和单科最高分 4：程序结束");
				int i = sc.nextInt();
				if(i==1){
					System.out.println("请输入考生姓名");
					String xingming=sc.next();
					System.out.println("请输入编号");
					String bianhao=sc.next();
					System.out.println("请输入语文成绩");
					int yuwen=sc.nextInt();
					System.out.println("请输入数学成绩");
					int shuxue=sc.nextInt();
					System.out.println("请输入英语成绩");
					int yingyu=sc.nextInt();
					
					kaoshixinxi a =new kaoshixinxi();
					a.setXingming(xingming);
					a.setBianhao(bianhao);
					a.setYuwen(yuwen);
					a.setShuxue(shuxue);
					a.setYingyu(yingyu);
					list.add(a);
					System.out.println("添加成功");
				}else if(i==2){
				  for(kaoshixinxi x:list){
					  x.xinxi();
				  }
				}else if(i==3){
					while(true){
						System.out.println("请选择：1：打印总分最高分 2：打印数学最高分 3：打印语文最高分 4：打印英语最高分 5：退出");
						int y =sc.nextInt();
						if(y==1){
							int max =0;
							for(kaoshixinxi u:list){
								if(u.getYuwen()+u.getShuxue()+u.getYingyu()>max){
									max=u.getYuwen()+u.getShuxue()+u.getYingyu();
								}
							}
							System.out.println("总分是"+max);
						}else if(y==2){
							int max =0;
							String xingming="";
							for( kaoshixinxi a:list){
								if(max<a.getShuxue()){
									max=a.getShuxue();
									xingming =a.getXingming();
								}
							}
							System.out.println("数学最高分是"+max+",他的名字是"+xingming);
						}else if(y==3){
							int t =0;
							for(kaoshixinxi z:list){
								if(t<z.getYuwen()){
									t=z.getYuwen();
								}
							}
							System.out.println("语文最高分是"+t);
						}else if(y==4){
							int p =0;
							for(kaoshixinxi o:list){
								if(p<o.getYingyu()){
									p=o.getYingyu();
								}
							}
							System.out.println("英语最高分是"+p);
						}else if(y==5){
							System.out.println("退出");
							break;
						}else{
							System.out.println("你输入的数字不正确");
						}
					}
							
					System.out.println("查询最高分");
				}else if(i==4){
					System.out.println("程序结束");
					break;
				}else{
					System.out.println("你输入的数字不正确");
				}
			}
		}
		
	}
	

