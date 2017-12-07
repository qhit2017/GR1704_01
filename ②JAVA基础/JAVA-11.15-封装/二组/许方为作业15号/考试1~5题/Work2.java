import java.util.Scanner;


public class Work2 {
	public static void main(String[] args) {
		System.out.println("请输入两个数：");
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		if(a<b){
			System.out.println(a+"<"+b);
		}else{
			System.out.println(a+">"+b);
		}
	}

}
