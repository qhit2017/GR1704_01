package ghsghs;

import java.util.Scanner;

public class chigeji4 {
/*模拟实现计算器的功能
    要求从键盘输入第一个数
	输入操作符
	输入第二个数
	然后输出结果
    比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15*/
    
	public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入第一个数");
	int i=sc.nextInt();	
	System.out.println("请输入操作符");
	char a=sc.next().charAt(0);
	System.out.println("请输入第二个数");	
	int b=sc.nextInt();	
	switch(a){
	case '+':{
		System.out.println(i+"+"+b+"="+(i+b));
		break;
	}
	case '-':{
		System.out.println(i+"-"+b+"="+(i-b));	
		break;
	}
	case '*':{
		System.out.println(i+"*"+b+"="+(i*b));	
		break;
	}
	case '/':{
		System.out.println(i+"/"+b+"="+(i/b));	
		break;
		
		
	}
	}
	}	
}
	
	
	
	

