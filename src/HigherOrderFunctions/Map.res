// -------------------------------Map on Arrays----------------------------------

/*
The map function takes a function in the first param and applies it to something.
run `node src/HigherOrderFunctions/Map.bs.js` to print out. 
*/

let timesTwo = input => input * 2
let anArray = [1, 2, 3, 4, 5]

let arrayTimesTwo = timesTwo->Js.Array.map(anArray) // the function to be applied is the first arg to map.
Js.log(arrayTimesTwo)
