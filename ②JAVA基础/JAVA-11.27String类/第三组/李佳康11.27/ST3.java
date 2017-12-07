//3 求1~1000之间包含7的所有数
public class ST3 {
		public static void main(String[] args) {
		for(int i = 1;i<=1000;i++){
			for(int j = i;j>=1;j=j/10){
				if(j%10==7){
					System.out.println(i);
				}
			}
		}
		}
}
