
public class Workder extends Person{

	private String gongren;
	private String ganhuo;
	
	
	public String getGongren() {
		return gongren;
	}


	public void setGongren(String gongren) {
		this.gongren = gongren;
	}


	public String getGanhuo() {
		return ganhuo;
	}


	public void setGanhuo(String ganhuo) {
		this.ganhuo = ganhuo;
	}


	@Override
	public void getContent() {
		// TODO Auto-generated method stub
		System.out.println("我是一名"+getGongren()+"我在工地"+getGanhuo());
		
	}

}
