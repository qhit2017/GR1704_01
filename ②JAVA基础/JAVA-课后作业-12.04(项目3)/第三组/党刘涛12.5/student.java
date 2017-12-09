package fuxi;

public class student {
	private String name;
	private	int bianhao;
	private int shuxue;
	private	int yingyu;
	private	int yuwen;
	private int zongfen;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
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
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getZongfen() {
		return zongfen;
	}
	public void setZongfen(int zongfen) {
		this.zongfen = zongfen;
	}
	public void info(){
		System.out.println("姓名是："+name+"编号是:"+bianhao+"语文成绩是："+yuwen+"数学成绩是"+shuxue+"英语成绩是："+yingyu+"总分是："+(yuwen+shuxue+yingyu));
	}
}
