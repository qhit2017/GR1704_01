import java.util.Scanner;

/*5  一球从h米高度自由落下，每次落地后反跳回原高度的一半；
       再落下，求它在 第n次落地时，共经过多少米？第n次反弹多高？*/
public class th5 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int h = sc.nextInt();
			int n = sc.nextInt();
			int j=1;
			double sum = 2*h;
			double k=0.5;
			for(int i = 1;i<=n;i++){
			j=j*2;
			k=k*2;
			sum=sum/2;
			}
			
			System.out.println(sum);
			System.out.println((j-1)*h/k);
		}
}
