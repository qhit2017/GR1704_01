// ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
//    Ҫ������˽�У����ṩget��set���� 
public class Dog extends Dongwu{

	private String pingzhong;
	private String color;
	private int nianling;
	private int zhongliang;
	
	public String getPingzhong() {
		return pingzhong;
	}
	public void setPingzhong(String pingzhong) {
		this.pingzhong = pingzhong;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
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
	
	
	public void jiao(){
		
	}
	public void chi(){
		System.out.println("����"+pingzhong+"������"+color+"�������ǣ�"+zhongliang+",�����ǣ�"+nianling);
	}
	public void shuijiao(){
		
	}
	
	
	
}
