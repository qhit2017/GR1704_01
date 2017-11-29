package kehou;

public class tixing implements xingzhuang{
	private int sbianchang;
	
	private int xiabianchang;
	
	private int gao;
	
	private int zhouchang;
	
	private int mianji;

	public int getShangbianchang() {
		return sbianchang;
	}

	public void setShangbianchang(int shangbianchang) {
		this.sbianchang = shangbianchang;
	}

	public int getXiabianchang() {
		return xiabianchang;
	}

	public void setXiabianchang(int xiabianchang) {
		this.xiabianchang = xiabianchang;
	}

	public int getGao() {
		return gao;
	}

	public void setGao(int gao) {
		this.gao = gao;
	}

	public int getZhouchang() {
		return zhouchang;
	}

	public void setZhouchang(int zhouchang) {
		this.zhouchang = zhouchang;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长是："+zhouchang);
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("面就是："+mianji);
	}

	
	

	

}
