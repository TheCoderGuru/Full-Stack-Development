function log( message ){
    console.log( message );
}

var message = 'Hello World';

log( message );


// Declaring variables

var number = 1;
let count = 2;


function doSomething( ){
    for( var i = 0; i < 5; i++ ){
        console.log( i );
    }

    console.log( 'Finally: ' + i );
}

doSomething();

// Different Types in Typescript