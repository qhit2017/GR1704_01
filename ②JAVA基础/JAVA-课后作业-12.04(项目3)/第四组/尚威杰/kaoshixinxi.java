
public class kaoshixinxi {

	private String xingming;
	
	private String bianhao;
	
	private int yuwen;
	
	private int shuxue;
	
	private int yingyu;

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public String getBianhao() {
		return bianhao;
	}

	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}

	public int getYuwen() {
		return yuwen;
	}

	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}

	public int getShuxue() {
		return shuxue;
	}

	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}

	public int getYingyu() {
		return yingyu;
	}

	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	
	public void xinxi(){
		System.out.println("����"+xingming+",���"+bianhao+",���ĳɼ�"+yuwen+",��ѧ�ɼ�"+shuxue+",Ӣ��ɼ�"+yingyu);
	}
}
