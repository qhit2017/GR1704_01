package we;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test {

	public static void main(String[] args) {
		List<goods>list=new ArrayList<goods>();
		Scanner sc=new Scanner(System.in);
		while (true){
			System.out.println("1������Ʒ2����3����4�鿴���5�˳�����");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("1������Ʒ�磺123,����,1,120");
				goods i=new goods();
				String str=sc.next();
				String []arr=str.split(",");
				i.setBianhao(arr[0]);
				i.setName(arr[1]);
				i.setPrice(Integer.parseInt(arr[2]));
				i.setNumber(Integer.parseInt(arr[3]));
				list.add(i);
				System.out.println("�����ɹ�");
			}else if(a==2){
				System.out.println("������ :123 ,ag,120");
				String str =sc.next();
				String[]arr=str.split(",");
				String bianhao =arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean flag= true;
				for(goods s:list ){
					if(bianhao.equals(s.getBianhao())){
					s.setNumber(s.getNumber()+count);
					flag =false;
					System.out.println("����"+count);
						break;
					}                  
					}				
			}else if(a==3){
				System.out.println("����");
				String name=sc.next();
				for(int i=0;i<list.size();i++){
					goods s=list.get(i);
					if(name.equals(s.getName())){
						list.remove(s);
						System.out.println("���۳ɹ�");
						break;
					}
				}
				
			}else if(a==4){
				System.out.println("�鿴���");
				
				for(goods q:list){
					q.inof();
				}
			}else if(a==5){
				System.out.println("�˳�");
				break;
			}
		}
	}
		}
