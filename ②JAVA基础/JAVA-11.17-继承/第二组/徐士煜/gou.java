package xingqitianzuoye;
/** 
 * @author  作者 E-mail:1561061182@qq.com
 * @date    创建时间：2017年11月8日 下午6:44:32 
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
		System.out.println("它是"+pinzhong+"品种的"+","
		+ "它是"+yanshe+"，它"+nianling+"岁,"+"它的重量是"+zongliang);
	}
	
	
	
	
}
