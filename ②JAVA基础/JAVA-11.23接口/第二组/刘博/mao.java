package f1;

public class laoshu implements pingzhong{
private String xingming;
private String pinzhong;
private String yanse;
private int tiaotuei;
private int tizhong;
	
	
	public laoshu(String xingming,String pingzhong){
		
		System.out.println(xingming+","+pingzhong);
	}
	
	
	public String getXingming() {
	return xingming;
}

public void setXingming(String xingming) {
	this.xingming = xingming;
}

public String getPinzhong() {
	return pinzhong;
}

public void setPinzhong(String pinzhong) {
	this.pinzhong = pinzhong;
}

public String getYanse() {
	return yanse;
}

public void setYanse(String yanse) {
	this.yanse = yanse;
}

public int getJitiaotuei() {
	return jitiaotuei;
}

public void setJitiaotuei(int jitiaotuei) {
	this.jitiaotuei = jitiaotuei;
}

public int getTizhong() {
	return tizhong;
}

public void setTizhong(int tizhong) {
	this.tizhong = tizhong;
}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("³Ô·¹..");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("ß÷...");
	}

}
