package f1;

public class gou implements dongwu{

	private String xinaming;
	private String pinzhong;
	private String yanse;
	private int nianling;

	public String getXinaming() {
		return xinaming;
	}

	public void setXinaming(String xinaming) {
		this.xinaming = xinaming;
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

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("����"+getXinaming()+"��"+getPinzhong()+"ë������ɫ��"+getYanse()+"����"+getNianling()+"��");
		System.out.println("ϲ���Թ�ͷ");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("������...");
	}

}
