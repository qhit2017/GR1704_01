package zuoye2;

public class Workder extends Person {
	
	
		private int shengao;
		private int nianling;
		public int getShengao() {
			return shengao;
		}
		public void setShengao(int shengao) {
			this.shengao = shengao;
		}
		public int getNianling() {
			return nianling;
		}
		public void setNianling(int nianling) {
			this.nianling = nianling;
		}
		@Override
		public void getContent() {
			// TODO Auto-generated method stub
			System.out.println("Éí¸ß£º"+getShengao()+
					"£¬ÄêÁä£º"+getNianling());
		}
		

}
