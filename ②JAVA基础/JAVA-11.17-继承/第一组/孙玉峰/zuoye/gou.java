package zuoye;

public class gou extends Dongwu {
	
		 private String pinzhong;
		 private String yanse;
		 private int nianling;
		 private int zhongliang;
		
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
		public int getZhongliang() {
			return zhongliang;
		}
		public void setZhongliang(int zhongliang) {
			this.zhongliang = zhongliang;
		}
		 public void  work(){
			 System.out.println("我的狗是"+pinzhong+",毛色是"+yanse+"，有"+nianling+"岁"+",重量是"+zhongliang+"公斤,能吃，能睡又会能叫");
		 }
		
		 
	

}
