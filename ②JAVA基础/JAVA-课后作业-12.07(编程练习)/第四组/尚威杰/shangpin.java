
public class shangpin {

	private String bianhao;
	
	private String mingcheng;
	
	private int jiage;
	
	private int chushishuliang;

	public String getBianhao() {
		return bianhao;
	}

	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}

	public String getMingcheng() {
		return mingcheng;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}

	public int getJiage() {
		return jiage;
	}

	public void setJiage(int jiage) {
		this.jiage = jiage;
	}

	public int getChushishuliang() {
		return chushishuliang;
	}

	public void setChushishuliang(int chushishuliang) {
		this.chushishuliang = chushishuliang;
	}
	public void xinxi(){
		System.out.println("编号"+bianhao+",名称"+mingcheng+",价格"+jiage+",库存数量"+chushishuliang);
	}
}
 