//4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
public class ST4 {
		public static void main(String[] args) {
			int x[]={5,9,12,45,18,30};
			int sum = 0;
			for(int i = 0;i<x.length;i++){
				sum=sum+x[i];
			}
			System.out.println(sum);
			int max=x[0];
			int min=x[0];
			for(int i = 1;i<x.length;i++){
				if(max<x[i]){
					max=x[i];
				}
				if(min>x[i]){
					min=x[i];
				}
			}
			System.out.println("���ֵΪ��"+max+"\n��СֵΪ��"+min);
		}
}
