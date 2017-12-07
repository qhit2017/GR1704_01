
public class 作业4 {
//输出1~100之间能被3整除的奇数的和
	public static void main(String[] args) {
		int he =1;
		for(int i=1;i<=100;i++){
			if(i%3!=0){
				he = he+i;
			}
		}
		System.out.println(he);
		
	}
	
	
	
}
