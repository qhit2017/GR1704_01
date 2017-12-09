package com.lianxi;

import java.util.Arrays;
import java.util.Scanner;

public class lianxi7 {
	
	public static void main(String[] args) {
		//从键盘接收3个数，输出较大的那个数
		Scanner sc=new Scanner(System.in);
		int c=sc.nextInt();
		int q=sc.nextInt();
		int a=sc.nextInt();
		if(c>q&&q>a){
			System.out.println(c);
		}else  if(c>a&&a>q){
			System.out.println(c);
		}else  if(a>c&&c>q){
			System.out.println(a);
		}else  if(a>q&&q>c){
			System.out.println(a);
		}else  if(q>a&&a>c){
			System.out.println(q);
		}else  if(q>c&&c>a){
			System.out.println(q);
		}
		
			
			
			
		}
		
		
		
	}

