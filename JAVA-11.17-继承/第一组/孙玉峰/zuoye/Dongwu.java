package zuoye;

public class Dongwu {
		private int tui;
		private String yanjing;
		public int getTui() {
			return tui;
		}
		public void setTui(int tui) {
			this.tui = tui;
		}
		public String getYanjing() {
			return yanjing;
		}
		public void setYanjing(String yanjing) {
			this.yanjing = yanjing;
		}
		public void  chi(){
			System.out.println("有"+tui+"条腿"+",眼睛颜色是"+yanjing+"色");
		}

}
