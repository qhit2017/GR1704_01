//2 ��1~1000֮���ܱ�3�����Ҳ��ܱ�7��������֮��
public class ST2 {
		public static void main(String[] args) {
			int sum = 0;
			for(int i = 1;i<=1000;i++){
				if(i%3==0&&i%7!=0){
					sum=sum+i;
				}
			}
			System.out.println(sum);
		}
}
