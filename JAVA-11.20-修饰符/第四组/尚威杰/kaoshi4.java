package 考试题;

public class kaoshi4 {
//编写JAVA程序；求1000以内8的倍数之和。
	public static void main(String[] args) {
		int sum=0;
		for (int i =1;i<=1000;i++){
			if (i%8==0){
			sum=sum+i;
		}
		
	}
		System.out.println(sum);
	
}
}