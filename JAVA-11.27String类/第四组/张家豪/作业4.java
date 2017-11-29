package 作业;

import java.awt.im.InputContext;
import java.util.Scanner;

public class 作业4 {
	//模拟实现计算器的功能
    //要求从键盘输入第一个数
	//输入操作符
	//输入第二个数
	//然后输出结果
    //比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15
	//比如先输入9，然后输入/，最后输入2 回车之后输出：9/2=4
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数");
		int a=sc.nextInt();
		System.out.println("请输入字符串");
		int b=sc.nextInt();
		System.out.println("请输入第三个数");
		int c=sc.nextInt();
		switch(b){
		case '+':{
			System.out.println("a+c="+(a+b));
			break;
		}
		case'-':{
			System.out.println("a-b="+(a-b));
			break;
		}
			case'*':{
				System.out.println("a*b="+(a*b));
				break;
			}
			case'/':{
				System.out.println("a/b="+(a/b));
				break;
			}
			default:{
				System.out.println("输入有错误");
				break;
		}
		}
	}

}
