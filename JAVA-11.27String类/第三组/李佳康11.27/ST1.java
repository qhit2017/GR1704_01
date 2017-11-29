//1 输出1~1000之间以6结尾的4的倍数
public class ST1 {
		public static void main(String[] args) {
		/*	for(int i = 1;i<=1000;i++){
				if(i%4==0&&i%10==6){
					System.out.println(i);
				}
			}*/
			
			for(int i = 1;i<=1000;i++){
				String a = " "+i;
				if(a.charAt(a.length()-1)=='6'&&i%4==0){
					System.out.println(i);
				}
			}
		}
}
