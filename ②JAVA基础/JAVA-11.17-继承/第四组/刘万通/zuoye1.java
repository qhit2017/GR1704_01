package zuoye;
/*
 *   ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
    Ҫ������˽�У����ṩget��set���� 
 */
public class zuoye1  extends dongwu {
    
	
	private String pinzhong ;
	
	private String colo;
	
	private int nianling;
	
	private String zhongling;

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public String getColo() {
		return colo;
	}

	public void setColo(String colo) {
		this.colo = colo;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public String getZhongling() {
		return zhongling;
	}

	public void setZhongling(String zhongling) {
		this.zhongling = zhongling;
	}
	public void fangfa(){
		System.out.println("�ҵ�Ʒ����"+pinzhong+",�ҵ���ɫ��"+colo+",�ҽ���"+nianling+"��,����"+zhongling+"��"+"�ҳԵĺܶ�"+"�ҽе������ر��"+"û�¾�˯����");
	}
	
	
	
}
