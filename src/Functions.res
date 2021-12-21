/*
The beginning of this topic needs work
*/

// functions are normal values in rescript

let function = x => float_of_string(x)

// we can also write this by just assigning the function to an identifier
let convert = float_of_string

Js.log(convert("456.8977"))

// -------------------------Functional Expression--------------------------------

/*
Functions are first-class values in rescript, that means they can be used just like any other value 
and since every value is an expression in rescript, functions are expresseions.
*/

let aFunctionalExpression = language => language ++ "Repo" // this is of type 'string => string' meaning its a function

/*
The expression we're printing out below is exactly the same as the one above but it's unnamed. 
Also this is how we call unnamed functions. It comes at the cost of the added readability that 
comes from being able to name the title something elucidating. 
*/

Js.log((lang => lang ++ " Repo")("ReScript"))

// -------The 1nd Use of A Function as a 1st-Class Value: Functions As Field In Records -----------

/*
The record type definition below has three fields with their types annotated. 
Since we have defined our record type, we can now creat a record according to it. 
*/
type randomRecord = {
  addInts: (int, int) => int,
  concatStrings: (string, string) => string,
  title: string,
}

let ourRecord = {
  addInts: (int1, int2) => int1 + int2,
  concatStrings: (str1, str2) => str1 ++ " " ++ str2,
  title: "A Record of FUNCTIONS! ;)",
}

// to call a record's fns, we need to use dot notation

Js.log2(
  ourRecord.concatStrings("This string..", "Will be added to this string"),
  ourRecord.addInts(12345678, 11111111),
)

// there's a bit in the vid (3:13:05) that calls fns from a list of fns, but it's in ReasonML - TODO: convert to rescript

// -------The 2nd Use of A Function as a 1st-Class Value: Functions As Args of Other Functions----------

let add = a => a + 1
let multiply = b => b * 10
let compute = (functionToApply, value) => functionToApply(value)

Js.log(compute(add, 10)) // takes 10 and applies the add function to it.
Js.log(compute(multiply, 123)) // takes 123 and applies the multiply fn to it.

// -------The 3rd Use of A Function as A 1st-Class Value: return a function from another Function-----------

/*
A typical example of this is a function composition, which happens a lot in functional programming. 
*/

// using the above two functions, we define compose2. this idea should be familiar if you've done any math.

let compose2 = (f1, f2, value) => f1(f2(value))

Js.log2("The output of compose2: ", compose2(add, multiply, 10)) // fn2 is applied to 10 first (10*10), then the result has f1 applied to it (100 + 1)

/*
Hover over compose2 and you'll see it's of type ('a => 'b, 'c => 'a, 'c) => 'b which means that the fn accepts two fns that accept and return polymorphic 
types, and also accepts a polymorphic variable. The 2nd function takes that variable and returns a polymorphic type that the 1st function uses to return 
another polymorphic type and the whole (outer fn called compose2) returns that polymorphic type. Very cool 
*/

// an example of partial application.

let phaseOne = compose2(add, multiply) // has type 'int => int' , meaning that its a function waiting for that 'value' int
let phaseTwo = phaseOne(10)

Js.log2("The result of phaseTwo: ", phaseTwo)

// this is another way of definining the compose2 function above. Read it backwards in your head. f2 is called with value, f1 is called with that result, this result is passed to f2 as the 'value' arg,
// then this result is passed to f1 as the f2 arg.

let compose2UnderHood = (f1, f2, value) => f1(f2(value)) // of type ('a => 'b, 'c => 'a, 'c) => 'b ... exactly the same (no need to run it).

/*
ALL THE FUNCTIONS IN RESCRIPT ARE FUNCTIONS THAT TAKE ONE ARGUMENT ONLY. 
A function with multiple arguments is just a readable way to define a fn with nested functions, each with one argument. 
All fns in rescript are automatically curried, means partial application possible. 
*/
