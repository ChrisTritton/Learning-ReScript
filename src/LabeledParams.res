/*
As opposed to positional params, if you label your params in a function definion, it doesn't matter what order they're given to
the function. The following example is pretty self-explanatory. 
*/

let divide = (~integerOne, ~integerTwo) => integerOne / integerTwo
Js.log(divide(~integerTwo=9, ~integerOne=81)) // outputs 9

// out of interest, we are actually using punning above. Without punning it would look like this:
let divide2 = (~integerOne, ~integerTwo) => integerOne / integerTwo

// you can also partially apply functions with labeled params.

let x = divide(~integerTwo=3) // note that x has type (~integerOne: int) => int , meaning that partially applying the function, gives us back a function waiting for an int arg called ~integerOne.

/*
=? as done below shows that the param is optional. 
*/

// // uncomment this code block and see the error
// let multiply = (~integerOne, ~integerTwo=?) => {
//   integerOne * integerTwo // this code fails here because integerTwo is of option type! We need to handle it!
// }

/*
When using the =? syntax, integerTwo is wrapped in the option type. 
However because of partial application, it will just give us back a function expecting another int. 
So the optional param is in fact not optional. What we need to do is put it optional one first. Or 
if all params are optional, insert a () at the end. 
*/

// // uncomment this code block and see the compiler's explanation
// let multiply = (~integerOne, ~integerTwo=?) => {
//   switch (integerTwo) {
//   | None => integerOne
//   | Some(integer) => integerOne * integer
//   }
// }

let multiply = (~integerOne, ~integerTwo=?, ()) => {
  // the compiler knows that when it gets to the unit type, we don't want to pass in more params.
  switch integerTwo {
  | None => integerOne // is integerTwo is empty, it returns integerOne
  | Some(integer) => integerOne * integer
  }
}

let y = multiply(~integerOne=5, ()) // without the unit type () included, the compiler will do partial application and give us back a funtion called y waiting for other args.
Js.log(y)
