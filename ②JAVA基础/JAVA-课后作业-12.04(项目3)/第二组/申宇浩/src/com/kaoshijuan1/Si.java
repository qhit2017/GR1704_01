package com.kaoshijuan1;

import java.util.List;
import java.util.Scanner;

public  class Si implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����뿼����Ϣ��ʾ��������,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
		String a=sc.next();
		Er s=new Er();
		String []sz=a.split(",");
		s.setName(sz[0]);
		s.setBianhao(Integer.parseInt(sz[1]));
		s.setYu(Integer.parseInt(sz[2]));
		s.setShu(Integer.parseInt(sz[3]));
		s.setYing(Integer.parseInt(sz[4]));
		s.setZongchengji(Integer.parseInt(sz[2])+
				Integer.parseInt(sz[3])+Integer.parseInt(sz[4]));
		jihe.add(s);
	}

	@Override
	public void er(List<Er>jihe) {
		// TODO Auto-generated method stub
		for(Er j:jihe){
			j.info();
		}
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����Ӳ˵���");
		while(true){
			System.out.println("������1����ӡ�ܷ���߷֣�2����ӡ��ѧ��߷֣�"
					+ "3����ӡ������߷֣�4����ӡӢ����߷֣�5���˳�");
			int i1=sc.nextInt();
			if(i1==1){
				System.out.println("�ܷ���߷��ǣ�");
				int maxzong=0;
				for(Er j:jihe){
				if(maxzong<j.getZongchengji()){
					maxzong=j.getZongchengji();
				}
				}
				System.out.println(maxzong);
			}else if(i1==2){
				System.out.println("��ѧ��߷��ǣ�");
				int maxshu=0;
				for(Er j:jihe){
					if(maxshu<j.getShu()){
						maxshu=j.getShu();
					}
				}
				System.out.println(maxshu);
			}else if(i1==3){
				System.out.println("������߷��ǣ�");
				int maxyu=0;
				for(Er j:jihe){
					if(maxyu<j.getYu()){
						maxyu=j.getYu();
					}
				}
				System.out.println(maxyu);
			
			
			
		}else if(i1==4){
			System.out.println("Ӣ����߷��ǣ�");
			int maxying=0;
			for(Er j:jihe){
				if(maxying<j.getYing()){
					maxying=j.getYing();
				}
			}
			System.out.println(maxying);
		
		
	}else if(i1==5){
		System.out.println("������һ����");
		break;
	}else{
		System.out.println("���ֲ��淶��������");
	}
}
	}

}
