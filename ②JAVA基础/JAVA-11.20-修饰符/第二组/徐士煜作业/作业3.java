package zuoye;

import java.util.Scanner;

/** 
 * @author  ���� E-mail:1561061182@qq.com
 * @date    ����ʱ�䣺2017��11��8�� ����6:44:32 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 * @function
 */
public class zuoye3 {
/*
 * ����������С��x,y,z��������������ɴ�С�����
 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System .in);
		System.out.println("������������");
		int x=sc.nextInt();
		int y=sc.nextInt();
		int z=sc.nextInt();
		if(x>y&&y>z){
			System.out.println(x+">"+y+">"+z);
		}else if(x>z&&z>y){
			System.out.println(x+">"+z+">"+y);
		}else if(z>x&&x>y){
			System.out.println(z+">"+x+">"+y);
		}else if(z>y&&y>x){
			System.out.println(z+">"+y+">"+x);
		}else if(y>z&&z>x){
			System.out.println(y+">"+z+">"+x);
		}else if(y>x&&x>z){
			System.out.println(y+">"+x+">"+z);
		}
				
				
		
		
		
	}
	
	
	
	
	
	
}
