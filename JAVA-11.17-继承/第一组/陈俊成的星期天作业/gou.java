package xingqitianzuoye;
/** 
 * @author  ���� E-mail:1561061182@qq.com
 * @date    ����ʱ�䣺2017��11��8�� ����6:44:32 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 * @function
 */
public class gou extends dongwu{

	private  String pinzhong;
	private  String yanshe;
	private  int  nianling;
	private  int zongliang;
	
	public String getPinzhong() {
		return pinzhong;
	}
	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}
	public String getYanshe() {
		return yanshe;
	}
	public void setYanshe(String yanshe) {
		this.yanshe = yanshe;
	}
	public int getNianling() {
		return nianling;
	}
	public void setNianling(int nianling) {
		this.nianling = nianling;
	}
	public int getZongliang() {
		return zongliang;
	}
	public void setZongliang(int zongliang) {
		this.zongliang = zongliang;
	}
	
	public void chi(){
		System.out.println("����"+pinzhong+"Ʒ�ֵ�"+","
		+ "����"+yanshe+"����"+nianling+"��,"+"����������"+zongliang);
	}
	
	
	
	
}
