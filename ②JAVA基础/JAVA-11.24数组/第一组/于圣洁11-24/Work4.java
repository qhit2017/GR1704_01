
public class Work4 {
	public static void main(String[] args) {
		int []arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
			
		for(int j=0;j<arr.length;j++){
			if(arr[i]>arr[j]&&max<arr[j]){
				max=arr[i];
			}
			if(min==0){
				min=arr[i];
			}else if(arr[i]<arr[j]&&min>arr[i]){
				min=arr[i];
			}
			{
			
		}
			
		}
         }
		System.out.println("�����е�Ԫ�غ�Ϊ��"+sum);
		System.out.println("���������ֵΪ��"+max);
		System.out.println("��������СֵΪ��"+min);
	}
}