import javax.swing.text.StyleContext.SmallAttributeSet;


public class A2 {
/*
 * ��1~1000֮���ܱ�3�����Ҳ��ܱ�7��������֮��
 */
	public static void main(String[] args) {
		int sun =0;
	for(int i=1;i<=1000; i++){
		if(i%10==3&&10%7!=0){
			System.out.println(i);	
			sun =+sun+i;
			System.out.println(sun);
			
		}
	}
	}

}
