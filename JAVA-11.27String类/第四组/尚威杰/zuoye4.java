import java.util.Scanner;


public class zuoye4 {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数");
		int  i=sc.nextInt();
		System.out.println("请输入运算符");
		String q=sc.next();
		System.out.println("请输入二个数");
		int  a=sc.nextInt();
		if(q.equals("+")){
			System.out.println(i+"+"+a+"="+(i+a));
		}else if(q.equals("*")){
			System.out.println(i+"*"+a+"="+(i*a));
		}else if(q.equals("/")){
			System.out.println(i+"/"+a+"="+(i/a));
		}else if(q.equals("-")){
			System.out.println(i+"-"+a+"="+(i-a));
		}
		
	}
	
}
