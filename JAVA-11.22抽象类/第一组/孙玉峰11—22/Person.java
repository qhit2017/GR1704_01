package zuoye2;

public  abstract class Person {
	private String mingzi;

	public String getMingzi() {
		return mingzi;
	}

	public void setMingzi(String mingzi) {
		this.mingzi = mingzi;
	}
	
	public abstract void getContent();
	
	public  void xinxi(){
		getContent();
		
	}
	
	
	

}
