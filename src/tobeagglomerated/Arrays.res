/*
Arrays are mutable 
*/


//------------------ Indexing Arrays --------------------//

let arrInts = [1, 2, 3, 4]
Js.log2("arrInts:", arrInts)
Js.log2("arrInts[3]:", arrInts[3])

arrInts[1] = 1
Js.log2("arrInts[1]_Updated:", arrInts[1])

let myArray = ["hello", "world", "how are you"]
myArray[0] = "hey"
let pushedValue = Js.Array2.push(myArray, "bye") // it returns sth so you need to store it

// logging of the above
Js.log(pushedValue)
Js.log(myArray)

// //---------------------------Belt----------------------------

let arrayTwo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let arrayTwo_reversed = Belt.Array.reverse(arrayTwo)

Js.log2("Size of arrayTwo:", Belt.Array.size(arrayTwo))
Js.log2("arrayTwo Reversed: ", Belt.Array.reverse(arrayTwo))
