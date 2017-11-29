package chenjuncheng;

public  class zhengfangxing implements xingzhuang{

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println(4*bianchang);
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println(bianchang*bianchang);
	}
	private  int  bianchang;
	private  int zhouchang;
	private int mianji;
	public int getBianchang() {
		return bianchang;
	}

	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
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
	
	public void zhengfangxing(){
		
	}
	public void zhengfangxing(int bianchang){
		this.bianchang=bianchang;
	}
	
}
