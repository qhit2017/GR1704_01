package zuoye24;
/** 
 * @author  作者 E-mail:1561061182@qq.com
 * @date    创建时间：2017年11月8日 下午6:44:32 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 * @function
 */
public class zuoye1 {

	public static void main(String[] args) {
		int[]arr={8,51,63,21,47,12};
		System.out.println("正着输出");
		for(int a=0;a<arr.length;a++){
			System.out.println(arr[a]);
		}
		
		int[]a={8,51,63,21,47,12};
		System.out.println("倒着输出");
		for(int i=arr.length-1; i>=0;i--){
			System.out.println(arr[i]);
		}
		
		
	}
	
	
	
	
	
}
