/*
Operators are just functions actually, that means they have types. 

(1 + 9) has type '(int, int) => int' 

But some operators have polymorphic types. This means that they expect values of any type. So comparison operators are 
polymorphic operators and expect a type VARIABLE i.e. any type. 

Type variables are denoted by 'a and pronounced 'alpha' and 'b is pronounced 'beta' 

*/

//// POLYMORPHIC COMPARISON OPERATORS ////

// this has type ('a, 'a => bool) and it works because the things being compared are of the same type. We can compare
// any type as long as they're the same type (according to the operator type).. we couldn't compare a float and int
let x1 = 3 > 2

// this is an expression of type (bool, bool) = > bool that is made up of two expressions of type ('a, 'a = > bool)
// even though the one compares ints and the other floats - they can be of any type but they must be the same
let x = 3 > 2 && 14.5 > 14.2

Js.log(x1)
