package zy;

import java.util.Scanner;

/*
 * ��������С��x,y,z��������������ɴ�С�����
 */
public class zye1 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			System.out.println("������X��ֵ");
			double x = sc.nextDouble();
			System.out.println("������Y��ֵ");
			double y = sc.nextDouble();
			System.out.println("������Z��ֵ");
			double z = sc.nextDouble();
			double max=0;
			if(x>=y){
				max=x;
			}else{
				max=y;y=x;
			}
			if(max<=z){
				System.out.println(z+">"+max+">"+y);
			}else{
				if(z>=y){
					System.out.println(max+">"+z+">"+"y");
				}else{
					System.out.println(max+">"+y+">"+"z");
				}
			}
		
		}
				
	}
	

