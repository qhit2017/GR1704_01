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
public class dongwu {
	private int tuideshuliang;
	private String yanjingyanshe ;
	public int getTuideshuliang() {
		return tuideshuliang;
	}
	public void setTuideshuliang(int tuideshuliang) {
		this.tuideshuliang = tuideshuliang;
	}
	public String getYanjingyanshe() {
		return yanjingyanshe;
	}
	public void setYanjingyanshe(String yanjingyanshe) {
		this.yanjingyanshe = yanjingyanshe;
	}
	public void work(){
		System.out.println("����"+tuideshuliang+"���ȣ�"+"�����۾���"+ yanjingyanshe);
	}
}
