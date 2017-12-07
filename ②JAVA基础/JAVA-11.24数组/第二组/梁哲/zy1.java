package zy;
/*
 *  定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
 */
public class zy1 {
		public static void main(String[] args) {
			
			/*int []tt={8,51,63,21,47,12};
			for(int zz=0;zz<tt.length;zz++){
				System.out.println(tt[zz]);
			}*/
			
			int[]lz={8,51,63,21,47,12};
			for(int lt=lz.length-1;lt>=0;lt--){
				System.out.println(lz[lt]);
			}
		}
}
