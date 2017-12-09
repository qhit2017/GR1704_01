package zhang;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Scanner;

public class Demo2 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		ArrayList<Demo1> list=new ArrayList<Demo1>();
		while(true){
			System.out.println("1新曾商品 2进货 3销售 4参看库存 5退出");
			int rs=sc.nextInt();
			if(rs==1){
				System.out.println("新曾商品例如：商品编号名称,价格,初始数量");
				String str=sc.next();
				String []arr=str.split(",");
				
				Demo1 r=new Demo1();
				r.setBianhao(Integer.parseInt(arr[0]));
				r.setShangpinming(arr[1]);
				r.setJiage(Integer.parseInt(arr[2]));
				r.setShuliang(Integer.parseInt(arr[3]));
				list.add(r);
				System.out.println("添加成功");
			}else if(rs==2){
				System.out.println("进货:请输入编号和数量");
				String str=sc.next();
				String []arr=str.split(",");
				boolean d=true;
				for(Demo1 r:list){
					if(r.getBianhao()==Integer.parseInt(arr[0])){
						r.setShuliang(r.getShuliang()+Integer.parseInt(arr[1]));
						System.out.println("进货成功");
						d=false;
						
					}
					}
				if(d){
				System.out.println("进货失败");
					
				}
				
		
			
			}else if(rs==3){
				System.out.println("销售:请输入商品编号和数量");
				String str=sc.next();
				String []arr=str.split(",");
				boolean s=true;
				for(Demo1 r:list){
					if(r.getBianhao()==Integer.parseInt(arr[0])&&r.getShuliang()>=Integer.parseInt(arr[1])){
						
						r.setShuliang(r.getShuliang()-Integer.parseInt(arr[1]));
						System.out.println("销售成功");
						s=false;
						break;
				}
			
				}
			
			
					if(s){
						System.out.println("销售失败");
								
					
		
				}
			}else if(rs==4){
				for(Demo1 r:list){
					r.xinxi();
				}
			}else if(rs==5){
				System.out.println("退出");
				break;
			}
		}
	}

}
