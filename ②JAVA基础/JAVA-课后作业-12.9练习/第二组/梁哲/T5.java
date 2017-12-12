package zy;
	/*
	 * 定义数组 int [] arr = {7,8,9,12,5}; 求数组里最大值以及最小值
	 */
public class T5 {
	public static void main(String[] args) {
		int []arr={7,8,9,12,5};
		int min=arr[0];
		int max=arr[0];
		for(int a:arr){
			if(a>max){
				max=a;
			}else if(a<min){
				min=a;
			}
		}
		System.out.println(max);
		System.out.println(min);
	}
}
