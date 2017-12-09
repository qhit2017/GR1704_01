import java.util.List;
import java.util.Scanner;


public class fangfa implements jiekou {

	@Override
	public void tianjia(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生信 息(例：小明,编号5,(语文成绩)89,(数学成绩)18,(英语成绩)44)：");
		String str = sc.next();
		String[] arr = str.split(",");
		student a = new student();   
		a.setName(arr[0]);
		a.setBianhao(arr[1]);
		a.setChina(arr[2]);
		a.setShuxue(arr[3]);
		a.setYingyu(arr[4]);
		int b = Integer.parseInt(arr[2]);
		int c = Integer.parseInt(arr[3]);
		int d = Integer.parseInt(arr[4]);
		int sum =b+c+d;
		a.setSum(sum);
		list.add(a);
		System.out.println("录入成功!总成绩为："+sum);
	}

	@Override
	public void chaxun(List<student> list) {
		// TODO Auto-generated method stub
		System.out.println("查询成功：");
		for(student i:list){
			i.info();
		}
	}

	@Override
	public void max(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("1.打印总分最高分 \n2.打印数学最高分\n3.打印语文最高分\n4.打印英语最高分\n5.退出");
		student a = new student();
			while(true){
				int i = sc.nextInt();
			if(i==1){
				int max =list.get(0).getSum();
				for(int j = 1;j<list.size();j++){
				if(max<=list.get(j).getSum()){
					 max = list.get(j).getSum(); 		
				}
				}
				System.out.println("最高总分为："+max);
			}else if(i==2){
				int max =Integer.parseInt(list.get(0).getShuxue());
				for(int j = 1;j<list.size();j++){
				if(max<=Integer.parseInt(list.get(j).getShuxue())){
					 max = Integer.parseInt(list.get(j).getShuxue());		
				}
				}
				System.out.println("数学最高分为："+max);
			}else if(i==3){
				int max =Integer.parseInt(list.get(0).getChina());
				for(int j = 1;j<list.size();j++){
				if(max<=Integer.parseInt(list.get(j).getChina())){
					 max = Integer.parseInt(list.get(j).getChina());							
				}
				}
				System.out.println("语文最高分为："+max);
			}else if(i==4){
				int max =Integer.parseInt(list.get(0).getYingyu());
				for(int j = 1;j<list.size();j++){
					if(max<=Integer.parseInt(list.get(j).getYingyu())){
					 max = Integer.parseInt(list.get(j).getYingyu());
					}
				}
				System.out.println("英语最高分为："+max);
			}else if(i==5){
				System.out.println("返回上一层。");
				break;
			}
			}
	}

}
