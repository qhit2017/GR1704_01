import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class project {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<kaoshixinxi> list=new ArrayList<kaoshixinxi>();
			while(true){
				System.out.println("�밴�� 1��¼�뿼���ĸ߿���Ϣ 2����ʾ���п�����Ϣ 3����ѯ��߷֣��������ܷ���߷ֺ͵�����߷� 4���������");
				int i = sc.nextInt();
				if(i==1){
					System.out.println("�����뿼������");
					String xingming=sc.next();
					System.out.println("��������");
					String bianhao=sc.next();
					System.out.println("���������ĳɼ�");
					int yuwen=sc.nextInt();
					System.out.println("��������ѧ�ɼ�");
					int shuxue=sc.nextInt();
					System.out.println("������Ӣ��ɼ�");
					int yingyu=sc.nextInt();
					
					kaoshixinxi a =new kaoshixinxi();
					a.setXingming(xingming);
					a.setBianhao(bianhao);
					a.setYuwen(yuwen);
					a.setShuxue(shuxue);
					a.setYingyu(yingyu);
					list.add(a);
					System.out.println("��ӳɹ�");
				}else if(i==2){
				  for(kaoshixinxi x:list){
					  x.xinxi();
				  }
				}else if(i==3){
					while(true){
						System.out.println("��ѡ��1����ӡ�ܷ���߷� 2����ӡ��ѧ��߷� 3����ӡ������߷� 4����ӡӢ����߷� 5���˳�");
						int y =sc.nextInt();
						if(y==1){
							int max =0;
							for(kaoshixinxi u:list){
								if(u.getYuwen()+u.getShuxue()+u.getYingyu()>max){
									max=u.getYuwen()+u.getShuxue()+u.getYingyu();
								}
							}
							System.out.println("�ܷ���"+max);
						}else if(y==2){
							int max =0;
							String xingming="";
							for( kaoshixinxi a:list){
								if(max<a.getShuxue()){
									max=a.getShuxue();
									xingming =a.getXingming();
								}
							}
							System.out.println("��ѧ��߷���"+max+",����������"+xingming);
						}else if(y==3){
							int t =0;
							for(kaoshixinxi z:list){
								if(t<z.getYuwen()){
									t=z.getYuwen();
								}
							}
							System.out.println("������߷���"+t);
						}else if(y==4){
							int p =0;
							for(kaoshixinxi o:list){
								if(p<o.getYingyu()){
									p=o.getYingyu();
								}
							}
							System.out.println("Ӣ����߷���"+p);
						}else if(y==5){
							System.out.println("�˳�");
							break;
						}else{
							System.out.println("����������ֲ���ȷ");
						}
					}
							
					System.out.println("��ѯ��߷�");
				}else if(i==4){
					System.out.println("�������");
					break;
				}else{
					System.out.println("����������ֲ���ȷ");
				}
			}
		}
		
	}
	

