package ��ҵ11��26;

public class ������ {
//����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	public static void main(String[] args) {
		int sum=0;
		int arr[]={5,9,12,45,18,30};
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
		
		System.out.println("���ֵ�ǣ�"+max);
		System.out.println("��Сֵ�ǣ�"+min);
		System.out.println("���ǣ�"+sum);
		
}	
}
			 
			

