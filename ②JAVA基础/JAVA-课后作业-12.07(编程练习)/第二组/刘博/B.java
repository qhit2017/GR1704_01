package T;

public class B {

	private String shangpin;
	private String mingchen;
	private String bianhao;
	private String jiage;
	private String shuliang;
	public String getShangpin() {
		return shangpin;
	}
	public void setShangpin(String shangpin) {
		this.shangpin = shangpin;
	}
	public String getMingchen() {
		return mingchen;
	}
	public void setMingchen(String mingchen) {
		this.mingchen = mingchen;
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public String getJiage() {
		return jiage;
	}
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	public String getShuliang() {
		return shuliang;
	}
	public void setShuliang(String shuliang) {
		this.shuliang = shuliang;
	}
	public void info(){
		System.out.println("商品"+shangpin+",名称"+mingchen+",编号"+bianhao+",价格"+jiage+",数量"+shuliang);
	}
	
}
