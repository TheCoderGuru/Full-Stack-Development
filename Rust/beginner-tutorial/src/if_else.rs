pub fn run(){
	let number = 3;

	if number < 5{
		println!( "condition was true" );
	} else {
		println!( "condition was false" );
	}

	// Handling multiple conditions with else if 

	let number = 6;

	if number % 4 == 0{
		println!( "number is divisible by 4" );
	} else if number % 3 == 0{
		println!( "number is divisible by 3" );
	} else if number % 2 == 0{
		println!( "number is divisible by 2" );
	} else {
		println!( "number is not divisible by 4, 3, or 2" );
	}

	// using if in an let statement 

	let condition = true;

	let number = if condition { 5 } else { 6 };

	println!( "The value of number is: {}", number );


	// Nested loops

	let mut count = 0;
	'counting_up: loop{
		println!( "count = {}", count );
		let mut remaining = 10;

		loop{
			println!("remaining = {}", remaining );
			if remaining ==  9{
				break;
			}
			if count == 2{
				break 'counting_up;
			}
			remaining -= 1;
		}
		count += 1;
	}
	println!( "End count = {}", count );
}