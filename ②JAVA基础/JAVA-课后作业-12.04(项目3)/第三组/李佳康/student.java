
public class student {

		private String name;
		private String bianhao;
		private String china;
		private String shuxue;
		private String yingyu;
		private int sum;
		public int getSum() {
			return sum;
		}

		public void setSum(int sum) {
			this.sum = sum;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getBianhao() {
			return bianhao;
		}

		public void setBianhao(String bianhao) {
			this.bianhao = bianhao;
		}

		public String getChina() {
			return china;
		}

		public void setChina(String china) {
			this.china = china;
		}

		public String getShuxue() {
			return shuxue;
		}

		public void setShuxue(String shuxue) {
			this.shuxue = shuxue;
		}

		public String getYingyu() {
			return yingyu;
		}

		public void setYingyu(String yingyu) {
			this.yingyu = yingyu;
		}

		public void info(){
			
			System.out.println("学生姓名："+name+"，编号："+bianhao+"，语文成绩："+china+"，数学成绩："+shuxue+"，英语成绩："+yingyu+"，总成绩："+sum);
		}
}
