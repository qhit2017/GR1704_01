//1 ����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
public class ST1 {
		public static void main(String[] args) {
			int x[]={8,51,63,21,47,12};
			System.out.println("�������");
			for(int i = 0;i<x.length;i++){
				System.out.print(x[i]+"  ");
			}
			System.out.println();
			System.out.println("�������");
			for(int i = x.length-1;i>=0;i--){
				System.out.print(x[i]+"  ");
			}
		}
}
