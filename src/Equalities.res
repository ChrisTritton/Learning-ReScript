/*
There are two types of equalities in ReScript

Structural:
  - two things are structurally equal if they have the same content 
  - structural equality compares data structures 'deeply'
  - be careful because comparing two data structures too deeply may slow your code down needlessly.  

Referential:
  - two things are referentially equal if they are stored in the same memory location 
  - we use '===' to test for referential equality  


*/

// -------------------------------STRUCTURAL EQUALITY----------------------------------

let areStructurallyEqual = (11, 22) == (22, 11) ? true : false

Js.log3(
  "(11, 22) == (22, 11) is",
  areStructurallyEqual, // false
  "because they're not structually equal (they don't have the same content)",
)

let areNotStructurallyEqual = (34, 78) != (78, 34) ? true : false

Js.log3(
  "(34, 78) != (78, 34) is",
  areNotStructurallyEqual, // true
  "because they're not structurally equal (they don't have the same content)",
)

// -------------------------------REFERENTIAL EQUALITY----------------------------------

let areReferentiallyEqual = (11, 22) === (11, 22) ? true : false

Js.log3(
  "(11, 22) === (11, 22) is",
  areReferentiallyEqual, // false
  "because they're not referentially equal (they don't point to same location in memory)",
)

let areNotReferentiallyEqual = (11, 22) !== (11, 22) ? true : false

Js.log3(
  "(11, 22) !== (11, 22) is",
  areNotReferentiallyEqual, // true
  "because they're not referentially equal (they don't point to same location in memory)",
)

// more examples

let x = (9, 99)
let y = x
Js.log(y === x) // outputs true because they point to same place in memory
Js.log(x === (9, 99)) // false
