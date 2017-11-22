package zuoye;

import java.util.Scanner;

/** 
 * @author  作者 E-mail:1561061182@qq.com
 * @date    创建时间：2017年11月8日 下午6:44:32 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 * @function
 */
public class zuoye4 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System .in);
		System.out.println("输入一个数字，");
		int i=sc.nextInt();
		switch (i){
		case 1:
			System.out.println("星期一");break;
		case 2:
			System.out.println("星期二");break;
			
		case 3:
			System.out.println("星期三");break;
			
		case 4:
			System.out.println("星期四");break;
			
		case 5:
			System.out.println("星期五");break;
			
		case 6:
			System.out.println("星期六");break;
			
		case 7:
			System.out.println("星期日");break;
		default: System.out.println("输入有误");	
		
		}
		
		
		
		
		
	}
	
	
	
	
	
}
