package 课后作业;

public class 课后作业3 {
//请输出0~10000之间以3开头的数
	public static void main(String[] args) {
		for(int i=1;i<=10000;i++){
			if(i%1000==3||i%100==3||i/10%10==3||i%10==3){
				System.out.println(i);
			}
		}
	}
}
