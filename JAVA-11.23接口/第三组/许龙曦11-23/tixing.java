package f1;

public class tixing implements xingzhuang {


	private int shangbianshang;
	private int xiabianchang;
	private int gao;
	private int zhouchang;
	private int mianji;



public int getShangbianshang() {
		return shangbianshang;
	}

	public void setShangbianshang(int shangbianshang) {
		this.shangbianshang = shangbianshang;
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
public void zc() {
	// TODO Auto-generated method stub
	System.out.println("上边为"+getShangbianshang()+"下边为"+
getXiabianchang()+"的梯形，周长为"+getZhouchang());
}

@Override
public void mj() {
	// TODO Auto-generated method stub
	System.out.println("上边为"+getShangbianshang()+"下边为"+getXiabianchang()+"的梯形，面积为"+getMianji());
}


}