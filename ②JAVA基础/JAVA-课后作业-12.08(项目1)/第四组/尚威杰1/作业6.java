package 星期天作业;

public class 作业6 {
//计算0~100，所有偶数的和
	public static void main(String[] args) {
		
           int sum =0;
           for(int i =1;i<=100;i++){
        	   if(i%2==0){
        		   sum=sum+i;
        	   }
           }
           System.out.println(sum);
	}
	
}
