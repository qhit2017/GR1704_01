package 累;

public class gssg {
	public static void main(String[] args) {
		/*    求1~10之间偶数的个数*/
		int count = 0;
		for(int i=1;i<=10;i++){
			if(i%2==0){
				count=count+1;
			}
		}
		System.out.println(count);
		
	}

}
