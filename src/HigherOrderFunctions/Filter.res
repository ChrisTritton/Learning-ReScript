// ---------------------Applying Filter to Arrays-------------------------

/*
Js.Array.filter applies a predicateFuntion to every element in an array.  
*/

let myArr = [4, 8, 7, 14, 55]
let predicateFunction = element => element > 10
let filteredArray = Js.Array.filter(predicateFunction, myArr)

Js.log(filteredArray) // outputs 14 and 55

// The above can also be written with a pipe. You're using rescript so when in Rome.
let anotherArray = [7, 89, 7, 32, 59]
let isGreaterThanTen = element => element > 10
let filteredArray2 = isGreaterThanTen->Js.Array.filter(anotherArray) // way cooler

Js.log(filteredArray) // outputs 14 and 55 
