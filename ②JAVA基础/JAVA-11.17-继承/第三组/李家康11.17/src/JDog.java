
public class JDog extends Dog {
		private  int zuikuaishishu;

		public int getZuikuaishishu() {
			return zuikuaishishu;
		}

		public void setZuikuaishishu(int zuikuaishishu) {
			this.zuikuaishishu = zuikuaishishu;
		}
		public void work(){
			System.out.println("最快时速："+zuikuaishishu);
		}
}
