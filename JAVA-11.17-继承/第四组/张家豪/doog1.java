package ��ĩ��ҵ;

public class doog1 extends ����{
	private String pinzhong;
	
	private String maodeyanse;
	
	private int nianling;
	
	private int zhongliang;
	
	public void run(){
	

	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public String getMaodeyanse() {
		return maodeyanse;
	}

	public void setMaodeyanse(String maodeyanse) {
		this.maodeyanse = maodeyanse;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public int getZhongliang() {
		return zhongliang;
	}

	public void setZhongliang(int zhongliang) {
		this.zhongliang = zhongliang;
	}
	
	public void xinxi(){
		System.out.println("��Ʒ�֣�"+pinzhong+",������ɫ:"+maodeyanse+",��������:"+nianling+",��������:"+zhongliang);
}
	public void xixing(String xixing){
		if(xixing.equals("�໽�")){
			System.out.println("ϲ���໽�");
		}else if(xixing.equals("�Զ���")){
			System.out.println("ϲ������");
		}else if(xixing.equals("˯��")){
			System.out.println("�ŵ�˯");
		}
		
	}
	
}


	


