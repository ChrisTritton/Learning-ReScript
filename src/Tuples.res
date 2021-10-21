
/*
Tuples are composite values i.e. they're made up of two or more values 

Tuples are a ReScript-specific data structure that don't exist in JavaScript. They are:
  - immutable
  - ordered
  - fix-sized at creation time
  - heterogeneous (can contain different types of values)

*/

let ageAndName = (24, "Lil' ReScript", 56) // our tuple is composed of three components, two ints and a string - type inference
let my3dCoordinates = (20.0, 30.5, 100.0)

Js.log(ageAndName)

// ----------------------------------------------------

// tupes are great for returning several values from a fn 

let getSomething = () => {
  let theXValue = "x"
  let theYVAlue = "y"
  (theXValue, theYVAlue) 
} 

Js.log(getSomething) // how to make this print out the tuple? 


// the docs are actually probably better here, not such a big topic. 