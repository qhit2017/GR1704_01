package zuoye;

public class t3 {
	private int tuishu;
	
	private String yanjingyanse;

	public int getTuishu() {
		return tuishu;
	}

	public void setTuishu(int tuishu) {
		this.tuishu = tuishu;
	}

	public String getYanjingyanse() {
		return yanjingyanse;
	}

	public void setYanjingyanse(String yanjingyanse) {
		this.yanjingyanse = yanjingyanse;
	}
	
	public void dong(){
		System.out.println("我有"+tuishu+"，我的眼睛是"+yanjingyanse);
	}

}
