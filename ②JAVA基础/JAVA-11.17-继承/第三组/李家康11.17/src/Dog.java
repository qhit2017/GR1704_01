
public class Dog extends dongwu{
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
		public void jiao(){
			System.out.println("叫的声音很大");
		}
		public void chi(){
			System.out.println("很能吃");
		}
		public void shuijiao(){
			System.out.println("睡觉的时候很安静");
		}
}
