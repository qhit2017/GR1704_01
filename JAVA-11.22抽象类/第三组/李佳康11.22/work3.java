package xxx;
//3�������0~10000֮����3��ͷ����
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
