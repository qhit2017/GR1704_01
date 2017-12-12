import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;


public class work {
		public static void main(String[] args) {
			List<people> list = new ArrayList<people>();
			Scanner sc = new Scanner(System.in);
			Random b = new Random();
			int i=0;
			boolean x =true;
			while(x){
			System.out.println("请开始添加随机筛选的人员，添加完毕后输入：添加完毕。");
			String name =sc.next();	
			if(name.equals("添加完毕")){                                                                       
				x=false; 
				System.out.println("添加完毕，准备开始");
				break;
			}
			people a= new people();
			a.setName(name);
			list.add(a);
			System.out.println("添加成功");
			}
			System.out.println("请输入需要随机选出的人数。");
			int f = sc.nextInt();
			for(int d=0;d<f;d++){
				int c =b.nextInt(list.size());
				list.get(c).info();
				list.remove(c);
			}
		}
}
