package chenjuncheng;

public class tixing implements xingzhuang{

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println();
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println();
	}

	private  int  shangbianchang;
	private   int  xiabianchang;
	private  int   gao;
	private  int zhouchang;
	private  int mianji;
	public int getShangbianchang() {
		return shangbianchang;
	}

	public void setShangbianchang(int shangbianchang) {
		this.shangbianchang = shangbianchang;
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
	public void  tixing(){
		System.out.println("上边长是"+shangbianchang+"下边长"+xiabianchang+"高"+gao+"面积"+mianji);
	}
	
	
}
