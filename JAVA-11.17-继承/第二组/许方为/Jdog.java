
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
		System.out.println("�ҵĹ����ǣ�"+getWork()
				+",���ʱ���ǣ�"+zuikuaishishu);
	}
	
	

}
