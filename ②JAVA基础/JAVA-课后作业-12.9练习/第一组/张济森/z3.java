package com.zjs;

public class z3 {

	public static void main(String[] args) {
//		����һ���ַ��� String str = "1290812479120741"; ��������ֳ��ֵĴ���
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
		System.out.println("1���ֵĴ���"+num);
		System.out.println("2���ֵĴ���"+er);
		System.out.println("4���ֵĴ���"+si);
		System.out.println("7���ֵĴ���"+qi);
		System.out.println("9���ֵĴ���"+jiu);
		System.out.println("8���ֵĴ���"+ba);

		
		
		
		
		
		
		
		
		
	}
}
