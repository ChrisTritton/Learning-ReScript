/*
Records, Arrays and Tuples are flat data structures.
We can perform only certain operations on them 

*/

// our player variant type can be either cross or circle.
// it can only be one of these two options, nothing else.
type player =
  | Cross
  | Circle

let nextTurn = Cross // compiler infers that nextTurn variable is of type 'player = Cross | Circle'. The nextTurn identifier will only ever be of Cross or Circle type

/*
Now when we write code using our nextTurn variable we know that if we cover the two possible scenarios, we will have covered all possible scenarios  
Cross and Cirle are constructors (aka tags) FOR TYPES called Cross and Circle. They can also hold data used in constructing the type.  
*/

// fields are squared marked or not marked by players in a tick-tack-toe game.
// the field type can be empty or marked by a player, and the player can be Cross or Circle
type field =
  | Empty
  | Marked(player) // we passed an argument to the Marked constructor. This will store whether the field

/*
this fn takes an arg of type field and passes it to the switch which performs pattern-matching 
if the given field is of type Marked and has an arg of type player that is of type Cross then it returns "X" and so on. 
We are covering all the possible cases here: out pattern-matching is exhaustive. 

The purpose of this fn is convert a variant type to a string representing a particular constructor 
It takes in something of field type and if the thing has a contructor of type Marked and has the Circle constructor passed to it 
then the fn outputs "X"
*/
let toString = (field: field) =>
  switch field {
  | Marked(Cross) => "X"
  | Marked(Circle) => "O"
  | Empty => ""
  }

let someRandomField = Marked(Cross)

Js.log2("output of someRandomField passed into toString: ", toString(someRandomField))

// ----------------------------A MORE COMPLEX EXAMPLE------------------------------

/*
We defined an animal type with two constructors and then made a fn that takes in two 
arguments and the switch pattern-matches them according to the outcomes outlined.

If you were to cover all scenarios with javascript if-elses it will be horrendous. And 
the compiler will leave you in the dark about what you haven't covered. 
*/

type animal =
  | Bear
  | Rabbit
  | Deer

let isBigger = (animalOne, animalTwo) =>
  switch (animalOne, animalTwo) {
  | (Bear, Bear) => false
  | (Rabbit, Rabbit) => false
  | (Deer, Deer) => false
  | (Bear, _) => true // Bear is > anything
  | (Rabbit, Deer) => false
  | (Deer, Rabbit) => true
  | (Deer, _) => false
  | (Rabbit, Bear) => false
  // what about the empty case ?
  }
