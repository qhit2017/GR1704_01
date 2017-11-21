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
public class jingquan  extends gou{

	private  int shishu;

	public int getShishu() {
		return shishu;
	}

	public void setShishu(int shishu) {
		this.shishu = shishu;
	}
	
	public void work(){
		System.out.println("它最快能跑"+shishu+"，它有"+getTuideshuliang()+"条腿，"+"它的眼睛色是"+getYanjingyanshe());
		
	}
	
	
	
	
}
