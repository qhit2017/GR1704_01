import java.util.Scanner;

/*4 ģ��ʵ�ּ������Ĺ���
    Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15
	����������9��Ȼ������/���������2 �س�֮�������9/2=4
	*/
public class ST4 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			System.out.println("�������һ������");
			int a = sc.nextInt();
			System.out.println("�������������");
			char b = sc.next().charAt(0);
			System.out.println("������ڶ�������");
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
