package zuoye;

import java.io.ObjectInputStream.GetField;

public class go2 extends go {

	private String jingquan;
	private int shisu ;
	
	public String getJingquan() {
		return jingquan;
	}

	public void setJingquan(String jingquan) {
		this.jingquan = jingquan;
	}

	public int getShisu() {
		return shisu;
	}

	public void setShisu(int shisu) {
		this.shisu = shisu;
	}

	public void xinxi (){
		System.out.println("����Ʒ����"+getPinzhong()+",ë����ɫ��"+getYanse()+"����"+getNianling()+"��"+",������"+getZhongliang()+",����");
		   
		System.out.println("����һ��"+getJingquan()+",�������ʱ����"+getShisu()+"���У�"+getTueideshuliang()
				+"���ȣ������۾���ɫ�ǣ�"+getYanjingyanse());
	}
	public void work(){
		System.out.println("�ҵĹ�����:��������");
	}

}
