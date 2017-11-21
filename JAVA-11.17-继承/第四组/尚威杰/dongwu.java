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
		System.out.println("它有"+tuideshuliang+"条腿，"+"它的眼睛是"+ yanjingyanshe);
	}
}
