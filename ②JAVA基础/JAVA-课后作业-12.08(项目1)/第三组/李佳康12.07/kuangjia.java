import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class kuangjia {
		public static void main(String[] args) {
			List<shangpin> list =new ArrayList<shangpin>();
			List<jilu> list2 = new ArrayList<jilu>();
			Scanner sc = new Scanner(System.in);
			while(true){
				System.out.println("�밴����1   ������Ʒ2   ����3   ����4   �ο����5  ������¼6  ���ۼ�¼7 �˳�ϵͳ ");
				int i = sc.nextInt();
				if(i==1){
					System.out.println("¼����Ʒ��Ϣ��������Ʒ��š����ơ��������۸�");
					String str = sc.next();
					String[] arr = str.split(",");
					shangpin a = new shangpin();
					a.setBianhao(Integer.parseInt(arr[0]));
					a.setName(arr[1]);
					a.setShuliang(Integer.parseInt(arr[2]));
					a.setJiage(Integer.parseInt(arr[3]));
					list.add(a);
					System.out.println("��ӳɹ�");
				}else if(i==2){
					System.out.println("������Ʒ��ź�����");
					String str = sc.next();
					String[] arr = str.split(",");
					boolean c = true;
					for(shangpin b:list){
						if(b.getBianhao()==Integer.parseInt(arr[0])){
							b.setShuliang(b.getShuliang()+Integer.parseInt(arr[1]));
							jilu d = new jilu();
							d.setBianhao(b.getBianhao());
							d.setJiage(b.getJiage());
							d.setName(b.getName());
							d.setShuliang(b.getShuliang());
							d.setJinhuoshuliang(Integer.parseInt(arr[1]));
							list2.add(d);
							c=false;
							System.out.println("�����ɹ�");
						}
					}
					if(c){
						System.out.println("����ʧ��");
					}
				}else if(i==3){
					System.out.println("������Ʒ��ź�����");
					String str = sc.next();
					String[] arr = str.split(",");
					boolean c = true;
					for(shangpin b:list){
						if(b.getBianhao()==Integer.parseInt(arr[0])&&b.getShuliang()>=Integer.parseInt(arr[1])){
							b.setShuliang(b.getShuliang()-Integer.parseInt(arr[1]));
							jilu d = new jilu();
							d.setBianhao(b.getBianhao());
							d.setJiage(b.getJiage());
							d.setName(b.getName());
							d.setShuliang(b.getShuliang());
							d.setXiaoshoushuliang(Integer.parseInt(arr[1]));
							list2.add(d);
							c=false;
							System.out.println("���۳ɹ�");
						}
					}
					if(c){
						System.out.println("����ʧ��");
					}
				}else if(i==4){
					for(shangpin b:list){
						b.info();
					}
				}else if(i==5){
					System.out.println("������¼��");
					for(jilu b:list2){
						if(b.getJinhuoshuliang()>0)
						b.info1();
					}
				}else if(i==6){
					System.out.println("���ۼ�¼��");
					for(jilu b:list2){
						if(b.getXiaoshoushuliang()>0){
							b.info2();
						}
					}
				}else if(i==7){
					System.out.println("�˳�ϵͳ");break;	
				}else{
					System.out.println("����������ֲ���ȷ");
				}	
			}
		}
}
