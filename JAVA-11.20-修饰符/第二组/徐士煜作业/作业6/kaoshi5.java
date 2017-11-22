package 考试题;

public class kaoshi5 {
//求1000以内，既能被5整除，又能被3整除的所有整数并打印出来。书用do while循环实现
	public static void main(String[] args) {
		     int i =1;
		     while (i<=1000){
		     
			if(i%5==0 && i%3==0){
				System.out.println(i);
			}
				i++;
		
				
		}
		
	}
	
}
