package z26;

public class z4 {

	public static void main(String[] args) {
		int [] arr =  {5,9,12,45,18,30};
		int sum = 0;
		for(int i = 0;i<arr.length;i++){
			sum = sum + arr[i];
		}
		System.out.println(sum);
		int max=arr[0];
		int xiao = arr[0];
		for(int i=1;i<arr.length;i++){
			if(max<arr[i]){
				max=arr[i];
			}
			if(xiao>arr[0]){
				xiao= arr[0];
			}
		}
		System.out.println(max);
		System.out.println(xiao);
		
	}
}
