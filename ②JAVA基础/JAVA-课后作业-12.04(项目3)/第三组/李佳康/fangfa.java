import java.util.List;
import java.util.Scanner;


public class fangfa implements jiekou {

	@Override
	public void tianjia(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ���� Ϣ(����С��,���5,(���ĳɼ�)89,(��ѧ�ɼ�)18,(Ӣ��ɼ�)44)��");
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
		System.out.println("¼��ɹ�!�ܳɼ�Ϊ��"+sum);
	}

	@Override
	public void chaxun(List<student> list) {
		// TODO Auto-generated method stub
		System.out.println("��ѯ�ɹ���");
		for(student i:list){
			i.info();
		}
	}

	@Override
	public void max(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("1.��ӡ�ܷ���߷� \n2.��ӡ��ѧ��߷�\n3.��ӡ������߷�\n4.��ӡӢ����߷�\n5.�˳�");
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
				System.out.println("����ܷ�Ϊ��"+max);
			}else if(i==2){
				int max =Integer.parseInt(list.get(0).getShuxue());
				for(int j = 1;j<list.size();j++){
				if(max<=Integer.parseInt(list.get(j).getShuxue())){
					 max = Integer.parseInt(list.get(j).getShuxue());		
				}
				}
				System.out.println("��ѧ��߷�Ϊ��"+max);
			}else if(i==3){
				int max =Integer.parseInt(list.get(0).getChina());
				for(int j = 1;j<list.size();j++){
				if(max<=Integer.parseInt(list.get(j).getChina())){
					 max = Integer.parseInt(list.get(j).getChina());							
				}
				}
				System.out.println("������߷�Ϊ��"+max);
			}else if(i==4){
				int max =Integer.parseInt(list.get(0).getYingyu());
				for(int j = 1;j<list.size();j++){
					if(max<=Integer.parseInt(list.get(j).getYingyu())){
					 max = Integer.parseInt(list.get(j).getYingyu());
					}
				}
				System.out.println("Ӣ����߷�Ϊ��"+max);
			}else if(i==5){
				System.out.println("������һ�㡣");
				break;
			}
			}
	}

}
