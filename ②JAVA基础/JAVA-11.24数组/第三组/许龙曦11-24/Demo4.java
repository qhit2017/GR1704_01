package zhoye;

public class Demo4 {
public static void main(String[] args) {
	int []arr={5,9,12,45,18,30};
	int sum=0;
	int max=arr[0];
	int min=arr[0];
	for (int i = 0; i <= arr.length-1; i++) {
		if (max<arr[i]) {
			max=arr[i];
			
		}else if(min>arr[i]){
			min=arr[i];
		}
		sum=sum+arr[i];
		
	}
	System.out.println("����,"+sum);
	System.out.println("���ֵ��,"+max);
	System.out.println("��Сֵ��,"+min);
}
}
