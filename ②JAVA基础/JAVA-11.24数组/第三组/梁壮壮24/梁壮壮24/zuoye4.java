
public class zuoye4 {

	//����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	public static void main(String[] args) {
		
		int  arr[]={5,9,12,45,30};
		int sum=0;
		int max=0;
		int min=0;
		for(int i=0;i<arr.length;i++){
			sum  =sum+arr[i];
			if(max<arr[i]){
				max=arr[i];
			}else if(min>arr[i]){
				min=arr[i];
			}
		}
		System.out.println("��:"+sum);
		System.out.println("���ֵ:"+max);
		System.out.println("��Сֵ:"+min);
		
		}
		
	
	
	
	
}
