
public class jilu {
	private int bianhao;
	private	String name;
	private	int shuliang;
	private int jiage;
	private int jinhuoshuliang;
	private int xiaoshoushuliang;
	public int getJinhuoshuliang() {
		return jinhuoshuliang;
	}
	public void setJinhuoshuliang(int jinhuoshuliang) {
		this.jinhuoshuliang = jinhuoshuliang;
	}
	public int getXiaoshoushuliang() {
		return xiaoshoushuliang;
	}
	public void setXiaoshoushuliang(int xiaoshoushuliang) {
		this.xiaoshoushuliang = xiaoshoushuliang;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public int getJiage() {
		return jiage;
	}
	public void setJiage(int jiage) {
		this.jiage = jiage;
	}
	public void info1(){
		System.out.print("编号："+bianhao+"，商品名："+name+"，价格："+jiage+"元。");
		System.out.println("进货："+jinhuoshuliang+",现库存："+shuliang);
	}
	public void info2(){
		System.out.print("编号："+bianhao+"，商品名："+name+"，价格："+jiage+"元。");
		System.out.println("销售："+xiaoshoushuliang+",现库存："+shuliang);
	}
}
