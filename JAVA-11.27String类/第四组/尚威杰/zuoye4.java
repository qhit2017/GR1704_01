import java.util.Scanner;


public class zuoye4 {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ����");
		int  i=sc.nextInt();
		System.out.println("�����������");
		String q=sc.next();
		System.out.println("�����������");
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
