package zy;
/*
 * 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
 */
public class zy2 {
	public static void main(String[] args) {
		
		int[]a={9,15,24,36,78,51,94,62,57,42};
		for(int z=0;z<a.length;z++){
			if(a[z]%2!=0){
				System.out.println(a[z]);
			}
		}
		
	}
}
