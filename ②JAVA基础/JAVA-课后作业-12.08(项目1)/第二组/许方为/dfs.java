package we;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test {

	public static void main(String[] args) {
		List<goods>list=new ArrayList<goods>();
		Scanner sc=new Scanner(System.in);
		while (true){
			System.out.println("1新增商品2进货3销售4查看库存5退出功能");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("1新增商品如：123,鸡蛋,1,120");
				goods i=new goods();
				String str=sc.next();
				String []arr=str.split(",");
				i.setBianhao(arr[0]);
				i.setName(arr[1]);
				i.setPrice(Integer.parseInt(arr[2]));
				i.setNumber(Integer.parseInt(arr[3]));
				list.add(i);
				System.out.println("新增成功");
			}else if(a==2){
				System.out.println("进货如 :123 ,ag,120");
				String str =sc.next();
				String[]arr=str.split(",");
				String bianhao =arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean flag= true;
				for(goods s:list ){
					if(bianhao.equals(s.getBianhao())){
					s.setNumber(s.getNumber()+count);
					flag =false;
					System.out.println("进货"+count);
						break;
					}                  
					}				
			}else if(a==3){
				System.out.println("销售");
				String name=sc.next();
				for(int i=0;i<list.size();i++){
					goods s=list.get(i);
					if(name.equals(s.getName())){
						list.remove(s);
						System.out.println("销售成功");
						break;
					}
				}
				
			}else if(a==4){
				System.out.println("查看库存");
				
				for(goods q:list){
					q.inof();
				}
			}else if(a==5){
				System.out.println("退出");
				break;
			}
		}
	}
		}
