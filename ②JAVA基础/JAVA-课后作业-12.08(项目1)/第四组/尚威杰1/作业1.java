import java.util.Scanner;


public class 作业1 {

	public static void main(String[] args) {
		//从键盘接受n判断n是否能被3整除
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		if(i%3==0){
			System.out.println("能被3整除");
		}else{
			System.out.println("不能被3整除");
		}
		
	}
	
}
