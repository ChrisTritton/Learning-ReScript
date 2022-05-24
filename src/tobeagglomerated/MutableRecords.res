/**
Records are different to objects. They support pattern-matching for one 
but there are more differences 
*/

type alien = {
  mutable name: string,
  age: int,
}

// for this alien1 object, we have defined the record for it above.
let alien1 = {
  name: "Marglar",
  age: 3300,
}

/**
This only works because the record field called 'name' was set to be mutable
in the definition of the record above.  
*/
alien1.name = "jeesh"  

