package com.yu;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		Scanner sc = new Scanner(System.in);
		while (true){
			System.out.println("�밴��:1.¼��ѧ����Ϣ2.��ʾ����ѧ����Ϣ3.��ѯ��߷�4.ֹͣ");
			int num =sc.nextInt();
			if(num==1){
				System.out.println("������ѧ����Ϣ��ʽ�ǣ�����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
				String str=sc.next();
				String[]arr=str.split(",");
				
				Student s=new Student();
				s.setName(arr[0]);
				s.setBianhao(arr[1]);
				s.setChinese(Integer.parseInt(arr[2]));
				s.setMath(Integer.parseInt(arr[3]));
				s.setEnglish(Integer.parseInt(arr[4]));
				list.add(s);
				System.out.println("��ӳɹ�");
			}else if(num==2){
				System.out.println("��ʾ����ѧ����Ϣ");
				for(Student a :list){
					a.info();
				}
			}else if(num==3){
				while(true){
					System.out.println("1.��ѯ�ܷ���߷֣�2.������߷֣�3.��ѧ��߷֣�4.Ӣ����߷�5.������һ��");
					int x=sc.nextInt();
					if(x==1){
						int max=0;
						for(Student i:list){
							if(max<i.getChinese()+i.getEnglish()+i.getMath()){
								max=i.getChinese()+i.getEnglish()+i.getMath();
							}
						}
						System.out.println("��ѯ�ܷ���߷�"+max);
					}else if(x==2){
						int max=0;
						for(Student b:list){
							if(max<b.getChinese()){
								max=b.getChinese();
							}
						}
						System.out.println("������߷�"+max);
					}else if(x==3){
						int max=0;
						String name="";
						for(Student c:list){
							if(max<c.getMath()){
								max=c.getMath();
								name=c.getName();
							}else if(max==c.getMath()){
								max=c.getMath();
								name=c.getName();
							}
						}
						System.out.println("��ѧ��߷�"+max+"����������"+name);
					}else if(x==4){
						int max=0;
						for(Student d:list){
							if(max<d.getEnglish()){
								max=d.getEnglish();
							}
						}
						System.out.println("Ӣ����߷�"+max);
					}else if(x==5){
						System.out.println("������һ��");
					break;
					}else{
						System.out.println("����������ֲ��淶");
					}
				}
			}else if(num==4){
				System.out.println("ֹͣ");
				break;
			}else{
				System.out.println("����������ֲ��淶������������");
			}
		}
	}

}
