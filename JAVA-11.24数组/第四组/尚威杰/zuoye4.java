
public class zuoye4 {

	public static void main(String[] args) {
		
		int sum=0;
		int arr[]={77,23,18,90,20,30};
		int min=arr[0];
		int max=arr[0];
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
			if(max<arr[i]){
				max=arr[i];
				
			}else if(min>arr[i]){
				min=arr[i];
			}
		}
		
		System.out.println(max);
		System.out.println(min);
		System.out.println(sum);
		
	}
	
}
