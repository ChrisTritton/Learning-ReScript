let add = a => a + 5
let multiply = a => a * 10
let subtract = a => a - 1

let ans = subtract(multiply(add(4)))

Js.log2("output of ans:", ans) // outputs 89

// the pipe operator lets us apply these functions in the order that they're applied

let ans2 = add(4)->multiply->subtract

Js.log2("output of ans2:", ans2) // outputs 89

// can also be written:

let ans3 = 4->add->multiply->subtract

Js.log2("output of ans3:", ans3)
