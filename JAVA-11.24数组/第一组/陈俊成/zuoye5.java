package zuoye24;

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
public class zuoye5 {


	public static void main(String[] args) {
		Scanner  sc=new Scanner(System.in);
		int [] arr=new int [10];
		for(int q=1;q<arr.length;q++){
			System.out.println("请输入第"+q+"个数");
			arr[q-1]=sc.nextInt();
			
		}
		for(int i=5;i<arr.length;i++){
			System.out.println(arr[i]);
		}
		
		
		
		
		
		
		
		
	}
	
	
	
}
	
	
	

