
public class  Sudent extends Person {
	
	private String zhuanye;
	private String xuexiao;
	
	

	public String getZhuanye() {
		return zhuanye;
	}



	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}



	public String getXuexiao() {
		return xuexiao;
	}



	public void setXuexiao(String xuexiao) {
		this.xuexiao = xuexiao;
	}



	@Override
	public void getContent() {
		System.out.println("我叫"+getName()+"我在"+getXuexiao()+"学的是"+getZhuanye());
		// TODO Auto-generated method stub
		
	}

}
