package 练习;

public class 第四题 {
//4.编写JAVA 程序，求1000 以内所有8 的倍数之和。
	public static void main(String[] args) {
		int sum=0;
		for(int i=1;i<=1000;i++){
			if(i%8==0){
				sum=sum+i;
				System.out.println(i);
			}
		}System.out.println(sum);
	}
}
