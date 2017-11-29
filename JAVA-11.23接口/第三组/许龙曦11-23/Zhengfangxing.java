package f1;

public class Zhengfangxing implements xingzhuang{
private int Bianchang;
private int Zhouchang;
private int Mianji;
public int getBianchang() {
	return Bianchang;
}
public void setBianchang(int bianchang) {
	Bianchang = bianchang;
}
public int getZhouchang() {
	return Zhouchang;
}
public void setZhouchang(int zhouchang) {
	Zhouchang = zhouchang;
}
public int getMianji() {
	return Mianji;
}
public void setMianji(int mianji) {
	Mianji = mianji;
}
@Override
public void zc() {
	// TODO Auto-generated method stub
	System.out.println("边长为"+getBianchang()+"的正方形，周长为："+getZhouchang());
}
@Override
public void mj() {
	// TODO Auto-generated method stub
	System.out.println("边长为"+getBianchang()+"的正方形，面积为："+getMianji());
}


}
