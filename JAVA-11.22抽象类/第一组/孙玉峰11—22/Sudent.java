package zuoye2;

public class Sudent extends Person {
	private  String  xuexiao;
	private  String  xuesheng;
	public String getXuexiao() {
		return xuexiao;
	}
	public void setXuexiao(String xuexiao) {
		this.xuexiao = xuexiao;
	}
	public String getXuesheng() {
		return xuesheng;
	}
	public void setXuesheng(String xuesheng) {
		this.xuesheng = xuesheng;
	}
	@Override
	public void getContent() {
		// TODO Auto-generated method stub
		System.out.println("�ҽ�"+getMingzi()+",����"+getXuexiao()
				+"��"+getXuesheng());
	}
	
 
}
