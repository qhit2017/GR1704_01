
public class shangpin {
	private int bianhao;
	private	String name;
	private	int shuliang;
	private int jiage;
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
	public void info(){
		System.out.println("��ţ�"+bianhao+"����Ʒ����"+name+"��������"+shuliang+"���۸�"+jiage+"Ԫ��");
	}
}
