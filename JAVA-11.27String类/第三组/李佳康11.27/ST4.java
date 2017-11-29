import java.util.Scanner;

/*4 模拟实现计算器的功能
    要求从键盘输入第一个数
	输入操作符
	输入第二个数
	然后输出结果
    比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15
	比如先输入9，然后输入/，最后输入2 回车之后输出：9/2=4
	*/
public class ST4 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			System.out.println("请输入第一个数：");
			int a = sc.nextInt();
			System.out.println("请输入运算符：");
			char b = sc.next().charAt(0);
			System.out.println("请输入第二个数：");
			int c = sc.nextInt();
			switch(b){
			case '+':{
				System.out.println(a+"+"+c+"="+(a+c));break;
			}
			case '-':{
				System.out.println(a+"-"+c+"="+(a-c));break;
			}
			case '*':{
				System.out.println(a+"*"+c+"="+(a*c));break;
			}
			case '/':{
				System.out.println(a+"/"+c+"="+(a/c));break;
			}
			}
		}
}
