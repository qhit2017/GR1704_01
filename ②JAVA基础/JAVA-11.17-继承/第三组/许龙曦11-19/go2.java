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
		System.out.println("狗的品种是"+getPinzhong()+",毛的颜色是"+getYanse()+"今年"+getNianling()+"岁"+",重量是"+getZhongliang()+",公斤");
		   
		System.out.println("它是一条"+getJingquan()+",它的最快时速是"+getShisu()+"他有："+getTueideshuliang()
				+"条腿，它的眼睛颜色是："+getYanjingyanse());
	}
	public void work(){
		System.out.println("我的工作是:帮助警察");
	}

}
