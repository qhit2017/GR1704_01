
public class Jdog extends Dog{
	private int zuikuaishishu;
	private String work;

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public int getZuikuaishishu() {
		return zuikuaishishu;
	}

	public void setZuikuaishishu(int zuikuaishishu) {
		this.zuikuaishishu = zuikuaishishu;
	}
	
	public void work(){
		System.out.println("我的工作是："+getWork()
				+",最快时速是："+zuikuaishishu);
	}
	
	

}
