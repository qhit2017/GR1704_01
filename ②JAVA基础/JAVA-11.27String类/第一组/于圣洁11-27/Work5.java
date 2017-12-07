package com.shengjie;

import java.util.Scanner;

import org.omg.Messaging.SyncScopeHelper;
/*控制台输出：
1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止
(2)当选择1的时候，输出添加学生成功，然后再输出
 1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止
(3) 当选择2的时候，输出查询结果已发送给您，然后再输出：
 1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止
(4) 当选择4的时候，输出删除学生成功，然后再输出
 1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止
(5)当选择5的时候，输出系统关闭，然后循环结束
(6)当输入其他数的时候，提示您输入的数字不对，然后输出：
 1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止
*/
public class Work5 {
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		for(;;){
			System.out.println("1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止");
			int a=sc.nextInt();
			switch(a){
			case 1:System.out.println("添加学生成功");continue;
			case 2:System.out.println("查询结果已发给您");continue;
			case 3:System.out.println("修改学生信息");continue;
			case 4:System.out.println("删除学生成功");continue;
			case 5:System.out.println("系统关闭");break;
			default:System.out.println("您输入的数字不对");
			
			
		}
	
		}

}

	
}