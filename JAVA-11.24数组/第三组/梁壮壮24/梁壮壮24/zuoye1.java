
public class zuoye1 {

	//定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
	public static void main(String[] args) {
		
		int [] arr={8,51,63,21,47,12};
		System.out.println("反着输出");
		for(int i= arr.length-1;i>0;i--) {
			System.out.println(arr[i]);
		}
		System.out.println("正这输出所有");
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]);
		}
	}
}
