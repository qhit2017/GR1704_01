package fuxi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class С��Ŀ2 {
	/*
	 * 1��¼�뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�
2����ʾ���п�����Ϣ������������š����ġ���ѧ��Ӣ��ɼ����ܳɼ�
3�����û�ѡ��3ʱ������ʾһ���Ӳ˵���
1	��ӡ�ܷ���߷�
2	��ӡ��ѧ��߷�
3	��ӡ������߷�
4	��ӡӢ����߷�
5	�˳�
   �����Ӧ��������ʾ��Ӧ����������5���˳���������
4���˳����ܿ����˳�ϵͳ

	 */
	
	public static void main(String[] args) {
		List<student>list=new ArrayList<student>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1��¼�뿼����Ϣ2����ʾ���п�����Ϣ3.�����Ӳ˵�,��ѯ������߷��Լ��ܷ���߷�4.�˳�ϵͳ");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("�����뿼����Ϣ:��������š����ġ���ѧ��Ӣ��ɼ�"
						+ "����:����,170,59,86,58");
				String str =sc.next();
				String arr[]=str.split(",");
				student a=new student();
				a.setBianhao(Integer.parseInt(arr[1]));
				a.setName(arr[0]);
				a.setShuxue(Integer.parseInt(arr[2]));
				a.setYingyu(Integer.parseInt(arr[3]));
				a.setYuwen(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("����ɹ�");
			}else if(i==2){
				System.out.println("��ʾ���п�����Ϣ");
				for(student a:list){
					a.info();
				}
			}else if(i==3){
				System.out.println("�����Ӳ˵���1��ѯ������߳ɼ�2.��ѯ��ѧ��߷�3.��ѯӢ����߷�4.��ѯ�ܷ���߷�5.������ҳ��");
				while(true){
					int e=sc.nextInt();
					
					if(e==1){
						int max=0;String name="";
						System.out.println("��ѯ������߷�");
						for(student a:list){
							if(a.getYuwen()>max){
								max=a.getYuwen();
								name=a.getName();
							}
						}
						System.out.println(name+"��������߷֣�"+max);
					}else if(e==2){
						int max=0; String name="";
						System.out.println("��ѯ��ѧ��߷�");
						for(student q:list){
							if(q.getShuxue()>max){
								max=q.getShuxue();
								name=q.getName();
							}
						}
						System.out.println("��ѧ��߷���"+name+max+"��");
					}else if(e==3){
						int max=0;String name="";
						System.out.println("��ѯӢ����߷�");
						for(student w:list){
							if(max<w.getYingyu()){
								max=w.getYingyu();
								name=w.getName();
							}
						}
						System.out.println("Ӣ����߷��ǣ�"+name+max+"��");
					}else if(e==4){
						int max=0;String name="";
						System.out.println("��ѯ�ܷ���߷�");
						for(student k:list){
							if(max<k.getShuxue()+k.getYingyu()+k.getYuwen()){
								max=k.getShuxue()+k.getYingyu()+k.getYuwen();
								name=k.getName();
							}
						}
						System.out.println("�ܷ�����ǣ�"+name+"����"+max+"��");
					}else if(e==5){
						System.out.println("������ҳ��");break;
					}else{
						System.out.println("�������������������������");
					}
				}
			}else if(i==4){
				System.out.println("�������");break;
			}
		}
	}
}
