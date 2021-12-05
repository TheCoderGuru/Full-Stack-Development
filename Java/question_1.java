/* 1. Write a JavaScript program to display the current day and time in the following format.

Sample Output : Today is : Tuesday.

Current time is : 10 PM : 30 : 38 */

import java.time.LocalDate;

import java.time.LocalTime;


public class question_1{

	public static void main( String[] args ){

		LocalDate date = LocalDate.now();

		LocalTime time = LocalTime.now();

		System.out.println( "Today's date: " + date );
		
		System.out.println( "Today's time: " + time );

	}
}