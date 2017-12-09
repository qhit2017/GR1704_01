import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class kuangjia {
		public static void main(String[] args) {
			List<shangpin> list =new ArrayList<shangpin>();
			List<jilu> list2 = new ArrayList<jilu>();
			Scanner sc = new Scanner(System.in);
			while(true){
				System.out.println("请按键：1   新增商品2   进货3   销售4   参看库存5  进货记录6  销售记录7 退出系统 ");
				int i = sc.nextInt();
				if(i==1){
					System.out.println("录入商品信息包含：商品编号、名称、数量、价格");
					String str = sc.next();
					String[] arr = str.split(",");
					shangpin a = new shangpin();
					a.setBianhao(Integer.parseInt(arr[0]));
					a.setName(arr[1]);
					a.setShuliang(Integer.parseInt(arr[2]));
					a.setJiage(Integer.parseInt(arr[3]));
					list.add(a);
					System.out.println("添加成功");
				}else if(i==2){
					System.out.println("输入商品编号和数量");
					String str = sc.next();
					String[] arr = str.split(",");
					boolean c = true;
					for(shangpin b:list){
						if(b.getBianhao()==Integer.parseInt(arr[0])){
							b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
							jilu d = new jilu();
							d.setBianhao(b.getBianhao());
							d.setJiage(b.getJiage());
							d.setName(b.getName());
							d.setShuliang(b.getShuliang());
							d.setJinhuoshuliang(Integer.parseInt(arr[1]));
							list2.add(d);
							c=false;
							System.out.println("进货成功");
						}
					}
					if(c){
						System.out.println("进货失败");
					}
				}else if(i==3){
					System.out.println("输入商品编号和数量");
					String str = sc.next();
					String[] arr = str.split(",");
					boolean c = true;
					for(shangpin b:list){
						if(b.getBianhao()==Integer.parseInt(arr[0])&&b.getShuliang()>=Integer.parseInt(arr[1])){
							b.setShuliang(b.getShuliang()-Integer.parseInt(arr[1]));
							jilu d = new jilu();
							d.setBianhao(b.getBianhao());
							d.setJiage(b.getJiage());
							d.setName(b.getName());
							d.setShuliang(b.getShuliang());
							d.setXiaoshoushuliang(Integer.parseInt(arr[1]));
							list2.add(d);
							c=false;
							System.out.println("销售成功");
						}
					}
					if(c){
						System.out.println("销售失败");
					}
				}else if(i==4){
					for(shangpin b:list){
						b.info();
					}
				}else if(i==5){
					System.out.println("进货记录：");
					for(jilu b:list2){
						if(b.getJinhuoshuliang()>0)
						b.info1();
					}
				}else if(i==6){
					System.out.println("销售记录：");
					for(jilu b:list2){
						if(b.getXiaoshoushuliang()>0){
							b.info2();
						}
					}
				}else if(i==7){
					System.out.println("退出系统");break;	
				}else{
					System.out.println("您输入的数字不正确");
				}	
			}
		}
}
