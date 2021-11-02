public class getters{
	String name;
	int age;

	public static void main( String[] args ){
		getters a = new getters();

		a.setName("Pablo");
		a.setAge(34);

		a.printDetails();

	}

	public  void setName( String name ){
		this.name = name;
	}

	public void setAge( int age ){
		this.age = age;
	}

	public void printDetails(){
		System.out.println( name + ", " + age );
	}
}