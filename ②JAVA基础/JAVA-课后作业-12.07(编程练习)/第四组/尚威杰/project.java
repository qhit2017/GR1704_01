import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.xml.parsers.FactoryConfigurationError;


public class project {

	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);
		List<shangpin>list = new ArrayList<shangpin>();
		while(true){
			System.out.println("请输入：1 新增商品 2 进货 3 销售 4 参看图库 5 推出程序");
			int i =sc.nextInt();
			if(i==1){
				System.out.println("请输入编号");
				String bianhao = sc.next();
				System.out.println("请输入名称");
				String mingcheng = sc.next();
				System.out.println("请输入价格");
				int jiage =sc.nextInt();
				System.out.println("请输入库存数量");
				int chushishuliang = sc.nextInt();
				
				shangpin a = new shangpin();
				a.setBianhao(bianhao);
				a.setMingcheng(mingcheng);
				a.setJiage(jiage);
				a.setChushishuliang(chushishuliang);
				list.add(a);
				
				System.out.println("添加成功");
			}else if(i==2){
				System.out.println("进货 输入进货编号以及进货数量");
				String y =sc.next();
				String []arr = y.split(",");
				for(shangpin c:list){
					if(arr[0].equals(c.getBianhao())){
						c.setChushishuliang(c.getChushishuliang()+Integer.parseInt(arr[1]));
				System.out.println("进货成功");
					}else{
						System.out.println("进货失败");
					}
				}
			}else if(i==3){
				System.out.println("销售 输入商品编号以及销售数量");
				String y =sc.next();
				String []arr = y.split(",");
				boolean u = true;
				for(shangpin c:list){
					if(arr[0].equals(c.getBianhao())){
						c.setChushishuliang(c.getChushishuliang()-Integer.parseInt(arr[1]));
						System.out.println("销售成功");
						//break;
					}
					u=false;
					if(u){
						System.out.println("销售失败");
						
					}
				}
			}else if(i==4){
				for(shangpin x:list){
					x.xinxi();
				}
			}else if(i==5){
				System.out.println("推出功能");
				break;
			}else{
				System.out.println("你输入数字有误");
			}
		}
		
	}
	
}
