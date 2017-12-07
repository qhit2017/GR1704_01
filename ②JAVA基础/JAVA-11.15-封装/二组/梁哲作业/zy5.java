package zy;
/*
 * 输出1~1000之间，以3、6、9结尾的数
 */
public class zy5 {
	public static void main(String[] args) {
		
		for(int i =1;i<=1000;i++){
			if(i%10==3||i%10==6||i%10==9){
					System.out.println(i);
				}	
			}
		}
	}
