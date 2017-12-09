package T;

import java.awt.List;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Scanner;

import javax.swing.ListCellRenderer;
import javax.swing.border.LineBorder;

public class A {
public static void main(String[] args) {
	ArrayList<B>list=new ArrayList<B>();
	Scanner sc=new Scanner(System.in);
	for(int i=1;i<=5;i++){
		System.out.println("1.新增商品2.进货3.销售4.参看库存5.退出功能");
		int a=sc.nextInt();
		if(a==1){
			System.out.println("新添加商品： 新增商品，录入商品信息 格式:商品,商品名称,商品编号,商品价格,商品初始数量");
			String str=sc.next();
			String []arr =str.split(",");
			B c = new B();
			c.setShangpin(arr[0]);
			c.setMingchen(arr[1]);
			c.setBianhao(arr[2]);
			c.setJiage(arr[3]);
			c.setShuliang(arr[4]);
			list.add(c);
			System.out.println("添加成功");
		}else if(a==2){
		String str=sc.next();
		String[]arr =str.split(",");
		for(B b:list){
			if(arr[0].equals(b.getBianhao())){
			b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
			System.out.println("进货成功");
			}else{
				System.out.println("进货失败");
			}
				
		}
		}else if(a==3){
			System.out.println("销售");
			String str=sc.next();
			String[] arr =str.split(",");
			for(B b:list){
				if(b.getBianhao().equals(arr[0])){
					b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
					System.out.println();
				}
			}
		}else if(a==4){
			for(B c:list){
				c.info();
			}
			System.out.println("参看库存");
		}else if(a==5){
			System.out.println("退出功能");
			break;
		}else{
			System.out.println("你输入的数字不规范");
		}
	}
	
	
	
	
	
}
	
}

