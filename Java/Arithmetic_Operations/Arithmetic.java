import java.util.Scanner;

public class Arithmetic{

  public static int addition( int a , int b, String operator ){
    
    int result = 0;
    
    result = a + b;
    
    return result;
  
  }

  public static int subtraction( int a , int b, String operator ){
    
    int result = 0;
    
    result = a - b;
    
    return result;
  
  }


  public static int multiplication( int a , int b, String operator ){
   
    int result = 0;
    
    result = a * b;
    
    return result;
  
  }

  public static int division( int a , int b, String operator ){
    
    int result = 0;
    
    result = a / b;
    
    return result;
  
  }

  public static int modulation( int a , int b, String operator ){
    
    int result = 0;
    
    result = a % b;
    
    return result;
  }

  public static void main( String[] args ) {
    
    Scanner console = new Scanner( System.in );
    
    System.out.println( "Please enter two numbers: " );

    int num1 = console.nextInt();
    
    String operator = console.next();
    
    int num2 = console.nextInt();

    if( operator.equals( "+" ) ){
      
      System.out.printf( "%d + %d = %d", num1, num2, ( addition( num1, num2, operator ) ) );
    
    }
    
    else if( operator.equals( "-" ) ){
      
      System.out.printf( "%d - %d = %d", num1, num2, ( subtraction( num1, num2, operator ) ) );
    
    }
    
    else if( operator.equals( "*" ) ){
      
      System.out.printf( "%d * %d = %d", num1, num2, ( multiplication( num1, num2, operator ) ) );
    
    }
    
    else if( operator.equals( "/" ) ){
      
      System.out.printf( "%d / %d = %d", num1, num2, ( division( num1, num2, operator ) ) );
    
    }
    
    else{
      
      System.out.printf( "%d MOD %d = %d", num1, num2, ( modulation( num1, num2, operator ) ) );
    
    }
  
  }

}
