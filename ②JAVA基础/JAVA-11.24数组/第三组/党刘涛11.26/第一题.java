package 作业11￥26;

public class 第一题 {
//定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
	public static void main(String[] args) {
		int arr[]={8,51,63,21,47,12};
		System.out.println("反着输出：");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+" ");
	}
		System.out.println();
		
		System.out.println("正着输出：");
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"  ");
		}
		System.out.println();
	}
}
