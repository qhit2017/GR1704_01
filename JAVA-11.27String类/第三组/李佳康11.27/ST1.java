//1 ���1~1000֮����6��β��4�ı���
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
