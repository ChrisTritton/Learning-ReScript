/*
Arrays are the main ordered data structure in rescript. 

They work the same way as JavaScript arrays: 
  - they can be randomly accessed, 
  - dynamically resized, updated, etc.

Can only contain elements of one type. 
*/

// ----------------Creating Arrays Statically-----------------------

let arr = ["hello", "world", "how are you?"] // this array is of type 'array<string>'

// we can also define the type of an array beforehand, unlike with records, we don't specify how many elems in the array (dynamic arrays)

type collectionOfWords = array<string>
let words: collectionOfWords = ["word1", "word2", "word3"] // we've used our person type to constrain the type of the chris identifier

// ----------------Using a fn to Create An Array---------------------

let createArray = (length, fieldname) => Array.make(length, fieldname)

/*
The type of this array is (int, 'a) => array<'a> 
which means it takes in an integer and a polymorphic type called alpha (a polymorphic type is something of any type)
and returns an array of the polymorphic type alpha.  

Array
*/

Js.log(words)
Js.log(arr)

//Js.log(createArray(42, "pssh"))

// ---------------Accessing Elements of An Array Using Pattern-Matching ------------------

let [word1, word2, word3] = words // here we are extracting according to the positions. We're making 3 new let bindings from the contents of the array chris and calling them these names
Js.log(word1 ++ word2 ++ word3) // outputs ChrisTrittonCoder
