package zy;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/*
 * �������java�����Ծ�1����Ŀ
 */
public class khzy {
	public static void main(String[] args) {
		List<khzy2> list=new ArrayList<khzy2>();
		Scanner sc=new Scanner(System.in);
	    while(true){
	    	System.out.println("�����룺1¼��ѧ���߿���Ϣ2��ʾ����ѧ����Ϣ3��ѯ��߷֣��������ܷ���ߺ͵�����߷�4�������");
	    	int i=sc.nextInt();
	    	if(i==1){
	    		System.out.println("���ѧ������ʽ�ǣ�����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
	    		String str=sc.next();
	    		String arr[]=str.split(",");
	    		khzy2 a=new khzy2();
	    		a.setXingming(arr[0]);
	    		a.setBianhao(arr[1]);
	    		a.setYuwen(Integer.parseInt(arr[2]));
	    		a.setShuxue(Integer.parseInt(arr[3]));
	    		a.setYingyu(Integer.parseInt(arr[4]));
	    		list.add(a);
	    		System.out.println("��ӳɹ�");
	    	}else if(i==2){
	    		for(khzy2 e:list){
	    			e.info();
	    		}
	    	}else if(i==3){
	    		while(true){
	    			System.out.println("������1��ӡ�ܷ���߷�2��ӡ������߷�3��ӡ��ѧ��߷�4��ӡӢ����߷�5������һ��");
	    			int x=sc.nextInt();
	    			if(x==1){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getYuwen()+a.getShuxue()+a.getYingyu()){
	    						max=a.getYuwen()+a.getShuxue()+a.getYingyu();
	    					}
	    				}
	    				System.out.println("�ܷ���߷��ǣ�"+max);
	    			}else if(x==2){
	    				int max=0;
	    				for(khzy2 b:list){
	    					if(max<b.getYuwen()){
	    						
	    					}
	    				}
	    				System.out.println("������߷���"+max);
	    			}else if(x==3){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getShuxue()){
	    						
	    					}
	    				}
	    				System.out.println("��ѧ��߷���"+max);
	    			}else if(x==4){
	    				int max=0;
	    				for(khzy2 a:list){
	    					if(max<a.getYingyu()){
	    						max=a.getYingyu();
	    					}
	    				}
	    				System.out.println("Ӣ����߷���"+max);
	    			}else if(x==5){
	    				System.out.println("������һ��");
	    				break;
	    			}else{
	    				System.out.println("���������������");
	    			}
	    		}
	    		
	    	}else if(i==4){
	    		System.out.println("�������");
	    		break;
	    	}else {
	    		System.out.println("������淶������");
	    	}
	    }
		
		
		
	}
}
