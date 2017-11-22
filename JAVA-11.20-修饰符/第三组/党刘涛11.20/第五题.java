package 练习;

public class 第五题 {
	//5.编写JAVA程序,求1000以内,既能被5 整除，又能被3整除的所有整数,并打印出来。(使
	//用do while循环实现)+
	public static void main(String[] args) {
		int i=1;
		while (i<=1000){
			if(i%5==0&&i%3==0){
				System.out.println(i);
				
			}i++;
		}
	}
}
