/*
addInts is a fn of type '(int, int) => int'
if we call it with one arg it just returns a function expecting another arg. 
Functions in rescript may be undersupplied with arguments, you can't oversupply  
*/

let add = (a, b) => a + b
let curriedFunction = add(8) // this will just return a fn waiting for another input
let x = curriedFunction(2)

Js.log(x) // outputs 10 
