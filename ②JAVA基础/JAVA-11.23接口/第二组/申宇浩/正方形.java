package com.w1;

public class 正方形  implements 形状{

	private int bianchang;
	
	正方形(){
		
	}
	正方形(int bianchang){
		this.bianchang=bianchang;
	}
	
	
	
	
	
	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println((bianchang+bianchang+bianchang+bianchang));
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println(bianchang*bianchang);
	}

}
