package zuoye;

public class t1 extends t3{
	private String pingzong;
	
	private String yanse;
	
	private int nianling;
	
	private int zhongliang;

	public String getPingzong() {
		return pingzong;
	}

	public void setPingzong(String pingzong) {
		this.pingzong = pingzong;
	}

	public String getYanse() {
		return yanse;
	}

	public void setYanse(String yanse) {
		this.yanse = yanse;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public int getZhongliang() {
		return zhongliang;
	}

	public void setZhongliang(int zhongliang) {
		this.zhongliang = zhongliang;
	}
	
	public void gou (){
		System.out.println("�ҵ�Ʒ���ǣ�"+pingzong+"��"+yanse+"��ɫ��"+
	"������"+nianling+"�꣬�ҵ�������:"+zhongliang+"��"+"����ϲ�������У�����˯���ͳԷ�");
	}

}
