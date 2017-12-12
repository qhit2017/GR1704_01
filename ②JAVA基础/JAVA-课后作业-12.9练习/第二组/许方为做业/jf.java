package 累;

public class jf {
	public static void main(String[] args) {
		
		/*输出1~10000之间以8开头，以7结尾且能被3整除的数*/
		t:for(int i=1;i<=10000;i++){
			for(int n=i;n>=1;n=n/10){
				if(n<10&&n!=8){
					continue t;
				}
			}
			if(i%10==7&&i%3==0){
				System.out.println(i);
			}
		}
	}

}
