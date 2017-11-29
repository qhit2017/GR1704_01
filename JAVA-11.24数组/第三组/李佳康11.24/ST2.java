//2 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
public class ST2 {
		public static void main(String[] args) {
			int x[]={9,15,24,36,78,51,94,62,57,42};
			for(int i = 0;i<x.length;i++){
				if((i+1)%2!=0){
					System.out.print(x[i]+"  ");
				}
			}
		}
}
