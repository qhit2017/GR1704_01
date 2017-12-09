import java.util.Scanner;


public class zuoye3 {
//求1~1000之间包含7的数
	public static void main(String[] args) {		
		for(int i=1;i<=1000;i++){
			if(i%10==7||i/10%10==7 ||i/100%10==7){
				System.out.println(i);
			}
		}
				
	}
	
}
