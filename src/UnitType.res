
/*
From Docs: 
The unit type has a single value, (). It compiles to JavaScrit's undefined. 
It's a dummy type used as a placeholder in various places. You won't need it until you see it.

Arity is a term for the number of parameters a function has 
Nullary functions is a term for functions that take NO args (an arity of zero) 

In 
*/


let arityOfZero = () => 2 + 5 // although this expects no args, compiler says it expects one arg of unit type. 

// this will just return the function waiting for an arg of unit type, which is not what we want
Js.log(arityOfZero) 

Js.log(
  arityOfZero(()) // this works because we've given the function a unit type. 
  ) 

Js.log(
  arityOfZero() // the parenthesis isn't part of the fn call. see below 
  ) 

Js.log(
  (arityOfZero)() // same thing
)

