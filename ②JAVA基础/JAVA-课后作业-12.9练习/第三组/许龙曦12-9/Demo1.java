/*倒着输出10~1之间的偶数
 * 
 */
public class Demo1 {
 public static void main(String[] args) {
	for (int i = 10; i >=1; i--) {
		if (i%2==0) {
			System.out.println(i);
		}
	}
}
}
