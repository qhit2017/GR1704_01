package 作业;

public class 作业3 {
	//求1~1000之间包含7的所有数
	public static void main(String[] args) {
		int a=1000;
		for(int i=0;i<=1000;i++){
			if(i%10==7||(i/10)%10==7){
				System.out.println(i);
				
			}
		}
		
	}

}
