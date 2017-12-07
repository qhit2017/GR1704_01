package xxx;
//3、请输出0~10000之间以3开头的数
public class work3 {
		public static void main(String[] args) {
			for(int i = 0;i<=10000;i++){
				for(int j = i;j>=1;j=j/10){		
				if(j==3&&j<10){
					System.out.println(i);
				}
				}			
			}
		}
}
