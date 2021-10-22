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

type person = array<string>

let chris: person = ["Chris", "Tritton", "Coder"] // we've used our person type to constrain the type of the chris identifier

// ----------------Using a fn to Create An Array---------------------

let createArray = (length, fieldname) => Array.make(length, fieldname)

/*
The type of this array is (int, 'a) => array<'a> 
which means it takes in an integer and a polymorphic type called alpha (a polymorphic type is something of any type)
and returns an array of the polymorphic type alpha.  

Array
*/

Js.log(createArray(42, "pssh"))

// ---------------Accessing Elements of An Array Using Pattern-Matching ------------------

let [tritton, coder, chris] = chris // here we are extracting according to the positions. We're making 3 new let bindings from the contents of the array chris and calling them these names

Js.log(tritton ++ coder ++ chris) // outputs ChrisTrittonCoder
