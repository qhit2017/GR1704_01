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
public class jingquan  extends gou{

	private  int shishu;

	public int getShishu() {
		return shishu;
	}

	public void setShishu(int shishu) {
		this.shishu = shishu;
	}
	
	public void work(){
		System.out.println("���������"+shishu+"������"+getTuideshuliang()+"���ȣ�"+"�����۾�ɫ��"+getYanjingyanshe());
		
	}
	
	
	
	
}
