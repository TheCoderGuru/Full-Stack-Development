import java.util.Scanner;

public class IntegerInput{

  public static boolean validate( String[] args ){

    if( args.length != 4 ){
      
      System.out.println( "Usage: <int> <int> <int> <int>" );
      
      return false;
    
    }
    
    return true;
  
  }
  
  public static void version1( String[] args ){
    
    Scanner system = new Scanner( System.in );
    
    System.out.print( "Please enter four numbers: " );
    
    int num1 = system.nextInt();
    
    int num2 = system.nextInt();
    
    int num3 = system.nextInt();
    
    int num4 = system.nextInt();

    if( num1 == num2 && num2 == num3 && num3 == num4 ){
      
      System.out.print( "The numbers are equal" );
    
    }
    
    else{
      
      System.out.print( "Not all numbers are equal" );
    
    }
  
  }

  public static void version2( String[] args ){
    
    int num1 = Integer.parseInt( args[ 0 ] );
    
    int num2 = Integer.parseInt( args[ 1 ] );
    
    int num3 = Integer.parseInt( args[ 2 ] );
    
    int num4 = Integer.parseInt( args[ 3 ] );

    if( num1 == num2 && num2 == num3 && num3 == num4 ){
      
      System.out.print( "The numbers are equal\n" );
    
    }
    
    else{
      
      System.out.print( "Not all numbers are equal\n" );
    
    }
  
  }
  
  public static void main( String[] args ){
    
    if ( validate( args ) ) {
      
      version2( args );
      
      //version1( args );
    
    }
  
  }

}
