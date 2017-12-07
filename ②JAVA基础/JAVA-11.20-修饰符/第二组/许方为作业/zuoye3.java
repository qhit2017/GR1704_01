package com.yushengjie;

import java.util.Scanner;

import javax.swing.plaf.synth.SynthScrollPaneUI;

import org.omg.Messaging.SyncScopeHelper;
 
 /*输入三个小数x,y,z，请把这三个数由大到小输出。
 */
public class Work3 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		System.out.println("请输入小数x：");
		double x = sc.nextDouble();
		System.out.println("请输入小数y：");
		double y = sc.nextDouble();
		System.out.println("请输入小数z：");
		double z = sc.nextDouble();
		
		for(int i=0;i>=0;i++){
 			x--;
 			y--;
 			z--;
		
		if(x==0&&y!=0&&z!=0){
			System.out.println("x");
			
		}else if(y==0&&x!=0&&z!=0){
			System.out.println("y");
			
		}else if(z==0&&x!=0&&y!=0){
			System.out.println("z");
			
		}
		
		
		}		
	

}

}