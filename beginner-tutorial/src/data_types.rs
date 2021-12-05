pub fn run(){

	// Integer types 

	let a = 5; 

	let b: i32 = 7;

	println!( "{} {}", a, b );


	// Floating types 

	let c = 2.0; // f64

	let d: f32 = 3.0; // f32

	println!("{} + {} = {}", c, d, c + d );


	// Numeric Operations


    // addition
    let _sum = 5 + 10;

    // subtraction
    let _difference = 95.5 - 4.3;

    // multiplication
    let _product = 4 * 30;

    // division
    let _quotient = 56.7 / 32.2;
    let _floored = 2 / 3; // Results in 0

    // remainder
    let _remainder = 43 % 5;


    // The Boolean Type

    let _t = true;

    let _f: bool = false; // with explicit type annotation


    // The Character type 

    let _c = 'z';

    let _z = 'ℤ';
    
    let _heart_eyed_cat = '😻';


    // The tuple type 

    let _tup: ( i32, f64, u8 ) = ( 500, 6.4, 1 );

    let ( _x, _y, _z ) = _tup;

    println!( "The value of y is {}", _y );


    // Accessing a tuple via the . 

    let _x: ( i32, f64, u8 ) = ( 500, 6.4, 1 );

    let _five_hundred = _x.0;

    let _six_point_four = _x.1;

    let _one = _x.2;

    println!( "{_five_hundred}, {_six_point_four}, {_one}", _five_hundred = _five_hundred, _six_point_four = _six_point_four, _one = _one );


    // The Array Type 

    let _a = [ 1, 2, 3, 4, 5 ];

    println!("{}", _a[1] );


    let _numbers: [ i32; 5 ] = [ 1, 2, 3, 4, 5 ];
}
