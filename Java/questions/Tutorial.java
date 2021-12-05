public class Tutorial{

	String firstName;
	
	String lastName;
	
	int age;
	
	String hobbies;
	
	String location;

	
	public Tutorial( String firstName, String lastName, int age, String hobbies, String location ){
		
		this.firstName = firstName;
		
		this.lastName = lastName;
		
		this.age = age;
		
		this.hobbies = hobbies;
		
		this.location = location;
	
	}

	
	public void setfirstName( String firstName ){
		
		this.firstName = firstName;
	
	}


	public void setlastName( String lastName ){
		
		this.lastName = lastName;
	
	}

	
	public void setAge( int age ){
		
		this.age = age;
	
	}

	
	public void setHobbies( String hobbies ){
		
		this.hobbies = hobbies;
	}

	
	public void setLocation( String location ){
		
		this.location = location;
	}

	
	public String getfirstName( ){
		
		return firstName;
	}

	
	public String getlastName( ){
		
		return lastName;
	}

	
	public int getAge( ){
		
		return age;
	}

	
	public String getHobbies( ){
		
		return hobbies;
	}

	
	public String getLocation( ){
		
		return location;
	}

	
	public static void main( String[] args ){
		
		Tutorial person_1 = new Tutorial( "Jane", "Doe", 24, "eating", "Spain");
		
		System.out.println( person_1.getfirstName( ) );
		
		System.out.println( person_1.getlastName( ) );
		
		System.out.println( person_1.getAge( ) );
		
		System.out.println( person_1.getHobbies( ) );
	} 

}
