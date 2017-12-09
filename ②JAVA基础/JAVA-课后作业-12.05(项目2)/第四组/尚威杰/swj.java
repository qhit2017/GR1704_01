import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class swj {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<tongxunxinxi>list = new ArrayList<tongxunxinxi>();
		while(true){
			System.out.println("请按键：1：录入通讯录信息 2：显示所有通讯信息 3：姓名搜索 4：性别搜索 5：电话搜索 6：退出功能");
			int i =sc.nextInt();
			if(i==1){
				System.out.println("请输入姓名");
				String xingming =sc.next();
				System.out.println("请输入性别");
				String xingbie = sc.next();
				System.out.println("请输入电话号码");
				String dianhua = sc.next();
				
				tongxunxinxi a = new tongxunxinxi();
				a.setXingming(xingming);
				a.setXingbie(xingbie);
				a.setDianhua(dianhua);
				list.add(a);
				System.out.println("添加完成");
						
			}else if(i==2){
				for(tongxunxinxi o:list){
					o.xinxi();
				}
			}else if(i==3){
				System.out.println("姓名搜索");
			}else if(i==4){
				System.out.println("性别搜索");
			}else if(i==5){
				System.out.println("电话搜索");
			}else if(i==6){
				System.out.println("退出功能");
				break;
			}else{
				System.out.println("你输入的数字不正确");
			}
		}
		
	}
}
	
	
	
