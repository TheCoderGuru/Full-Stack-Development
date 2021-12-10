// variables in go

package main;

import "fmt"

func main(){
	// var i int = 8;
	// fmt.Println(i)



// declaring multiple variables on one line

	var i, j int = 8, 42;
	fmt.Println(i, j)


// short variable declaration using :=

a := 5;

fmt.Println( a );


// datatypes

var x int = 42;
var y float32 = 1.37;
var name string = "James"
var online bool = true


fmt.Println( x );
fmt.Println( y );
fmt.Println( name );
fmt.Println( online );


// constants 

const b = 2

b = 4;


// Arithmetic Operators

s := 42
u := 8

res := s + u
res := s - u
res := s * u
res := s / u


// Assignment Operators

x := 22
y := 7

x += y;
x -= y;


// Relational and logical operators 

f := 31
t := 3


fmt.Println( f == t )
fmt.Println( f != t )
fmt.Println( f > t )
fmt.Println( f < t )

}
