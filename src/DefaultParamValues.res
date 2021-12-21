//-------------------------------Default Param Values------------------------------------

/*
With default values filled in, giving the function any args is optional. So if we don't just want the compiler 
to do partial application and give us back a function waiting for the other arg, we need to tell it by using the 
unit type '()'. Then we also need to pass it when calling the function. In essence, it is a placeholder that tells 
the compiler when we're finished giving arguments. 
*/

let multiply = (~integerOne=11, ~integerTwo=22, ()) => integerOne * integerTwo

// when we omit the first two args and call our function, the default values are filled in automatically.
let x = multiply() // in rescript, this is equivalent to multiply(()) is equivalent to (multiply)()
let y = multiply(~integerOne=10, ()) // here we've chosen to give only the first arg.. all good

Js.log(x)
Js.log(y)
