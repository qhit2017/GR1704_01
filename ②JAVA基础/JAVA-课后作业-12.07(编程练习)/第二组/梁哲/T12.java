package ti1;
/*
 * ��1~20֮����6��β�����ĳ˻�
 */
public class T12 {
	public static void main(String[] args) {
		int cj=1;
		for(int a=1;a<=20;a++){
			if(a%10==6){
				
				cj=a*cj;
			}
		}
		System.out.println(cj);		
	}
}
