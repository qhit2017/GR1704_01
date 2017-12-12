package com.zjs;

public class z3 {

	public static void main(String[] args) {
//		定义一个字符串 String str = "1290812479120741"; 求各个数字出现的次数
		String str = "1290812479120741";
		int num = 0;
		int er = 0;
		int si =0;
		int qi = 0;
		int jiu = 0;
		int ba = 0;
		for(int i=0;i<str.length();i++){
			if(str.charAt(i)=='1'){
				num=num+1;
			}else if(str.charAt(i)=='2'){
				er++;
			}else if(str.charAt(i)=='4'){
				si++;
			}else if(str.charAt(i)=='7'){
				qi++;
			}else if(str.charAt(i)=='9'){
				jiu++;
			}else if(str.charAt(i)=='8'){
				ba++;
			}
			
		}
		System.out.println("1出现的次数"+num);
		System.out.println("2出现的次数"+er);
		System.out.println("4出现的次数"+si);
		System.out.println("7出现的次数"+qi);
		System.out.println("9出现的次数"+jiu);
		System.out.println("8出现的次数"+ba);

		
		
		
		
		
		
		
		
		
	}
}
