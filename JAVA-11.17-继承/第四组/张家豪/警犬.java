package 周末作业;

public class 警犬   extends doog1{
	private int zuikuaishisu;

	public int getZuikuaishisu() {
		return zuikuaishisu;
	}

	public void setZuikuaishisu(int zuikuaishisu) {
		this.zuikuaishisu = zuikuaishisu;
	}
	
	public void work(){
		System.out.println("腿的数量:"+getTuideshuliang()+",眼睛颜色:"+getYanjingyanse()+",品种:"+getPinzhong()+",毛的颜色:"+getMaodeyanse()+",年龄:"+getNianling()+",重量:"+getZhongliang()+",最快时速:"+getZuikuaishisu());

}
}

