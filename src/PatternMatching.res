// PATTERN MATCHING WITH TUPLES

// tuples can't be updated mutatively so we need to make new ones. This is a prime example of where pattern matching is killer.

let _ = 9 // means ignore the value 9

// pattern matching for extracting the first value of our tuple.
let (_, y) = (11, 89) // stores only 89 in y, skips 11

Js.log(y)

let aTuple = (1, 2, 3)
let (x, _, z) = aTuple

Js.log(x + z) // outputs 4

// ---------------------------------------

// function that uses pattern matching to get back the second number
let getSecond = (_, y) => y
Js.log(getSecond(321, 987))

// pattern matching with

// let getMiddle = (first, second, third) => second // this function has type ('a, 'b, 'c) => 'b and that means it takes any types as inputs and returns the middle one as that type
// Js.log(getMiddle("the1", "the2", "the3"))

// Js.log(getMiddle(89, 89.222, "the3")) // see, it's true

// so mattern matching useing tuples can be quite frought because the position in the tuple of a value makes a big difference
// records prevent this 
