
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
		System.out.print("��ţ�"+bianhao+"����Ʒ����"+name+"���۸�"+jiage+"Ԫ��");
		System.out.println("������"+jinhuoshuliang+",�ֿ�棺"+shuliang);
	}
	public void info2(){
		System.out.print("��ţ�"+bianhao+"����Ʒ����"+name+"���۸�"+jiage+"Ԫ��");
		System.out.println("���ۣ�"+xiaoshoushuliang+",�ֿ�棺"+shuliang);
	}
}
